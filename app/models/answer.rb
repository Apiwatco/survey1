class Answer < ActiveRecord::Base
	validates :answer_name, :user_id, :question_id, presence: true
	belongs_to :question
	belongs_to :user
	##make sure answer table in db has a question_id col.
end
