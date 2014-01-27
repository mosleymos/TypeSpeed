#=AUTHOR
#=SYNOPSIS
#=DATE
#=LICENCE

# Ecran de depart
#Fonction d'affichage de l'ecran titre
def start 
	puts "Type Speed"
end 

#start
#variables

time_type=10

# Affichage regles du jeu

puts "Type Speed est un jeu de réflexes :\n
	tapez les lettres dès qu'elles apparaissent.\n 
	Vous diposez de #{time_type} secondes pour saisir chaque lettre.\n
	La partie est perdue en cas d'erreur de saisie \n
	ou si le temps est dépassé."
	


#Lancement du jeu - confirmation jouer
def launch
	puts "Voulez vous lancer la partie ? [Y/n]"
	player_choice=gets.chomp
	if player_choice =="Y" || player_choice == "y" 
		#launch2
 	else 
		puts"test"
 	end
end 



# Jeu

def choice_random 
choice_function = rand(0..10)
	if choice_function >= 8
		return randomLetters
	else
		return randomBits
	end
end


#Generation de 0 et 1 aleatoires
def randomBits
	return randomBit=rand(0..1)
end


#Generation de lettre de l'alphabet aleatoire
def randomLetters
	return randomLetter=('a'..'z').to_a[rand(0...26)]
end


#Boucle Principale

def main_game

	(0..30).each { |x|
		choice_random
		input_player=gets.chomp 

		if input_player == choice_random
			resume
		else
			exit
		end

		delay 2.0

	}
end

=begin

30.each do {|i|
	puts i
	delay 2s
}
endz

#Ecran resultat
=end

