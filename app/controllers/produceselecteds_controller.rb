class ProduceselectedsController < ApplicationController

  def index
    @produceselecteds = Produceselected.all
  end

  def show
    @produceselected = Produceselected.find(params[:id])
  end

  def new
    @produceselected =  Produceselected.new
  end

  def create
  @produceselected = Produceselected.new(produceselected_params)
  @produceselected.cook = current_user.profile


  if @produceselected.quantity > @produceselected.produceavailable.quantitystarted - @produceselected.produceavailable.quanititytaken
    flash[:notice] = "You cannot select more then is available!"
    redirect_to produce_path(@produceselected.produceavailable.produce)
  else
  @produceselected.produceavailable.quanititytaken += @produceselected.quantity
  @produceselected.produceavailable.save

    if @produceselected.save
      redirect_to cook_path(current_user.profile)
    else
      render :new
    end
  end
  end

  def edit
    @produceselected = Produceselected.find(params[:id])
  end

  def update
  @produceselected = Produceselected.find(params[:id])

  if @produceselected.update_attributes(produceselected_params)
    redirect_to produceselecteds_path
  else
    render :edit
  end
end

def destroy
  @produceselected = Produceselected.find(params[:id])
  @produceselected.destroy
  redirect_to produceselecteds_path
end

private
def produceselected_params
  params.require(:produceselected).permit(:produceavailable_id, :cook_id, :quantity)
end
end
