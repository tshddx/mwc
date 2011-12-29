class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])

    respond_to do |format|
      if @member.save
        format.html { redirect_to members_path, notice: 'Member was successfully created.' }
        format.js
        format.json { render json: @member, status: :created, location: @member }
      else
        format.html { render action: "new" }
        format.js
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

end
