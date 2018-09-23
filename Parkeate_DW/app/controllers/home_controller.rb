class HomeController < ApplicationController
  def index
  end

  def search
    redirect_to parkings_path
  end

  #def buscar
  	#@estacionamiento =params[:estacionamiento]
  	#if home.save
  		#redirect_to @estacionamiento(:controller=>'parking', :action=>'index')
  	#else
  	#	render :index
  	#end
  #end
end
