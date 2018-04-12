# Jeudi_Scrapping
Exercices de scrapping du jeudi 12 avril 2018

Exécutés par Audrey Couture de la Team West Coast Marseille
============================================================
Pour mes correcteurs:

a. Route de la mairie
===> Donne le résultat en hashs sur votre terminal et enregistre un fichier texte de ces résultats dans votre dossier.

b. Trader de l'obscur
===> Donne les cours dans une array de hashs et les enregistre dans un fichier hordaté. Une update est faite toutes les heures.


c. Route des incubateurs
===> Donne le nom, le site et l'arrondissement des incubateurs et enregistre les information dans un fichier.


***CONSIGNES***

a. Route de la mairie

Le CEO de get-email-corp a besoin encore de tes services. Il voudrait toutes les adresses email des mairies du Val d'Oise. Quelle coincidence, tu viens d'apprendre à le faire. Va sur cet annuaire des mairies et va récupérer les adresses emails des mairies du Val d'Oise.

Tout d'abord, écris une méthode get_the_email_of_a_townhal_from_its_webpage qui, comme son nom l'indique, récupère l'adresse email à partir de l'url d'une mairie, par exemple celle de Vauréal
Ensuite, écris une méthode get_all_the_urls_of_val_doise_townhalls qui, comme son nom l'indique, récupère toutes les url de villes du Val d'Oise. C'est recommandé de le faire de cette page web
Tu n'as plus qu'à recoller les méthodes ensemble et à toi la gloire
BONUS : c'est quand même recommandé d'enregistrer les urls dans un hash propre du genre { :name => "nomDeLaVille", :email=> "ville@machin.chose" } pour que le CEO de get-email-corp ne soit pas trop perdu


b. Trader de l'obscur

Lehman Brothers, impressionné par tes algorithmes de trading de la dernière fois, veut faire encore appel à toi. Leur Chief Digital Officer, très hype, a entendu parler au JT de TF1 d'un "truc révolutionnaire qui s'appelle je crois le bloque chienne" et voudrait du coup cnnaître le cours des cryptomonnaies.

Va sur CoinMarketCap et fait un programme qui va récupérer le cours de toutes les cryptomonnaies, et les enregistrer bien proprement dans une array de hashs.

BONUS : fais en sorte que ton programme tourne en boucle, et prenne lex taux toutes les heures


c. Route des incubateurs

Le CEO de get-email-corp aimerait beaucoup aller dans un incubateur, un lieu très stylé où les startups prospèrent. Il fait donc appel à tes services pour récupérer une belle liste d'incubateurs.

Ta mission va légèrement changer, puisque tu vas devoir trouver toi-même un site qui recense une grande liste d'incubateurs en France, puis tu vas devoir utiliser Nokogiri pour récupérer :

le nom de l'incubateur
le code postal
un petit site internet
Cet exercice te demandera d'aller voir quelques annuaires, et de travailler sur celui qui te semble le mieux.



