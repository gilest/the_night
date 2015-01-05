class NightsController < ApplicationController

  def index
    # @fridays = Night.where(night: "friday")
    # @saturdays = Night.where(night: "saturday")
  end

  def create
    (night_params)   
    @night = Night.create(night_params)
    redirect_to index_path
  end

  private

  def night_params
    params.require(:night).permit(:night)    
  end

end

