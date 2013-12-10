class Game

	def initialize (user, computer)
		@user = user
		@computer = computer
	end

	def winner
		if @user == "rock" && @computer == "paper" ||
			@user == "paper" && @computer == "scissor" ||
			@user == "scissor" && @computer == "rock"
			return "The machines win!"
		elsif @user == @computer
			return "A tie..."
		else
			return "You win!"
		end
	end
end