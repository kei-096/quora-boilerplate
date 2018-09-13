set :run, true
enable :sessions

get '/' do
	
  @date = Time.now.strftime("%Y/%m/%d/ %H:%M")

  erb :"home"
  	
end

get '/sign_up' do
	erb :"users/new"
end

post '/sign_up' do
  user = User.new(params[:user])
  user.save
  redirect '/'
end  

get '/login' do
	erb :"sessions/new"
end

post '/login' do
	user = params[:user]

	if User.check_validity(user['email'], user['password'])
		user = User.find_by(email: user['email'])
		session[:user_id] = user.id

		redirect '/'

	else
		redirect to '/404'
	end
end

get '/logout' do

	session[:user_id] = nil
	redirect '/'

end

get '/users/:id' do
	@user = User.find_by(id: params[:id])

	if @user
		erb :"users/show"
	else
		redirect '/404'
	end
end

get '/404' do
	return "Something went wrong :("
end


