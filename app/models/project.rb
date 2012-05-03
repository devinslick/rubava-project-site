class Project < ActiveRecord::Base
  attr_accessible :description, :license, :name, :prodURL, :repo, :status
  has_many :involvements
  has_many :members, :through => :involvements
end
