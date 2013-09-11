class Admin::Survey < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
end
