class CallingListsController < ApplicationController
  def index
    @calling_lists = CallingList.all
  end
end
