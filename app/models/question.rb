# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  question_name :string(255)
#  user_id       :integer
#  question_id   :integer
#  answer_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#  role_type     :string(255)
#

class Question < ActiveRecord::Base
	# belongs_to :survey
	has_many :answers
	has_many :users

end
