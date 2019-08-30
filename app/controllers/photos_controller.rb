class PhotosController < ApplicationController

  def new
    @rpost = Post.find(params[:post_id])
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @post = Post.find(params[:postt_id])
    @photo.post = @post
    @photo.save
    redirect_to post_path(@post)
  end





  private

  def photo_params
    params.require(:photo).permit(:cloud_id)
  end
end
