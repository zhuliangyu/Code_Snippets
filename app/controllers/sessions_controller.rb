class SessionsController < ApplicationController

  def new
  end

  def create


    user=User.find_by(email: params[:email])


    if user
      session[:user_id]=user.id unless user.nil?
      redirect_to root_path,notice: "You sign in successfully"


    else
      flash[:alert]="sth wrong"
      render :new


    end


  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path,notice: "You have signed out!"
  end

end
