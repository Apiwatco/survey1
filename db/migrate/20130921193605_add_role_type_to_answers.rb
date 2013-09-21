class AddRoleTypeToAnswers < ActiveRecord::Migration
  def change
  	add_column :answers, :role_type, :string
  end
end
