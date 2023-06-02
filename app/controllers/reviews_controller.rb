class ReviewsController < ApplicationController
  def create
    @review = Review.new(reviews_param)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to profile_path(current_user)
    else
      render "profiles/show", status: :unprocessable_entity
    end
  end

  private

  def reviews_param
    params.require(:review).permit(:content)
  end
end
