class Answer < ActiveRecord::Base
	validates_presence_of :user_id, :question_id
	belongs_to :question
	##make sure answer table in db has a question_id col.
end
