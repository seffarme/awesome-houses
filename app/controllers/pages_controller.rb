class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:category] && !params[:category].empty?
      @title = "#{params[:category]} properties"
      @properties = Property.where(category: params[:category])
      @selected = params[:category]
    else
      @title = "All our properties"
      @properties = Property.all
      @selected = ""
    end
  end
end
