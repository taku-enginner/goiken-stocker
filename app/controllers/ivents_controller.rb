class IventsController < ApplicationController
  def index
    @ivents = Ivent.all
    @user = current_user
  end

  def new
    if user_signed_in?
      @ivent = Ivent.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @ivent = current_user.ivents.build(ivent_params)
    if @ivent.save
      redirect_to ivents_path, notice: "イベントが作成されました。"
    else
      render new_ivent_path
    end
  end

  def destroy
    sign_out(current_user)
    redirect_to root_path
  end

  private
  def ivent_params
    params.require(:ivent).permit(:name)
  end
end
