class BookingsController < ApplicationController
  before_action :set_property, only: [:new, :create, :edit, :update]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.property = @property
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def set_property
    @property = Booking.find(params[:property_id])
  end

  def booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end

end
