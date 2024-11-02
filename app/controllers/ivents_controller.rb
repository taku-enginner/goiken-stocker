class IventsController < ApplicationController
  def index
  end

  def new
    @ivent = Ivent.new
  end

  def create
    Ivent.create(ivent_params)
    redirect_to root_path
  end

  private
  def ivent_params
    params.require(:ivent).permit(:name)
  end
end
