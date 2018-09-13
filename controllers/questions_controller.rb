get '/questions' do
	erb :"questions/new"
end

post '/questions' do 
	question = Question.new(user_id: session[:user_id], title: params[:title], question: params[:question])
	question.save
	redirect to '/questions/index'
end

get '/questions/index' do
	id = session[:user_id]
	@questions = Question.where(user_id: id)
	erb :"questions/index"
end


get '/questions/:id' do
	@question = Question.find(params[:id])

	erb :"questions/show"
end


post '/questions/:id/delete' do
	question = Question.find(params[:id])
	question.destroy
	redirect to '/questions/index'
end
