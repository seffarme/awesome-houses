class PropertiesController < ApplicationController
  before_action :find_property, only: [:show, :edit, :update, :destroy]

  # def index
  #   @properties = Property.all
  # end

  def show

  end

  def new
    @property = Property.new
  end

  def create
      @property = Property.new(property_params)
      @property.user = current_user
    if @property.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @property.update(property_params)
    redirect_to property_path(@property)
  end

  def destroy
    @property.destroy
    redirect_to root_path
  end

  private

  def find_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:title, :price, :description, :category, photos: [])
  end
end
