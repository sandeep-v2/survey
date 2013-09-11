class AddFieldsInUsers < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string, :null => false
    add_column :users, :last_name, :string, :null => false
    add_column :users, :mobile_number, :string, :limit => 10
    add_column :users, :role, :string, :default => "member"
  end

  def down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :mobile_number
    remove_column :users, :role
  end
end
