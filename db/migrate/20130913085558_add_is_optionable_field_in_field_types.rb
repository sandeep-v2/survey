class AddIsOptionableFieldInFieldTypes < ActiveRecord::Migration
  def up
    add_column :field_types, :is_optionable, :boolean, :default => false
  end

  def down
    remove_column :field_types, :is_optionable
  end
end
