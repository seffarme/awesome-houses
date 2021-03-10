class BookingsController < ApplicationController
  before_action :set_property, only: [:edit, :update]

  def new
    @property = Property.find(params[:property_id])
    @booking = Booking.new
    # @bookings = Booking.where(property_id: @property.id)
    # @dates = @bookings.map do |booking|
    #   {
    #     from: booking.checkin,
    #     to: booking.checkout
    #   }
    # end
  end

  def create
    @property = Property.find(params[:property_id])
    @booking = Booking.new(booking_params)
    @booking.property = @property
    @booking.user = current_user

    # if (Time.now - 1.days) < @booking.checkin && @booking.checkin < @booking.checkout && @booking.save
    #   redirect_to property_path(@property)
    # else
      # render :new
    # end

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
