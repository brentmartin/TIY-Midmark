class MarksController < ApplicationController
  skip_before_action :authenticate_user, only: [:show]

  def index
  end

  def new
    @mark = Mark.new
  end

  def create
  end

  def destroy
  end
end
