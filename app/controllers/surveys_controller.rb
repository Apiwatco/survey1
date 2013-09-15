class SurveysController < ApplicationController
	# def init
	# 	@answers = ['Strongly Disagree', 'Disagree', 'Slightly Disagree', 'Neither', 'Slightly Agree', 'Agree', 'Strongly Agree']
	# end

	def index
		#@survey = Survey.all
		#@survey = Survey.new
		
		@question = Question.new
		@questions = Question.all
		@choices = ['Strongly Disagree', 'Disagree', 'Slightly Disagree', 'Neither', 'Slightly Agree', 'Agree', 'Strongly Agree']
	end


#see http://birds-eye.net/rails/app-views-edit-create-nested-data.htm
	def new
		# @survey = Survey.find(params[:survey_id])
		# @question = Question.new(:answer => Hash.new)
	end

	def create
	end

	
	
	# def submission
	# 	params['answer_name_hash'].each do |question_id, answer|
	# 		question = Question.find(question_id)
	# 		#question.answer = answer
	# 		question.save!
	# 	end

	# 	@test_data_from_form = params
	# end

	def submission
		params['answer_name_hash'].each do |question_id, answer|
				# question = Question.find(question_id)
				answer = Answer.new(question_id: question_id, answer_name: answer, user_id: current_user)
				answer.save!
			end
	end

end
