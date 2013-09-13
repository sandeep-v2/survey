class CreateAdminQuestionTypes < ActiveRecord::Migration
  def change
    create_table :admin_question_types do |t|
      t.string :name
      t.integer :field_type_id
      t.integer :no_of_choices

      t.timestamps
    end
  end
end
