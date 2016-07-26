class GardenersController < ApplicationController


    def index
      @gardeners = Gardener.all
    end

    def show
      @gardener = Gardener.find(params[:id])
    end

    def new
      @gardener = Gardener.new
    end

    def create
    @gardener = Gardener.new(gardener_params)

    @gardener.user= current_user

      if @gardender.save
        redirect_to gardeners_path
      else
        render :new
      end
    end

    def edit
      @gardener = Gardener.find(params[:id])
    end

    def update
      @gardener = Gardener.find(params[:id])

      if @gardener.update_attributes(gardener_params)
        redirect_to gardeners_path
      else
        render :edit
      end
    end

  def destroy
    @gardener= Gardener.find(params[:id])
    @gardener.destroy
    redirect_to gardeners_path
  end

  private
  def gardener_params
    params.require(:gardener).permit(:name, :location)
  end

end
