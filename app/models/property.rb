#coding=utf-8
class Property < ActiveRecord::Base
  belongs_to :society
  attr_accessible :name, :price, :description

  validates_presence_of :name, message:"物品名称不能为空"
  validates_presence_of :price, message:"物品价格不能为空"
  validates_presence_of :description, message:"物品描述不能为空"
end
