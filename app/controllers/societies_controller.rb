#coding: utf-8
class SocietiesController < ApplicationController
  def new
    @society = Society.new
  end

  def create
    @society = Society.new(params[:society])
    if @society.save
      session[:society_id] = @society.id
      redirect_to modifyZone_url, notice:"社团“#{@society.name}”今天从我们网站诞生了！"
    else
      render new_society_path
    end
  end

  def zone 
    @society = Society.find(session[:society_id])
  end

  def show
    @society = Society.find(params[:id])
    render "zone"
  end

  def modifyZone
    @society = Society.find(session[:society_id])
  end

  def update
    @society = Society.find(session[:society_id])
    if @society.update_attributes(params[:society])
      redirect_to modifyZone_url, notice:"成功更新资料"
    else
      redirect_to modifyZone_url, notice:"不好意思，出错了，资料未更新"
    end
  end

end
