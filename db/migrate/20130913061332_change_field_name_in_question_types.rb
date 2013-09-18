class ChangeFieldNameInQuestionTypes < ActiveRecord::Migration
  def up
    rename_column :field_types, :type, :type_name
  end

  def down
    rename_column :field_types, :type_name, :type
  end
end
