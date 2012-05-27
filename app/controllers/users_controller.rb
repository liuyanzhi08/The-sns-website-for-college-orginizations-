#coding:utf-8
class UsersController < ApplicationController
  def new
    @society = Society.find(session[:society_id])
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    @society = Society.find(session[:society_id])
    if @user.save
      @society.users << @user
      redirect_to modifyZone_url, notice:"成功增添一位成员，欢迎我们的伙伴“#{@user.name}”!" 
    else
      render new_user_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to modifyZone_url, notice:"“成功更新成员#{@user.name}”资料"
    else
      redirect_to modifyZone_url, notice:"不好意思，出现错误，资料未更新"
    end
  end

  def destroy
    @user = User.find(params[:id])
    name = @user.name
    if @user.destroy
      redirect_to modifyZone_url, notice:"成员“#{name}”被删除"
    else
      redirect_to modifyZone_url, notice:"不好意思，出错了，未成功删除"
    end
  end
    

end
