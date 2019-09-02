class PhotosController < ApplicationController

  def show

  end

  def new
    @photo = Photo.new
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @photo = Photo.new(photo_params)
    @photo.post = @post
    @photo.save
    redirect_to post_path(@post)
  end


  private

  def photo_params
    params.require(:photo).permit(:cloud_id)
  end

end
