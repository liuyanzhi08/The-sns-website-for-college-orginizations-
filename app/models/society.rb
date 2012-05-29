#coding=utf-8
class Society < ActiveRecord::Base
  has_secure_password
  has_attached_file :avatar, :styles => { :medium => "170x170>", :thumb => "50x50>"}
  attr_accessible :name, :description, :avatar
  attr_accessible :password, :password_confirmation

  has_many :properties, :order => "name", :dependent => :destroy
  has_many :users, :order => "name", :dependent => :destroy
  has_many :activities, :order => "created_at desc", :dependent => :destroy

  validates_confirmation_of :password, message: "两次密码输入不一致"#new version
  validates_presence_of :name, :message => "名称不能为空" #old version
  validates_uniqueness_of :name

  protected
  def Society.authenticate(name, password)
    society = find_by_name(name)
    unless society && society.authenticate(password)
      return nil 
    end
    society
  end

end
