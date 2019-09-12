class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:post_id])
    @photo = Photo.find(params[:id])
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Image has been deleted' }
      format.json { head :no_content }
      format.js   { render layout: false}
    end
  end


  private

  def photo_params
    params.require(:photo).permit(:cloud_id)
  end

end
