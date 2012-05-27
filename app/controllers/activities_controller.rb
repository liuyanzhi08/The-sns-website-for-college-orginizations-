#coding:utf-8
class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def create
    @society = Society.find(session[:society_id])
    @activity = Activity.new(params[:activity])

    if @activity.save
      @society.activities << @activity
      redirect_to modifyZone_url, notice:"您成功发布了一个活动"
    else
      render new_activity_path
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    name = @activity.name
    if @activity.destroy
      redirect_to modifyZone_url, notice:"活动“#{name}”被删除"
    else
      redirect_to modifyZone_url, notice:"不好意思，出错了，未成功删除"
    end
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update_attributes(params[:activity])
      redirect_to modifyZone_url, notice:"成功更新活动“#{@activity.name}”资料"
    else
      redirect_to modifyZone_url, notice:"不好意思，出现错误，资料未更新"
    end
  end

end
