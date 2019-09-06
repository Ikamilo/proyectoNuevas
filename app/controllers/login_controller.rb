class LoginController < ApplicationController
  def index

  end

  def create
    @var = render :text => params[:login].inspect
  end
end
