class ProducesController < ApplicationController

    def index
      @produces = Produce.all
    end

    def show
      @produce = Produce.find(params[:id])
    end

    def new
      @produce = Produce.new
    end

    def create
    @produce = Produce.new(produce_params)

    @produce.user= current_user

      if @produce.save
        redirect_to produces_path
      else
        render :new
      end
    end

    def edit
      @produce = Produce.find(params[:id])
    end

    def update
    @produce = Produce.find(params[:id])

    if @produce.update_attributes(produce_params)
      redirect_to produces_path
    else
      render :edit
    end
  end

  def destroy
    @produce = Produce.find(params[:id])
    @produce.destroy
    redirect_to produces_path
  end

  private
  def produce_params
    params.require(:produce).permit(:name, :location)
  end


end
