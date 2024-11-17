class IventsController < ApplicationController
  before_action :set_ivent, only: [:edit, :update, :destroy]

  def index
    @ivents = Ivent.all.order(:id)
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

  def edit
    
  end

  def update
    if @ivent.update(ivent_params)
      redirect_to @ivent, notice: "イベントが更新されました"
    else
      render :edit, notice: "イベントを更新できませんでした"
    end
  end
  
  def destroy
    @ivent.destroy
    respond_to do |format|
      format.html {redirect_to ivents_path, notice: "イベントが削除されました。"}
      format.json {head :no_content}
    end
  end

  private

  def set_ivent
    @ivent = Ivent.find(params[:id])
  end

  def ivent_params
    params.require(:ivent).permit(:name)
  end
end
