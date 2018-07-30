class VegetablesController < ApplicationController
  
  def new
    @veggie = Vegetable.new
  end
  
  def create
    @veggie = Vegetable.new(vegetable_params)
    if @veggie.save
      flash[:success] = "Item Successfully added"
      redirect_to shoppings_path(@shop)
    else
    render 'new'
    end
  end
  
  def show
    @veggie = Vegetable.find(params[:id])
  end
  
  def edit
    @veggie = Vegetable.find(params[:id])
    
  end
  
  def update
    @veggie = Vegetable.find(params[:id])
    if @veggie.update(vegetable_params)
      flash[:success] = "Item was sucessfully Updated"
      redirect_to shoppings_path(@shop)
    else
      render 'edit'
    end
  end
  
  def index
    @veggies = Vegetable.all
  end
  
  def destroy
    @veggie = Vegetable.find(params[:id])
    @veggie.destroy
    flash[:danger] = "Item was Removed"
    redirect_to shoppings_path(@shop)
  end
  
  
  private
  
  def vegetable_params
    params.require(:vegetable).permit(:item)
  end
  
  
end