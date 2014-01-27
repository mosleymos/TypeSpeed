#=AUTHOR
#=SYNOPSIS
#=DATE
#=LICENCE
#--rdoc a faire
#variables

require "pry"

time_char=2  #duree de l'affichage de chaque charactère, lettre ou bit
time_type=10 #délai maximal avant la saisie d'une lettre

#fonctions basiques

#Generation de 0 et 1 aleatoires
def randomBits
	randomBit=rand(0..1)
end


#Generation de lettre de l'alphabet aleatoire
def randomLetters
	randomLetter=('a'..'z').to_a[rand(0...26)]
end

#choix aléatoire de l'affichage d'une lettre ou d'un bit (bit dans 80% des cas)

def choice_random 
choice_function = rand(0..10)
	if choice_function >= 8
		randomLetters
	else
		randomBits
	end
end




# grandes fonctions du jeu

# Ecran de depart / Affichage de l'ecran titre
def start 
	puts "Type Speed\n Le jeu"
end 

# Affichage regles du jeu
#--Pour le fun faire un dessin ascii
def rules
	puts "Type Speed est un jeu de réflexes :\n
	tapez les lettres dès qu'elles apparaissent.\n 
	Vous diposez de #{time_type} secondes pour saisir chaque lettre.\n
	La partie est perdue en cas d'erreur de saisie \n
	ou si le temps est dépassé."
end


#Lancement du jeu - confirmation joueur
#--Faire un debug au cas ou l'utilisateur rentre autre
#--parametre que Y,y, N,n 
def launch
	puts "Voulez vous lancer la partie ? [Y/n]"
	player_choice=gets.chomp
	if player_choice =="Y" || player_choice == "y" 
		#launch2
 	else 
		puts"test"
 	end
end 


#Ecran resultat

def gameover
	puts "T'as perdu!!!"
end

def victory
	puts "Bien joué ;)"
end

# Ecran de jeu

def main_game

	(0..30).each { |x|
		
		a=choice_random
		puts a
			if a.kind_of?(Integer)
		
			else 
				input_player=gets.chomp 

				if input_player == a
					
				else
					gameover
			end
		end
		sleep(2.0) 
	}
end


=begin	
		a=choice_random
		if a.is_a?(Integer)
			binding.pry
			resume
		else 
			input_player=gets.chomp 

			if input_player == choice_random
				resume
			else
				exit
			end
		end
=end
