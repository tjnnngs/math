require "sinatra"
enable :sessions #not sure how this part works but needed for printresults on line 20

get '/' do 
	redirect '/numbers'
end

get '/numbers' do
	erb :numbers
end	

post '/numbers' do
	session[:num1_provided] = params[:num1_provided]
	session[:num2_provided] = params[:num2_provided]
	session[:action_provided] = params[:action_provided]
	redirect "/printresults"
end	

get '/printresults' do
	erb :printresults, locals:{num1: session[:num1_provided], num2: session[:num2_provided], action: session[:action_provided] }
end	
Contact GitHub API Training Shop Blog About
