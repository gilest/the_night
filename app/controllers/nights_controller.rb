class NightsController < ApplicationController

  def index
    @weekend = Weekend.new(Date.today)
    @nights = {
      friday: Night.where(night: @weekend.friday),
      saturday: Night.where(night: @weekend.saturday)
    }
  end

  def create
    @night = Night.new(night_params)
    @night.user = current_user
    @night.save
    redirect_to nights_path
  end

  def destroy
    @night = Night.find(params[:id])
    @night.delete
    redirect_to nights_path
  end

  private

  def night_params
    params.require(:night).permit(:night)
  end

end
