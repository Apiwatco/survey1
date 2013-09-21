class SurveysController < ApplicationController
	# def init
	# 	@answers = ['Strongly Disagree', 'Disagree', 'Slightly Disagree', 'Neither', 'Slightly Agree', 'Agree', 'Strongly Agree']
	# end

	before_filter :authenticate_user! #, only: [:submission]

	def index
		#@survey = Survey.all
		#@survey = Survey.new
		
		#@question = Question.new
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
				@user = current_user
				params['answer_name_hash'].each do |question_id, answer|
					# params['answer_name_hash'].each do |question_id, answer, role_type|
						# question = Question.find(question_id)
						#answer = Answer.new(question_id: question_id, answer_name: answer, user_id: 1)
						answer = Answer.new(question_id: question_id, 
							answer_name: answer, 
							user_id: current_user.id, 
							role_type: Question.find(question_id).role_type)
						answer.save!
					end
		


			@test_data_from_form = params
			@whole = params['answer_name_hash']

			
	end


	# def calculate_score
	# 	score = 1
	# 	score *= 1 if answer == 'Strongly Disagree'
	# 	score *= 2 if answer_name == 'Disagree'
	# 	score *= 3 if answer_name == 'Slightly Disagree'
	# 	score *= 4 if answer_name == 'Neither'
	# 	score *= 5 if answer_name == 'Slightly Agree'
	# 	score *= 6 if answer_name == 'Agree'
	# 	score *= 7 if answer_name == 'Strongly Agree'

	# end

end
