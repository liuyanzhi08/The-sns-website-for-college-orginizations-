#coding=utf-8
class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" }
  belongs_to :society
  attr_accessible :name, :telephone, :email, :microblogging, :description, :avatar

  validates_presence_of :name, message:"姓名不能为空"
  validates_presence_of :telephone, message:"电话不能为空"
end
