class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by(correo: params[:session][:email].downcase, contraseña: params[:session][:password])
    if user
      log_in user
      redirect_to :root
    else
      flash[:danger] = 'Invalida la combinación email/password'
      render 'new'
    end
  end

  def destroy
  	log_out if logged_in?
  	redirect_to :root
  end
end
