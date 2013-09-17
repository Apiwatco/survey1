class RemoveAnswerContent < ActiveRecord::Migration
  def change
  	remove_column :answers, :answer_content
  end
end
