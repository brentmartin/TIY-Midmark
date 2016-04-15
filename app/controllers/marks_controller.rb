class MarksController < ApplicationController
  skip_before_action :authenticate_user, only: [:show]

  def index
    @marks = Mark.all
  end

  def new
    @mark = Mark.new
  end

  def create
    @mark = Mark.new(mark_params)
    @mark.user = current_user
    if @mark.save
      redirect_to root_path
    else
      render :new
    end
  end


  def destroy
    @mark = get_mark

    if @mark.destroy
      redirect_to root_path
    else
      redirect_to :back
    end
  end

private
  def get_mark
    Mark.find(params.fetch(:id))
  end

  def mark_params
    params.require(:mark).permit(:message)
  end

end
