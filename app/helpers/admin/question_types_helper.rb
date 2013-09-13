module Admin::QuestionTypesHelper
  def display_class
    @field_types.select{ |ft| ft.id == @admin_question_type.field_type_id && ft.is_optionable }.blank? ? "hide" : ""
  end
end
