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
  @produceselected = Produceselected.new(produceavailable_params)

  @produceselected.cook = current_user.profile

    if @produceselected.save
      redirect_to produceselecteds_path
    else
      render :new
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
  params.require(:produceselected).permit(:produce_id, :gardener_id, :quantitystarted, :quanititytaken, :location)
end
end
