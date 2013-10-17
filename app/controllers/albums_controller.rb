class AlbumsController < ApplicationController
  respond_to :html

  before_filter :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  expose(:album, attributes: :album_params)
  expose(:albums) { Album.page(params[:page]) }

  def all
  end

  def index
    self.albums = current_user.albums.page(params[:page])
  end

  def create
    album.user = current_user
    flash[:notice] = 'Album was successfully created.' if album.save
    respond_with [current_user, album]
  end

  def update
    flash[:notice] = 'Album was successfully updated.' if album.save
    respond_with [current_user, album]
  end

  def destroy
    album.destroy
    respond_with [current_user, album]
  end

  private

  def album_params
    params.require(:album).permit(:title)
  end

end
