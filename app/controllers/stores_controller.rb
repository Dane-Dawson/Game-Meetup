class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def home
  end
  
  def show
    @store = Store.find(params[:id])
  end
end
