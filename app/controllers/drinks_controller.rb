class DrinksController < ApplicationController
  
  def new
    @drink = Drink.new
  end
  
  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      flash[:success] = "Item Successfully added"
      redirect_to shoppings_path(@shop)
    else
    render 'new'
    end
  end
  
  def show
    @drink = Drink.find(params[:id])
  end
  
  def edit
    @drink = Drink.find(params[:id])
    
  end
  
  def update
    @drink = Drink.find(params[:id])
    if @drink.update(drink_params)
      flash[:success] = "Item was sucessfully Updated"
      redirect_to shoppings_path(@shop)
    else
      render 'edit'
    end
  end
  
  def index
    @drinks = Drink.all
  end
  
  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    flash[:danger] = "Item was Removed"
    redirect_to shoppings_path(@shop)
  end
  
  
  private
  
  def drink_params
    params.require(:drink).permit(:item)
  end
  
end