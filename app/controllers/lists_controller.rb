class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      # Handle the successful save (e.g., redirect to a 'thank you' page)
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @lists = List.all
  end

  def show
  end
end

private

def list_params
  params.require(:list).permit(:name)
  # Include other parameters as necessary
end
