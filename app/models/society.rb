#coding=utf-8
class Society < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "170x170>", :thumb => "50x50>"}
  attr_accessible :name, :description, :password, :password_confirmation, :avatar
  has_many :properties, :order => "name", :dependent => :destroy
  has_many :users, :order => "name", :dependent => :destroy
  has_many :activities, :order => "created_at desc", :dependent => :destroy

  validates_confirmation_of :password, message: "两次密码输入不一致"#new version
  validates_presence_of :name, :message => "名称不能为空" #old version

  protected
  def Society.authenticate(name, password)
    if society = find_by_name(name)
      if society.password == password
        society
      end
    end
  end

end
