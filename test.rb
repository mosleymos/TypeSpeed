require 'timeout'

def victoire 
	puts "victory"
end

def gameover
	puts "game over"
end

def start
	puts"le jeu commence"
	puts" souhaitez vous continuer y/n"
	choice=gets.chomp
end

20.times{

begin
	Timeout::timeout(5.1) do			
	choice_player=gets.chomp
	victoire	
	end
rescue Timeout::Error
	puts"it's over"
	gameover
	
	start
	retry
	
end

}