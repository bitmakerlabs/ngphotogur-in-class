class Api::V1::PicturesController < ApplicationController
  respond_to :json

  def index
    @pictures = Picture.all
    respond_with @pictures
  end

  def show
    @picture = Picture.find(params[:id])
    respond_with @picture
  end

  def create
    @picture = Picture.create(params[:picture])
    respond_with @picture, location: "/"
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update_attributes(params[:picture])
    respond_with @picture
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    respond_with @picture
  end
end
