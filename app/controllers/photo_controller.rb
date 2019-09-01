class PhotoController < ApplicationController

  def index
    @photo = Photo.all
  end

  def new
    @post = Post.find(params[:post_id])
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    @post = Post.find(params[:post_id])
    @photo.post = @post
    @photo.save
    redirect_to post_path(@post)
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
  end


  private

  def photo_params
    params.require(:photo).permit(:cloud_id)
  end

end
