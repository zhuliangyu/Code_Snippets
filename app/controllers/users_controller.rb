class UsersController < ApplicationController

  def new
    @user=User.new

  end

  def create
    @user=User.new(get_user_params)
    if @user.save
      redirect_to new_code_path,notice: "Create user successfully."
    else
      flash[:alert]="sth wrong for your sign up"
      render :new

    end


  end

  private
  def get_user_params
    @user_params=params.require(:user).permit(:name,:email,:password)


  end

end
