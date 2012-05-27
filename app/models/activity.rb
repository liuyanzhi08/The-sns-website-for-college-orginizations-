#coding=utf-8
class Activity < ActiveRecord::Base
  attr_accessible :name, :content, :created_at
  belongs_to :society

  validates_presence_of :name, message:"活动名称不能为空"
  validates_presence_of :content, message:"活动内容不能为空"
end
