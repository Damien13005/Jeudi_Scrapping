require 'rubygems'
require 'nokogiri'
require 'open-uri'

def cryptocurrencies_price

	while 1 == 1 do   #On crée une boucle infini pour une update automatique

		page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) #on va diriger Nokogiri vers la page coin marketcap 

		name_list = page.css('a.currency-name-container') #On scrappe et réuni en tableau l'ensemble des noms de cryptomonnaies
		price_list = page.css('a.price') #On scrappe et réuni en tableau la liste de prix 

		#on crée un nouveau Hash, dans lequel on va stocker le nom des coins et le prix associé
		stocks = Hash.new 


		#On crée une boucle for qui commence à 0 et se termine à name_list.length-1 : la longueur de notre tableau
		#On va faire prendre à notre hash à chaque fois l'entrée : nom coin ==> prix coin

		for i in 0 .. (name_list.length-1)
			stocks[name_list[i].text] = [price_list[i]['data-usd']] 
		end

		#0n affiche le résultat, on l'enregistre en fichier texte
		#et on temporise la prochaine update d'une heure
		puts stocks
		File.open("Stocks_" + Time.now.to_s + ".txt", "a").write(stocks)
		puts "-------------sleeping 1h--------------------------------"
		sleep(3600)
	end

end

cryptocurrencies_price
