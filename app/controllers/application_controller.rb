class ApplicationController < ActionController::Base
  def create
    User.create(user_params)
    # 投稿完了後、すぐに一覧表示画面へ遷移
    redirect_to :action => :index
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:image)
  end
end
