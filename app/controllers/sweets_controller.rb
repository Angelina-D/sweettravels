class SweetsController < ApplicationController

  def index
    if params[:query] == ''
      @sweets = Sweet.all
    elsif params[:query]
      @sweets = Sweet.search_sweet(params[:query])
    else
      @sweets = Sweet.all
    end
  end

  def show
    @sweet = Sweet.find(params[:id])
  end
end
