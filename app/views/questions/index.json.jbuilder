json.array!(@questions) do |question|
  json.extract! question, :question_name, :user_id, :question_id, :answer_id
  json.url question_url(question, format: :json)
end
