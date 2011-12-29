class ReservationsController < ApplicationController
  def toggle
    @member_id = params[:member_id].to_i
    @meeting_id = params[:meeting_id].to_i
    conds = {:member_id => @member_id, :meeting_id => @meeting_id}
    @reservation = Reservation.where(conds).first
    @exists = @reservation.present?

    respond_to do |format|
      if @exists
        @reservation.destroy
        format.html {render :text => "No longer reserved."}
      else
        @reservation = Reservation.new(conds)
        @reservation.save
        format.html {render :text => "Made new reservation."}
      end

      @exists = !@exists
      format.js
    end
  end
end
