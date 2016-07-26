class CooksController < ApplicationController

  def index
    @cooks = Cook.all
  end

  def show
    @cook = Cook.find(params[:id])
  end

  def new
    @cook = Cook.new
  end

  def create
  @cook = Cook.new(cook_params)

  @cook.user= current_user

    if @cook.save
      redirect_to cooks_path
    else
      render :new
    end
  end

  def edit
    @cook = Cook.find(params[:id])
  end

  def update
  @cook = Cook.find(params[:id])

  if @cook.update_attributes(cook_params)
    redirect_to cooks_path
  else
    render :edit
  end
end

def destroy
  @cook = Cook.find(params[:id])
  @cook.destroy
  redirect_to cooks_path
end

private
def cook_params
  params.require(:cook).permit(:name, :location)
end





end
