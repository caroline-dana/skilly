class UserSkillsController < ApplicationController
  def create
    @user = current_user
    @user_skill = UserSkill.new(user_skill_params)
    @user_skill.user = @user
    @user_skill.save!
    redirect_to user_path(@user)
  end

  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy
    redirect_to user_path(@user)
  end

  private

  def user_skill_params
    params.require(:user_skill).permit(:skill_id)
  end
end
