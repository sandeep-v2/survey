class Admin::QuestionType < ActiveRecord::Base
  attr_accessible :field_type_id, :name, :no_of_choices
end
