#coding=utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_authentication

  protected
  def check_authentication
    unless session[:society_id]
      session[:intended_action] = action_name
      session[:intended_controller] = controller_name
      redirect_to login_url, :notice => "您好，请先登录"
    end
  end
end
