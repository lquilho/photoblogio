class PicturesController < ApplicationController

  def index
    @picture = Picture.all
  end

  def new
    @post = Post.find(params[:post_id])
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    @post = Post.find(params[:post_id])
    @picture.post = @post
    @picture.save
    redirect_to post_path(@post)
  end

  def destroy
    @picture = picture.find(params[:id])
    @picture.destroy
  end


  private

  def picture_params
    params.require(:picture).permit(:photo_id)
  end

end
