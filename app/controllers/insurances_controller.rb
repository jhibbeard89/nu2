class InsurancesController < ApplicationController
  def index
    @insurances = Insurance.all
    @public_insurances = Insurance.where(private: false)
    @private_insurances = Insurance.where(private: true)
  end
    
  def show
    @insurance = Insurance.find(params[:id])
  end
end
