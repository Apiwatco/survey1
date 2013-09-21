# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  answer_name :string(255)
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Answer < ActiveRecord::Base

	validates :answer_name, :user_id, :question_id, presence: true

	belongs_to :question
	belongs_to :user
	##make sure answer table in db has a question_id col.

 def answer_score
  	score = 1 if answer_name == 'Strongly Disagree'
		score = 2 if answer_name == 'Disagree'
		score = 3 if answer_name == 'Slightly Disagree'
		score = 4 if answer_name == 'Neither'
		score = 5 if answer_name == 'Slightly Agree'
		score = 6 if answer_name == 'Agree'
		score = 7 if answer_name == 'Strongly Agree'
		return score
  end

	

 

end
