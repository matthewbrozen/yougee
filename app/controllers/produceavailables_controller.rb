class ProduceavailablesController < ApplicationController


    def index
      @produceavailables = Produceavailable.all
    end

    def show
      @produceavailable = Produceavailable.find(params[:id])
    end

    def new
      @produceavailable =  Produceavailable.new
    end

    def create
      @produceavailable = Produceavailable.new(produceavailable_params)
      @produceavailable.gardener = current_user.profile
      if @produceavailable.save
        redirect_to produceavailables_path
      else
        render :new
      end
    end

    def edit
      @produceavailable = Produceavailable.find(params[:id])
    end

    def update
    @produceavailable = Produceavailable.find(params[:id])

    if @produceavailable.update_attributes(produceavailable_params)
      redirect_to produceavailables_path
    else
      render :edit
    end
  end

  def destroy
    @produceavailable = Produceavailable.find(params[:id])
    @produceavailable.destroy
    redirect_to produceavailables_path
  end

  private
  def produceavailable_params
    params.require(:produceavailable).permit(:produce_id, :gardener_id, :quantitystarted, :quanititytaken, :location)
  end
end
