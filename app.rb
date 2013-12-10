require 'bundler'
require './lib/throw.rb'
Bundler.require

	class RPS_App < Sinatra::Application
		get '/throw/:type' do
		@user_choice = params[:type].to_s
		@choices = ["rock", "paper", "scissor"]
		@comp_choice = @choices.sample
		game = Game.new(@user_choice, @comp_choice)
		@winner = game.winner
		erb :throw
		end
	end