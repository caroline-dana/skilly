class UserSkillsController < ApplicationController
  def new
    @user_skill = UserSkill.new
  end

  def create
    @user_skill = UserSkill.new(params[:user_skill])
    @user_skill.save
    redirect_to user_path(@user)
  end

  def update
    @user_skill = UserSkill.find(params[:id])
    @user_skill.update(params[:user_skill])
    redirect_to user_path(@user)
  end

  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy
    redirect_to user_path(@user)
  end
end
