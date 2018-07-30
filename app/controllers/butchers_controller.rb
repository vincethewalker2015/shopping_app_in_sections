class ButchersController < ApplicationController
  
  def new
    @butcher = Butcher.new
  end
  
  def create
    @butcher = Butcher.new(butcher_params)
    if @butcher.save
      flash[:success] = "Item Successfully added"
      redirect_to shoppings_path(@shop)
    else
    render 'new'
    end
  end
  
  def show
    @butcher = Butcher.find(params[:id])
  end
  
  def edit
    @butcher = Butcher.find(params[:id])
    
  end
  
  def update
    @butcher = Butcher.find(params[:id])
    if @butcher.update(butcher_params)
      flash[:success] = "Item was sucessfully Updated"
      redirect_to shoppings_path(@shop)
    else
      render 'edit'
    end
  end
  
  def index
    @butchers = Butcher.all
  end
  
  def destroy
    @butcher = Butcher.find(params[:id])
    @butcher.destroy
    flash[:danger] = "Item was Removed"
    redirect_to shoppings_path(@shop)
  end
  
  
  private
  
  def butcher_params
    params.require(:butcher).permit(:item)
  end
  
end