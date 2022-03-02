class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :job_wanted, :soft_skills, :hard_skills, :languages, :years_of_experience, :values)
  end
end
