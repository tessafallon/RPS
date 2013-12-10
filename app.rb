require 'bundler'
Bundler.require

	class RPS_App < Sinatra::Application
		get '/throw/:type' do
		@user_choice = "Your choice is #{params[:type]}"
		@comp_choice = ["rock", "paper", "scissor"]
		erb :throw
		end
	end