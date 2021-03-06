# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :questions
	has_many :answers

	def innovator_answers
		user_answers = self.answers.where(role_type: "innovator")
		return user_answers
  end

  def calculate_innovator_score
		answers = self.innovator_answers
		score_array = answers.map{|answer| answer.answer_score}
		score_array.inject{ |sum, el| sum + el }.to_f / score_array.size 
  end

  def broker_answers
  	user_answers = self.answers.where(role_type: "broker")
  	return user_answers
  end

  def calculate_broker_score
  	answers = self.broker_answers
  	score_array = answers.map{|answer| answer.answer_score}
  	score_array.inject{ |sum, el| sum + el }.to_f / score_array.size 
  end

  def producer_answers
  	user_answers = self.answers.where(role_type: "producer")
  	return user_answers
  end

  def calculate_producer_score
  	answers = self.producer_answers
  	score_array = answers.map{ |answer| answer.answer_score}
  	score_array.inject{ |sum, el| sum + el }.to_f / score_array.size 
  end

  def director_answers
  	user_answers = self.answers.where(role_type: "director")
  	return user_answers
  end

  def calculate_director_score
  	answers = self.director_answers
  	score_array = answers.map{ |answer| answer.answer_score}
  	score_array.inject{ |sum, el| sum + el }.to_f / score_array.size
  end

  def monitor_answers
    user_answers = self.answers.where(role_type: "monitor")
    return user_answers
  end

  def calculate_monitor_score
    answers = self.monitor_answers
    score_array = answers.map{ |answer| answer.answer_score}
    score_array.inject{ |sum, el| sum + el}.to_f / score_array.size
  end

  def coordinator_answers
    user_answers = self.answers.where(role_type: "coordinator")
    return user_answers
  end

  def calculate_coordinator_score
    answers = self.coordinator_answers
    score_array = answers.map{ |answer| answer.answer_score}
    score_array.inject{ |sum, el| sum + el}.to_f / score_array.size
  end

  def facilitator_answers
    user_answers = self.answers.where(role_type: "facilitator")
    return user_answers
  end

  def calculate_facilitator_score
    answers = self.facilitator_answers
    score_array = answers.map{ |answer| answer.answer_score}
    score_array.inject{ |sum, el| sum + el}.to_f / score_array.size
  end

  def mentor_answers
    user_answers = self.answers.where(role_type: "mentor")
    return user_answers
  end

  def calculate_mentor_score
    answers = self.mentor_answers
    score_array = answers.map{ |answer| answer.answer_score}
    score_array.inject{ |sum, el| sum + el}.to_f / score_array.size
  end



end
