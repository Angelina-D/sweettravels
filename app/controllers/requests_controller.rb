class RequestsController < ApplicationController
  def index
  end

  def show
    @request = Request.find(params[:format])
  end

  def new
  end

  def create
  end

  def delete
  end
end
