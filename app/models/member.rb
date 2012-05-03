class Member < ActiveRecord::Base
  attr_accessible :biography, :email, :fname, :homepage, :leftHanded, :lname, :twitter
  has_many :involvements
  has_many :projects, :through => :involvements
end
