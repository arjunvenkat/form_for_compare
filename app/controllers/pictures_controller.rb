class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end


  # form_for
  def new
    @picture = Picture.new

  end


  # form_tag
  def new_picture

  end


  def edit
    @picture = Picture.find(params[:id])
  end


  # form_for
  def create
    @picture = Picture.new(params[:picture])
    @picture.save
    redirect_to pictures_url
  end


  # form_tag
  def create_picture
    raise @picture.inspect
    @picture = Picture.new
    @picture.url = params[:url]
    @picture.caption = params[:caption]
    @picture.save
    redirect_to pictures_url
  end


  def update
    @picture = Picture.find(params[:id])
  end


  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
  end
end
