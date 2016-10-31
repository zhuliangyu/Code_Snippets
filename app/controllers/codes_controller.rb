class CodesController < ApplicationController

  before_action :authentication,except: [:index,:show]


  def new
    # render plain: "asd"

    @code=Code.new
  end

  def create


    @code=Code.new(get_code_params)
    if @code.save()
      redirect_to codes_path, notice: "Save successfully"
    else
      flash.now[:alert]="sth wrong"
      render :new


    end


  end

  def index
    @codes=Code.all


  end

  def edit
    # code_id=Code.find(params[:id])
    # @code=Code.find(code_id)
    find_code
    render :new
  end

  def update
    # code_id=Code.find(params[:id])
    # @code=Code.find(code_id)
    find_code

    if @code.update(get_code_params)
      redirect_to codes_path, notice: "Update successfully"


    else
      redirect_to edit_code_path(@code),alert: "sth wrong when you update"

    end



  end

  def destroy
    find_code
    @code.destroy

    redirect_to codes_path, notice: "delete successfully"

  end

  private
  def get_code_params
    @code_params ||=params.require(:code).permit(:kind_id, :title, :work)

  end

  def find_code
    code_id=Code.find(params[:id])
    @code=Code.find(code_id)
  end
end
