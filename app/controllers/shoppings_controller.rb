class ShoppingsController < ApplicationController
  
  def new
    @shop = Shopping.new
  end
  
  def create
    @shop = Shopping.new(shopping_params)
    if @shop.save
    redirect_to shopping_path(@shop)
    else
    render 'new'
    end
  end
  
  def show
    @shop = Shopping.find(params[:id])
  end
  
  def edit
    @shop = Shopping.find(params[:id])
    
  end
  
  def update
    @shop = Shopping.find(params[:id])
    if @shop.update(shopping_params)
      flash[:notice] = "Item was sucessfully Updated"
      redirect_to shopping_path(@shop)
    else
      render 'edit'
    end
  end
  
  def index
    @shop = Shopping.all
  end
  
  def destroy
    @shop = Shopping.find(params[:id])
    @shop.destroy
    flash[:notice] = "Deleted"
    redirect_to shoppings_path
  end
  
  
  private
  
  def shopping_params
    params.require(:shopping).permit(:item)
  end
  
end