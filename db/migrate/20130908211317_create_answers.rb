class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_name
      t.text :answer_content
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
  end
end
