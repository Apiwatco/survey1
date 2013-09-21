class AddRoleTypeToQuestion < ActiveRecord::Migration
  def change
  	add_column :questions, :role_type, :string
  end
end
