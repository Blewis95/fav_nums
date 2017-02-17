require 'sinatra'

enable :sessions

get '/' do
	erb :name
end

post '/ask_name' do
	session[:name] = params[:name_input]

	erb :age
end

post '/ask_age' do
	session[:age] = params[:age_input]

	erb :fav_nums
end

post '/ask_nums' do
	session[:num1] = params[:num1_input]
	session[:num2] = params[:num2_input]
	session[:num3] = params[:num3_input]

	erb :display, :locals => {:name => session[:name], :age => session[:age], :num1 => session[:num1], :num2 => session[:num2], :num3 => session[:num3]}
end