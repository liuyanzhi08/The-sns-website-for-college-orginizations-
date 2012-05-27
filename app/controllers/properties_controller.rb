#coding=utf-8
class PropertiesController < ApplicationController
  def new
    @society = Society.find(session[:society_id])
    @property = Property.new
  end

  def create
    @society = Society.find(session[:society_id])
    @property = Property.new(params[:property])
    if @property.save 
      @society.properties << @property
      redirect_to modifyZone_url, notice:"新添了一样物品“#{@property.name}”"
    else 
      render new_property_path
    end
  end

  def destroy
    @property = Property.find(params[:id])
    name = @property.name
    if @property.destroy
      redirect_to modifyZone_url, notice:"物品“#{name}”被删除"
    else
      redirect_to modifyZone_url, notice:"不好意思，出错了，未成功删除"
    end
  end

  def update
    @property = Property.find(params[:id])
    if @property.update_attributes(params[:property])
      redirect_to modifyZone_url, notice:"“成功更新物品#{@property.name}”资料"
    else
      redirect_to modifyZone_url, notice:"不好意思，出现错误，资料未更新"
    end
  end

end
