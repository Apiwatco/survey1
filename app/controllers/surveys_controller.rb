class SurveysController < ApplicationController
	# def init
	# 	@answers = ['Strongly Disagree', 'Disagree', 'Slightly Disagree', 'Neither', 'Slightly Agree', 'Agree', 'Strongly Agree']
	# end

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
		params['answer_name_hash'].each do |question_id, answer|
				# question = Question.find(question_id)
				#answer = Answer.new(question_id: question_id, answer_name: answer, user_id: 1)
				answer = Answer.new(question_id: question_id, answer_name: answer, user_id: current_user.id)
				answer.save!
			end

			@test_data_from_form = params
			@whole = params['answer_name_hash']

			@test = Answer.where(current_user.id)

			def score
				if current_user.answer = "Strongly Disagree"
					1
					elsif curren_user.answer = "Strongly Agree"
						2
					else
						puts "nope."
					end
				end




			#@test_data_from_form = params['answer_name_hash'].map { |child| child['question_id'.to_i]['answer']}
			# @test_data_from_form = params['answer_name_hash'].map do |child| 
			# 	child['question_id'.to_i]
			# 	child['answer_name'.to_i]
			#end
			# @test_data_from_form = @answer.map do |child|
			# 	child['question_id']
			# end

			#calculate_score
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
