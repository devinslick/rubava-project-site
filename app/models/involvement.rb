class Involvement < ActiveRecord::Base
  attr_accessible :contributions, :member_id, :project_id, :role
  belongs_to :member
  belongs_to :project
end
