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
				#answer = Answer.new(question_id: question_id, answer_name: answer, user_id: 1)
				answer = Answer.new(question_id: question_id, answer_name: answer, user_id: current_user.id)
				answer.save!
			end

			@test_data_from_form = params
			@whole = params['answer_name_hash']
			#@test_data_from_form = params['answer_name_hash'].map { |child| child['question_id'.to_i]['answer']}
			# @test_data_from_form = params['answer_name_hash'].map do |child| 
			# 	child['question_id'.to_i]
			# 	child['answer_name'.to_i]
			#end
			# @test_data_from_form = @answer.map do |child|
			# 	child['question_id']
			# end
	end

end
