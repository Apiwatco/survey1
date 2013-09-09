class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_name
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
