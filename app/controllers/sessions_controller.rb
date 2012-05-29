#coding:utf-8
class SessionsController < ApplicationController
  skip_before_filter :check_authentication

  def create
    if society = Society.authenticate(params[:name], params[:password])
      session[:society_id] = society.id
      redirect_to  :action => session[:intended_action],
                   :controller => session[:intended_controller],
                   notice: "尊敬的#{society.name}，欢迎您回来"
    else 
      redirect_to login_url, notice: "用户名或密码不正确"
    end
  end

  def destroy
    session[:society_id] = nil
    redirect_to login_url
  end

end
