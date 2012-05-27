#coding=utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authrize

  protected

  def authrize
    unless Society.find_by_id(session[:society_id])
      redirect_to login_url, :notice => "您好，请登录"
    end
  end
end
