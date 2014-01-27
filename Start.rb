#=AUTHOR
#=SYNOPSIS
#=DATE
#=LICENCE

#variables

time_char=2  #duree de l'affichage de chaque charactère, lettre ou bit
time_type=10 #délai maximal avant la saisie d'une lettre

#fonctions basiques

#Generation de 0 et 1 aleatoires
def randomBits
	return puts randomBit=rand(0..1)
end


#Generation de lettre de l'alphabet aleatoire
def randomLetters
	return puts randomLetter=('a'..'z').to_a[rand(0...26)]
end

#choix aléatoire de l'affichage d'une lettre ou d'un bit (bit dans 80% des cas)

def choice_random 
choice_function = rand(0..10)
	if choice_function >= 8
		return randomLetters
	else
		return randomBits
	end
end




# grandes fonctions du jeu

# Ecran de depart / Affichage de l'ecran titre
def start 
	puts "Type Speed\n Le jeu"
end 

# Affichage regles du jeu

def rules
	puts "Type Speed est un jeu de réflexes :\n
	tapez les lettres dès qu'elles apparaissent.\n 
	Vous diposez de #{time_type} secondes pour saisir chaque lettre.\n
	La partie est perdue en cas d'erreur de saisie \n
	ou si le temps est dépassé."
end


#Lancement du jeu - confirmation joueur
def launch
	puts "Voulez vous lancer la partie ? [Y/n]"
	player_choice=gets.chomp
	if player_choice =="Y" || player_choice == "y" 
		#launch2
 	else 
		puts"test"
 	end
end 

# Ecran de jeu

def main_game

	(0..30).each { |x|
		
		if choice_random.is_a?(Integer)
			break
		else 
			input_player=gets.chomp 

			if input_player == choice_random
				resume
			else
				exit
			end
		end

		delay 2.0
	}
end

#Ecran resultat



