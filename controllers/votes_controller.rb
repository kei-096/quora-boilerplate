post '/votes/:answer_id/:user_id' do
	vote = Vote.new(user_id: params['user_id'], answer_id: params['answer_id'])
	vote.save
	count = Vote.where(answer_id: params['answer_id']).count
	{count: count, object: vote}.to_json
end

post '/votes/:answer_id/:user_id/delete' do
	vote = Vote.where(answer_id: params['answer_id'])
	users_vote = vote.find_by(user_id: params['user_id'])
	users_vote.destroy
	redirect to '/'
end

