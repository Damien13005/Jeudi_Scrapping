require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'




PAGE_URL = "http://mon-incubateur.com/site_incubateur/incubateurs"

def incubator
    #création des tableaux de données nom, code postal et site internet
    incubator_name = [] 
    incubator_zipcode = []
    incubator_website = []
     #création du hash
    my_hash = Hash.new

    page = Nokogiri::HTML(open(PAGE_URL))

    i = 0

    #scrapping des données nom des incubateurs
    page.css('tr td p span a').each do |name|
        incubator_name << name.text.to_s 
 
    end

    
    page.css("tr td p span a").each do |link|
   #scrap des sites internet
        incubator_website << " http://mon-incubateur.com" + link['href'].to_s + " "
    
    end

    zip = page.css("tr td p a[2]").text.to_s #scrap des données code postal
        binding.pry
        zip.each do |z| #scrap des sites internet
        incubator_zipcode << z.text
        binding.pry

    end


    size = incubator_name.length
    while i < size do #boucle pour ranger tableaux dans le hash
        my_hash[i][:name] = "#{incubator_name[i]}"
         my_hash[i][:zipcode] = "#{incubator_zipcode[i]}"
        my_hash[i][:website] = "#{incubator_website[i]}"
        i += 1 #évolution indice du hash
        my_hash << my_hash[i]
    end
    puts my_hash

end

incubator
