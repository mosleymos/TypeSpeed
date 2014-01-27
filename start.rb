#=AUTHOR
#=SYNOPSIS
#=DATE
#=LICENCE
#--rdoc a faire

require "timeout"
require "pry"

#variables
BEGIN{
TIME_CHAR=2  #duree de l'affichage de chaque charactère, lettre ou bit
TIME_TYPE=2 #délai maximal avant la saisie d'une lettre
}

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
	puts "\nType Speed\nLe jeu"
	sleep 2
	system("cls")
end 

# Affichage regles du jeu
#--Pour le fun faire un dessin ascii
def rules
	puts"	
	Type Speed est un jeu de réflexes :\n
	tapez les lettres dès qu'elles apparaissent,\n
	ne faites rien quand un chiffre apparaît.\n 
	Vous diposez de #{TIME_TYPE} secondes pour saisir chaque lettre.\n
	La partie est perdue en cas d'erreur de saisie \n
	ou si le temps est dépassé."
	sleep 5
end


#Lancement du jeu - confirmation joueur
#--Faire un debug au cas ou l'utilisateur rentre autre
#--parametre que Y,y, N,n 
# + compte à rebours lancement
def launch
	puts "\nVoulez vous lancer la partie ? [Y/n]"
	player_choice=gets.chomp
	if player_choice =="Y" || player_choice == "y"
		puts"Attention:"
		sleep 1
		puts"3..."
		sleep 1
		puts"2.."
		sleep 1
		puts"1."
		sleep 1
		puts"GO !!!"
		sleep 1
		main_game
 	else 
		puts"Tant pis pour toi."
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

	(0..30).each do |x|
		
		a=choice_random
		puts a
			if a.kind_of?(Integer)
		
			else
				begin
					Timeout::timeout(TIME_TYPE) do

						input_player=gets.chomp 

						if input_player == a
							
						else
							gameover
							break
						end

						end

				rescue Timeout::Error
						gameover
						break
				end

			end

		sleep(TIME_CHAR) 
	end
end

# start 
# rules
launch