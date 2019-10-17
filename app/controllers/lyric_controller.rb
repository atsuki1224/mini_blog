class LyricController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @lyrics = Lyric.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @lyric = Lyric.new
  end

  def create
    Lyric.create(text: lyric_params[:text], user_id: current_user.id)
  end

  def destroy
    lyric = Lyric.find(params[:id])
    if lyric.user_id == current_user.id
      lyric.destroy
    end
  end

  def edit
    @lyric = Lyric.find(params[:id])
  end

  def update
    lyric = Lyric.find(params[:id])
    if lyric.user_id == current_user.id
      lyric.update(lyric_params)
    end
  end

  private
  def lyric_params
    params.require(:lyric).permit(:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
