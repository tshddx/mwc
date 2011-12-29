class MeetingAttendedsController < ApplicationController
  def toggle
    @member_id = params[:member_id].to_i
    @meeting_id = params[:meeting_id].to_i
    conds = {:member_id => @member_id, :meeting_id => @meeting_id}
    @meeting_attended = MeetingAttended.where(conds).first
    @exists = @meeting_attended.present?

    respond_to do |format|
      if @exists
        @meeting_attended.destroy
        format.html {render :text => "Set attended to false."}
      else
        @meeting_attended = MeetingAttended.new(conds)
        @meeting_attended.save
        format.html {render :text => "Set attended to true."}
      end

      @exists = !@exists
      format.js
    end
  end
end
