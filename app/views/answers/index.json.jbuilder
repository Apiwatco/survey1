json.array!(@answers) do |answer|
  json.extract! answer, :answer_name, :answer_content, :question_id, :user_id
  json.url answer_url(answer, format: :json)
end
