class UserSkillsController < ApplicationController
  def create
    @user = current_user
    @skills = Skill.where(id: params[:user_skill][:skill])
    @skills.each do |skill|
      @user_skill = UserSkill.create!(skill: skill, user: current_user)
    end
    redirect_to user_path(@user, skill: "hard")
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
