class MeetingAttendedsController < ApplicationController
  def toggle
    @member_id = params[:member_id].to_i
    @meeting_id = params[:meeting_id].to_i
    conds = {:member_id => @member_id, :meeting_id => @meeting_id}
    @reservation = MeetingAttended.where(conds).first
    @exists = @reservation.present?

    respond_to do |format|
      if @exists
        @reservation.destroy
        format.html {render :text => "Set attended to false."}
      else
        @reservation = MeetingAttended.new(conds)
        @reservation.save
        format.html {render :text => "Set attended to true."}
      end

      @exists = !@exists
      format.js
    end
  end
end
