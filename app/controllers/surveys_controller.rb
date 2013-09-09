class SurveysController < ApplicationController

	def index
		#@survey = Survey.all
		#@survey = Survey.new
		@question = Question.new
	end

	def new
	end
	
end
