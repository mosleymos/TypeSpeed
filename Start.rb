# Ecran de depart
#Fonction d'affichage de l'ecran titre
def start 
	puts "Type Speed"
end 

start

# Affichage regles du jeu

puts "Type Speed est un jeu de réflexes :\n
	tapez les lettres dès qu'elles apparaissent.\n 
	Vous diposez de 20 secondes pour saisir la lettre.\n
	La partie est perdue en cas d'erreur de saisie ou si le temps est dépassé."
	


#Lancement du jeu - confirmation jouer
def launch
	puts "Voulez vous lancer la partie ? [Y/n]"

	if player_choice =="Y" || player_choice == "y" 
		launch2
 	else 
		
 	end
end 



# Jeu



#Ecran resultat