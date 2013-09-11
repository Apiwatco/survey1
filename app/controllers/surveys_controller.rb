class SurveysController < ApplicationController
	# def init
	# 	@answers = ['Strongly Disagree', 'Disagree', 'Slightly Disagree', 'Neither', 'Slightly Agree', 'Agree', 'Strongly Agree']
	# end

	def index
		#@survey = Survey.all
		#@survey = Survey.new
		
		@question = Question.new
		@questions = Question.all
		@answers = ['Strongly Disagree', 'Disagree', 'Slightly Disagree', 'Neither', 'Slightly Agree', 'Agree', 'Strongly Agree']
	end

	def new
	end

	def create
	end

	
	
	def submission
		params['answer_content_hash'].each do |question_id, answer|
			question = Question.find(question_id)
			#question.answer = answer
			question.save!
		end

		@test_data_from_form = params
	end

end
