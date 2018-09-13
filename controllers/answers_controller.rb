post '/answers/:question_id/:id/new' do
	answer = Answer.new(user_id: params[:id], question_id: params[:question_id], content: params[:content])
	answer.save
	redirect to '/'
end

get '/answers/index' do
	id = session[:user_id]
	@answers = Answer.where(user_id: id)
	erb :"answers/index"
end

get '/answers/:id' do 
	@answer = Answer.find(params[:id])
	erb :"answers/show"
end

post '/answers/:id/delete' do
	answer = Answer.find(params[:id])
	answer.destroy
	redirect to '/answers/index'
end

get '/answers/:id/edit' do 
	@answer = Answer.find(params[:id])
	erb :"answers/edit"
end

post '/answers/:answer_id/edit' do
	answer = Answer.find(params['answer_id'])
	answer.update(content: params['content'])
	redirect 'answers/index'
end