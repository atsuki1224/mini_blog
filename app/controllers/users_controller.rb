class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @lyrics = current_user.lyrics.page(params[:page]).per(5).order("created_at DESC")
  end
end
