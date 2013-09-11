class Answer < ActiveRecord::Base
	belongs_to :question
	##make sure answer table in db has a question_id col.
end
