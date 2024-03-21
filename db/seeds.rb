# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
date = Date.today

User.destroy_all
puts "Destroy des users : OK !"
Furniture.destroy_all
puts "Destroy des meubles : OK !"
Accessory.destroy_all
puts "Destroy des fabrications : OK !"
Realisation.destroy_all
puts "Destroy des réalisations : OK !"

# ---------SEED DES USERS -----------

puts "Création des users"
aymard = User.create!(email: "aymard@atelier-plinguet.fr", password: "Bricorigolo40", role: "admin")
tanguy = User.create!(email: "tanguy@atelier-plinguet.fr", password: "Bricorigolo40", role: "admin")

puts "Seed des users : OK !"

# ---------- SEED DES MEUBLES -----------

puts "Starting seed des meubles"

furniture01 = Furniture.create!(name:"Chloé", material: "Bois", color: "Bleu Hague blue", type_of_furniture: "Enfilade", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "La semaine dernière, l'atelier Plinguet a eu le plaisir de travailler à Paris sur une superbe enfilade scandinave des années 60. Le propriétaire de ce meuble l'avait chiné sur le site Selency qui regorge de pépites pour que nous le restaurions à son goût. De nombreuses heures de travail ont permis de lui donner une seconde jeunesse. Un papier peint intissé au motif floral dans les parties secrétaires ainsi que le bleu Hague Blue de chez Farrow&ball ont permis de rapporter cette sublime enfilade dans notre siècle ")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "2022-03-21")

furniture02 = Furniture.create!(name:"Chantal", material: "Bois", color: "Vert Cardoom green", type_of_furniture: "Bahut", varnish: "", varnish_brand: "", teint: "Dorée", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "En ce début de mois, nous avons restauré un très joli bahut deux portes pour une cliente Landaise. À la base revêtu d'une teinte chêne foncée très en vogue à l'époque mais moins tendance aujourd'hui, le bahut a été entièrement décapé. Ses pieds, ont été supprimés pour apporter plus de simplicité au meuble, tout comme l'entrée de clé qui ne demandait qu'à être modernisée. Apres quelques réparations sur le bois, et un changement de serrure, notre cliente a opté pour un mélange bois teinte doré et vert #cardroomgreen de chez Farrow and Ball et franchement on adore le résultat!")
#varnish: "", varnish_brand: "", teint: "Teinte dorée", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture2 = Furniture.create!(name:"Anna", material: "Bois", color: "Bleu nuit", type_of_furniture: "Commode", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Restauration : Commode restaurée dans les tons bleu nuit avec poignées cuivrées pour un design chic et épuré")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "", poignées : "Cuivrées")

furniture3 = Furniture.create!(name:"Suzanne", material: "Bois", color: "Vert", type_of_furniture: "Mini-bar", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Restauration : bar vintage des années 60 sur roulettes, restauré et remis au goût du jour dans deux tons de vert.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture4 = Furniture.create!(name:"Ava", material: "Bois", color: "Vert d'eau", type_of_furniture: "Coffre à jouets", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Restauration : Coffre à jouets entièrement en bois, restauré dans les tons vert d'eau et bois pour un rendu doux et naturel.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture5 = Furniture.create!(name:"Armelle", material: "Bois", color: "Bleu Cobalt", type_of_furniture: "Table", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "À la demande d'une cliente, l'atelier Plinguet a transformé un vieux meuble à machine à coudre en petite table. Son bleu cobalt et ses détails en laiton, donnent du chic à ce basique qui a trouvé sa place dans un appartement bordelais.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture6 = Furniture.create!(name:"Emma", material: "Bois", color: "Vert", type_of_furniture: "Meuble à chaussures / commode", varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "", description: "Cette pépite dénichée il y a deux semaines est un superbe meuble à chaussures très recherché de style pierre Guariche. Il peut également servir de petite commode. Arrivé dans un état assez catastrophique à l'atelier, il a fallu travailler sans relâche pour lui offrir une deuxième jeunesse. Revêtu d'un très joli vert, ce meuble à 4 tiroirs et poignées dorées apportera une touche design à votre intérieur.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture7 = Furniture.create!(name:"Clémence", material: "Bois", color: "Bleu velours", type_of_furniture: "Secrétaire", varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "", description: "Cette semaine, pour une cliente qui cherchait un meuble pratique pour travailler et ranger quelques affaires dans sa chambre, l'atelier est parti chiner ce secrétaire des années 60 et lui a refait une beauté. Gros coup de coeur pour ses nouvelles poignées en cuir qui se marient parfaitement avec le bleu choisi par notre cliente.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture8 = Furniture.create!(name:"Philippa", material: "Bois", color: "Bleu velours", type_of_furniture: "Semainier", varnish: "", varnish_brand: "", teint: "Chêne doré", paint_brand: "", date_of_manufacture: "", description: "Aujourd'hui à l'atelier Plinguet, un client nous a confié la restauration d'un semainier espagnol.
Après quelques jours de travail, le meuble n'est plus le même ! Son brun sombre a laissé place à une teinte de chêne dorée beaucoup plus lumineuse et actuelle, qui, associée à un bleu velours, donne un rendu que l'on affectionne particulièrement 👍🏼. Cette pièce est repartie dans un maison landaise où elle trouve parfaitement sa place ✔️.")

furniture9 = Furniture.create!(name:"Louise", material: "Bois", color: "", type_of_furniture: "Meuble de toilette", varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "", description: "Voici une nouvelle pièce sortie de l'atelier. Cet ancien meuble de toilette utilisé dans les années 1900 est arrivé à l'atelier la semaine dernière. Après pas mal d'heures de travail, il est reparti pour une deuxième jeunesse. Bonne nouvelle, Louise est disponible à l'adoption. En table d'appoint, bureau ou meuble de salle de bain, il trouvera une place dans n'importe quel intérieur.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")
#varnish: "", varnish_brand: "", teint: "Chêne doré", paint_brand: "", date_of_manufacture: "")

furniture11 = Furniture.create!(name:"Holly", material: "Bois", color: "Vert Céladon", type_of_furniture: "Semainier", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "L'Atelier Plinguet s'exporte aussi. À la demande d'une cliente américaine habitant la région Landaise, nous avons refait 2 semainiers en vert céladon avec quelques dorures pour leur donner un look rétro. Souhaitant en faire des tables de nuit, les pieds ont été rabaissés pour que ces deux semainiers puissent prendre place de chaque côté du lit.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture12 = Furniture.create!(name:"Emma", material: "Bois", color: "", type_of_furniture: "Meuble à chaussure", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Cette semaine, c'est le deuxième meuble à chaussures Emma qui était disponible à l'adoption qui quitte l'atelier. Ce meuble recherché de style pierre Guariche reste dans la région puisqu'il rejoint une bergerie Landaise. Transformé en commode pour une chambre d'enfant, ses tons dégradés s'harmonisent parfaitement avec la déco de notre client.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture13 = Furniture.create!(name:"Victoria", material: "Bois", color: "Bleu velours", type_of_furniture: "Commode", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Depuis dix jours, l'atelier Plinguet s'est délocalisé à Paris pour restaurer des meubles directement chez ses clients. La commode Victoria était dans un sale état à notre arrivée. Quelques réparations de tiroirs après, un gros travail de ponçage et de peinture, suivis d'un changement de boutons ont permis de rendre cette commode basique beaucoup plus moderne!")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture14 = Furniture.create!(name:"Prune", material: "Bois", color: "Vert kaki", type_of_furniture: "Bureau d'écolier", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "En ce début de semaine, à l'atelier nous sommes repartis à l'école, pour une cliente parisienne qui cherchait pour ses filles un bureau d'école vintage. C'est à l'école de Bias dans les Landes que nous avons trouvé son bonheur : un bureau des années 50. Nous l'avons décapé, restauré le bois qui comportait les marques de ces dernières années et surtout repeint dans un vert qui tire vers le kaki, pour offrir de la modernité à ce bureau.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture20 = Furniture.create!(name:"Louison", material: "Bois", color: "Rouge Terracotta", type_of_furniture: "Confiturier", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Le confiturier était un des meubles préférés de ma grand mère. À l'époque je le trouvais imposant, trop sombre et sans intérêt. Aujourd'hui, je vois tout le potentiel de ce meuble. Quel joie de retomber sur un similaire à celui de chez ma grand mère. Ce confiturier en chêne massif pese son poids. Il a fallu beaucoup d'efforts pour le ramener dans notre époque, mais revêtue de cette peinture Rouge Terracotta respectueuse de l'environnement avec son bouton laitonné et texturé, il sera parfait dans une entrée, ou un séjour.")


furniture16 = Furniture.create!(name:"Louisa", material: "Bois", color: "Rouge Terracotta", type_of_furniture: "Commode", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Voici une nouvelle restauration de l'atelier Plinguet, une commode à l'aspect très « basique » qui après ponçage, réparation de tiroirs cassés et mise en peinture retrouve de sa superbe ! Ce rouge Terracotta de chez Farrow&Ball apporte une touche moderne qui s'allie parfaitement avec les poignées laitonnées.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture17 = Furniture.create!(name:"Rose", material: "Bois", color: "Lin velours", type_of_furniture: "Armoire", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Et voici la première restauration de l'atelier Plinguet pour cette année 2022. Lorsque l'on a vu arriver cette armoire asymétrique dans notre atelier, on s'est dit 2 choses. La première: qu'il y avait un travail de titan à réaliser dessus tant de pièces étaient à changer. La seconde : que malgré son look actuel, cette armoire vintage avait un potentiel énorme ! Avec un nouveau placage, un changement de serrure, la réparation de 3 tiroirs, un décapage plus que compliqué pour certaines zones et surtout avec une teinte couleur lin velours magnifique, un changement de poignées et d'entrée de clés, cette armoire vintage revient directement dans notre siècle pour enjoliver la chambre d'un enfant.") 
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture18 = Furniture.create!(name:"Eva", material: "Bois", color: "Bleu Nîmes", type_of_furniture: "Buffet", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "La semaine dernière, l'atelier Plinguet a travaillé sur la restauration d'un buffet Parisien vintage. Apres un décapage intensif pour le dévêtir de sa peinture glycéro blanche, puis un traitement du bois, le buffet arbore dorénavant un magnifique bleu de Nimes de chez Farrow&Ball, qui est en réalité un sublime gris/bleu.
Son plateau et ses étagères ont eux été laissés bruts puis vernis pour les protéger dans le temps. Enfin de nouvelles poignées complètent son look pour ramener cette pièce vintage à notre époque.") 
#varnish: "Incolore", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")


furniture21 = Furniture.create!(name:"Sofia", material: "Bois - chène massif", color: "Red Earth", type_of_furniture: "Confiturier", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Cette semaine nous vous avons chiné un vieux confiturier vintage comme on les aime! À la base dans une teinte blanc cassé assez abimé, nous avons décidé après avoir effectué un travail sur le bois de le repeindre dans la teinte Red Earth de chez @farrowandball .
C'est donc dans cette nouvelle couleur et avec de nouvelles poignées que ce confiturier devient un meuble ultra tendance.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")


furniture22 = Furniture.create!(name:"Philippa", material: "Bois", color: "", type_of_furniture: "Commode", varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "", description: "Cette commode est arrivée à l'atelier dans un bien piteux état. Initialement pourvue d'un rose bonbon plus qu'écaillé, d'un seul bouton central par tiroir et surtout de long pieds sculptés style Louis XV, nous avons décidé de changer totalement son style pour en faire une commode pour enfant.
Apres un décapage, une réparation du bois à certains endroits, nous avons changé le piétement, pour en fabriquer un en pieds compas teinte acajou, cela a pour but de rabaisser le meuble et de faire ressortir son nouveau rose poudré.
Ultime détail de nouvelles poignées en laiton disposées en chevrons pour parfaire son style.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture23 = Furniture.create!(name:"Paulina", material: "Bois", color: "Vert Rivage", type_of_furniture: "Meuble box tv", varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "", description: "A l'atelier cette semaine nous avons cherché pour un client un tout petit meuble pour cacher sa box internet. Il y avait deux contraintes à respecter pour cette commande : la taille, pas plus de 40 cm de large et de profondeur, et l'ouverture, la box a besoin d'air pour ne pas surchauffer.
Alors quand on a chiné cette petit table de nuit avec son marbre qui pouvait aussi servir de meuble d'appoint, on s'est dit que c'était parfait! Après avoir découpé la porte, pour y incruster du canage afin de laisser la box respirer, nous avons traité le meuble contre les insectes xylophages, puis préparé pour la mise en peinture ce meuble. C'est sur le vert rivage que se porte le choix du client, et à l'atelier on trouve qu'avec le marbre et le canage c'est très réussi! Dernière étape de cette restauration, nettoyer ce beau marbre en profondeur et le récoler pour éviter toute casse possible.")
#varnish: "incolore", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture24 = Furniture.create!(name:"Raphaëlle", material: "Bois", color: "Vert Rivage
", type_of_furniture: "Bahut", varnish: "", varnish_brand: "", teint: "", paint_brand: "Envie", date_of_manufacture: "", description: "Aujourd'hui à l'atelier, nous avons chiné un nouveau bahut parisien dans l'idée d'en faire un meuble ultra design après avoir décapé, et repeint toute la structure du meuble dans un vert rivage de chez #envie sauf le plateau que nous avons passé au vernis incolore pour le protéger. Nous avons tapissé le fond du meuble avec un papier peint style « savane » sur les tons de gris qui contraste parfaitement avec le vert. Enfin pour donner du cachet à ce meuble, nous avons découpé les panneaux des portes pour les remplacer par du canage qui termine cette restauration en donnant un style unique à ce bahut parisien")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "Envie", date_of_manufacture: "")

furniture25 = Furniture.create!(name:"Jade", material: "Bois - pin", color: "Gris bleu", type_of_furniture: "Bahut", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "En ce mois janvier, l'atelier Plinguet vous présente ses voeux ainsi que ce nouveau bijou. Jade est un bahut avec deux portes qui a bien souffert durant son passé. De nombreux petits habitants xylophages ont apprécié son bois. L'atelier a passé beaucoup de temps sur l'assainissement du meuble et sa reconstruction. De nombreuses heures ont été passés à traiter et réparer les dégâts causés par les vrillettes.
Aujourd'hui, nous avons un magnifique bahut à deux portes, peint dans un gris bleu de chez @farrowandballfr , avec un plateau et un intérieur en pin qui font ressortir cette magnifique teinte. De nouvelles poignées terminent cette restauration pour parfaire le résultat.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture26 = Furniture.create!(name:"Paula", material: "Bois", color: "Gris bleu", type_of_furniture: "Commode", varnish: "Bois noyer", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "En ce mois janvier, l'atelier Plinguet vous présente ses voeux ainsi que ce nouveau bijou. Jade est un bahut avec deux portes qui a bien souffert durant son passé. De nombreux petits habitants xylophages ont apprécié son bois. L'atelier a passé beaucoup de temps sur l'assainissement du meuble et sa reconstruction. De nombreuses heures ont été passés à traiter et réparer les dégâts causés par les vrillettes.
Aujourd'hui, nous avons un magnifique bahut à deux portes, peint dans un gris bleu de chez @farrowandballfr , avec un plateau et un intérieur en pin qui font ressortir cette magnifique teinte. De nouvelles poignées terminent cette restauration pour parfaire le résultat.")
#varnish: "", varnish_brand: "", teint: "Vernis bois noyer", paint_brand: "", date_of_manufacture: "")

furniture27 = Furniture.create!(name:"Lola", material: "Bois - Pin", color: "Banc crème", type_of_furniture: "Bahut", varnish: "Incolore", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Nous avons chiné dernièrement un bahut en pin assez commun. L'idée était de changer l'utilité de ce meuble. La personne chez qui nous l'avions acheté s'en servait de vaisselier. Apres l'avoir décapé entièrement, nous avons décidé d'enlever les portes pour en faire un bahut ouvert. Apres avoir choisi ce blanc crème de chez Farrow&ball, nous avons laissé sa teinte naturelle au plateau et à l'étagère, que nous avons passée au vernis incolore afin de les protéger. L'association de ces deux couleurs avec ses nouvelles poignées rendent ce meuble unique. Il peut aussi bien séjourner dans un salon, une salle à manger, une entrée ou bien une cuisine et ça c'est quand même pratique")
#varnish: "Incolore", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture30 = Furniture.create!(name:"Simone", material: "Bois - pin", color: "Rose boréal", type_of_furniture: "Commode", varnish: "Mat", varnish_brand: "Libéron", teint: "", paint_brand: "Envie", date_of_manufacture: "", description: "Aujourd'hui c'est une commode qui est passée à l'atelier pour un relooking.
Cette commode en pin pouvait paraitre « basique », mais était plutôt en bon état, donc le travail a été moins important que d'habitude. Aussi, nous avons décidé de lui donner plus d'originalité, en y appliquant la teinte « rose boréal » de chez #enviepeinture, mais uniquement sur l'intérieur de la façade des tiroirs et sur les côtés du meuble. Le plateau lui a été protégé au vernis mat de chez @liberon_officiel.
Les poignées d'origine qui étaient en bois, ont été remplacées par de jolies poignées laitonnées. On apprécie également sa grande capacité avec ses 6 tiroirs.")
#varnish: "Mat - Libéron", varnish_brand: "", teint: "", paint_brand: "Envie", date_of_manufacture: "")

furniture28 = Furniture.create!(name:"Adriana", material: "Bois", color: "Vert de gris
", type_of_furniture: "Meuble de rangement",varnish: "", varnish_brand: "", teint: "", paint_brand: "Envie", date_of_manufacture: "" , description: "Adriana était un petit meuble de machine à coudre qui avait été transformé par son ancien propriétaire en meuble de télévision. Un plateau sur glissière avait été rajouté pour rehausser le meuble et permettre à la télévision de se déporter. A l'atelier nous avons choisi d'en faire un meuble de rangement. Glissière et rehausse du plateau ont été déposées. Pour la teinte nous avons choisi un très beau vert de gris, et une poignée laitonné vient sublimer la couleur.
Adriana a rejoint son environnement pour le plus grand plaisir de son propriétaire.")
#)

furniture31 = Furniture.create!(name:"Matilda", material: "Bois", color: "Vert Kaki", type_of_furniture: "Bahut", varnish: "Incolore", varnish_brand: "Libéron", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Une fois n'est pas coutume, un client a flashé sur le bahut Raphaëlle que nous avions refait et vendu il y a quelques mois.
Il nous a demandé de lui en trouver un autre et de le restaurer en vert kaki.
C'est chose faite !
Après avoir chiné le bahut, démonté, poncé, réparé, enlevé les panneaux de portes et les remplacés par du cannage, nous avons appliqué un magnifique vert kaki de chez @farrowandball et un couche de vernis incolore @liberon_officiel pour protéger le bois brut.")
#)

furniture32 = Furniture.create!(name:"Luna", material: "Bois", color: "Blanc glacier & Vert de gris", type_of_furniture: "Vaisselier", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Initialement Luna était le haut d'un vaisselier. Lorsque nous l'avons récupérée, on s'est dit que la partie haute et basse de ce vaisselier pouvaient faire 2 meubles à part entière.
Pour que cela soit possible, il nous a fallu rajouter des pieds en conservant le style du meuble, décaper à la machine le meuble, à la main les portes et leurs motifs et changer le plateau du haut qui était trop abimé.
Pour lui donner plus de style, une porte a été retirée pour créer cette niche. Pour les couleurs, c'est un blanc glacier de chez @farrowandball , et un magnifique vert de gris de chez @farrowandballfr que vous reverrez surement sur d'autres réalisations tant on l'aime!") 
#)

furniture33 = Furniture.create!(name:"Esther", material: "Bois", color: "Bleu nuit", type_of_furniture: "Commode", varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Cette commode typique des années 60 nous est arrivée dans son jus. Un gros travail de décapage et de ponçage a été nécéssaire pour enlever l'imposante couche de vernis et pouvoir ainsi lui donner cette jolie teinte bleu nuit de chez @farrowandball . Les pieds ont été changés pour des nouveaux plus modernes.
Les poignées sont d'origine et ont demandé un bon nettoyage pour retrouver leur brillance.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture34 = Furniture.create!(name:"Imany", material: "Bois", color: "Bleu Mystere", type_of_furniture: "Armoire", varnish: "", varnish_brand: "", teint: "", paint_brand: "Pure & Paint", date_of_manufacture: "", description: "Imany est une armoire très mignonne. Arrivée à l'atelier dans un vernis vieillissant couleur acajou qui ne lui allait pas spécialement, nous avons décidé de la changer d'époque ! Après un gros décapage, quelques réparations, et le changement des étagères, nous l'avons vêtue du très beau bleu « Mystère » de chez @pure_and_paint . Assortie à un très joli papier peint de la savane, Imany retrouve un cachet fou!")
#)

furniture35 = Furniture.create!(name:"Alma", material: "Bois", color: "Lin velours", type_of_furniture: "Meuble TV", varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "", description: "Cette semaine à l'atelier nous avons chiné un meuble assez atypique qui nous a bien plu. Apres avoir entièrement décapé cette petite merveille, et réparé ses tiroirs qui étaitent bien abimés. Nous avons choisi de peindre ce meuble dans une teinte très belle teinte Lin velours avec de nouvelles poignées et entrée de clé.
Le but étant de prendre une couleur s'accordant avec beaucoup d'autres pour permettre à ce meuble atypique qui peut servir de console, meuble tv, meuble d'enfant, petit meuble de rangement, et on en passe, de s'accorder dans beaucoup de pièces. Une chose est sûre, il aura sa place dans beaucoup de décos différentes")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture36 = Furniture.create!(name:"Thalia", material: "Bois", color: "Bleu Atlantide", paint_brand: "Colibri", varnish_brand: "", teint: "", type_of_furniture: "Bibliothèque", date_of_manufacture: "", varnish: "Laque écologique", description: "Attention transformation ! On avait chiné cette armoire, il y a quelque temps, et le moins que l'on puisse dire, c'est qu'il fallait se projeter… Il nous a fallu pas mal de travail pour la transformer en bibliothèque, mais le résultat en valait la peine ! Un grand merci à @colibripeinture qui nous a fourni de supers produits et peintures pour la transformation de ce meuble!")
#  )

furniture37 = Furniture.create!(name:"Christina", material: "Bois", color: "Blanc Albâtre", type_of_furniture: "Coffre", varnish: "", varnish_brand: "", teint: "", paint_brand: "Libéron", date_of_manufacture: "", description: "À l'atelier c'est un vieux coffre qui est passé entre nos mains cette semaine.
Il était sombre, avec des motifs de vitraux sur tout le coffre, cela avait son charme à l'époque mais aujourd'hui ce n'est plus trop le cas. C'est pourquoi nous avons décidé de le démonter entièrement pour le refaire à la sauce Atelier Plinguet. Une fois chaque pièce poncée afin de retrouver la couleur naturelle du bois qui entre nous est beaucoup plus douce et jolie, nous avons décidé de remplacer les vitraux par des panneaux simples mais mis en valeur par le blanc albâtre de chez @liberon_officiel . Ainsi le coffre change d'époque, et s'adaptera parfaitement dans son nouvel environnement.")

furniture39 = Furniture.create!(name:"Rita", material: "Bois", color: "Soir de Sienne", type_of_furniture: "Meuble de rangement", varnish: "Chêne", varnish_brand: "Libéron", teint: "Chêne", paint_brand: "Pure & Paint", date_of_manufacture: "", description: "Arrivé à l'atelier dans un état déplorable, ce meuble de machine à coudre était bon pour la déchetterie. Le plateau, ou encore les portes ont subi de très très gros dégâts dont des coups de scie des anciens propriétaires. Il aura fallu de nombreuses heures de travail pour enlever le mécanisme rouillé supportant la machine à coudre, remplacer le plateau par un nouveau, et reboucher tous les trous qui avaient été faits dans les portes, mais cela en valait la peine. Nous avons immédiatement perçu le charme que pourrait avoir ce meuble une fois restauré, et nous ne sommes pas déçus d'y avoir passé du temps!
Habillé de la superbe teinte « soir de sienne » de chez @pure_and_paint , et d'une teinte chêne moyen de chez @liberon_officiel pour le plateau, les poignées et les pieds, ce meuble retrouve de sa superbe! Il est beau, unique, atypique et surtout il pourrait trouver sa place dans n'importe quelle pièce de la maison. Bref c'est un vrai coup de coeur pour l'atelier!")

furniture40 = Furniture.create!(name:"Lou", material: "Bois", color: "Vert Rivage
", type_of_furniture: "Bahut", varnish: "Incolore", varnish_brand: "Libéron", teint: "Naturelle", paint_brand: "Envie", date_of_manufacture: "", description: "Lou est un superbe bahut comme on les aime.
Arrivé peint avec une couche plus qu'épaisse de peinture glycero saumon, il a fallu de nombreuses heures de ponçage pour le dénuder entièrement et révéler sa magnifique essence.
Les parties trop abimées ont été remplacées, les pieds refait sur mesure. Pour ce qui est de la teinte, nous avons choisi de lui laisser sa teinte naturel sur l'extérieur (protégé par un vernis de chez @liberon_officiel ) et le peindre en vert rivage de chez envie.") #)

furniture41 = Furniture.create!(name: "Manon", type_of_furniture: "Commode", material: "Bois", teint: "Chêne moyen", paint_brand: "Libéron", color: "Blanc albâtre", description: "Découvrez notre dernière pièce restaurée à l’atelier : une superbe commode vintage au charme intemporel. Avec ses pieds compas caractéristiques, elle incarne l’élégance. Nous avons choisi le blanc Albâtre éclatant de chez @liberon_officiel pour lui redonner fraîcheur et luminosité, tout en préservant son caractère d’antan avec une touche de teinte chêne moyen également de chez @liberon_officiel .
Cette commode restaurée apportera une touche d’authenticité et de caractère, tout en offrant une praticité indéniable avec ses tiroirs spacieux et fonctionnels. Un véritable bijou vintage qui rejoint la maison de Nadine.", varnish: )

puts "Seed des meubles : OK !"

# -------- Seed des accessories -------------- 

puts "Starting seed des accessoires"

accessory1 = Accessory.create!(name: "Mona", color: "Blanc tout court", paint_brand: "Envie", material: "Bois", type_of: "Lampe", description: "Création de atelier plinguet pour une commande client.Une structure réalisée en assemblage de bois avec découpes et courbes travaillées. Recouverte un enduit de lissage et peint selon les désirs du client.")

accessory2 = Accessory.create!(name: "Lou", type_of: "Applique", color: "Noir fusain", paint_brand: "Envie", description: "Création de l'atelier Plinguet pour une commande client. Lot de deux appliques en bois effet métal, avec vitre en Plexiglas, et ampoule Led à filament vintage.", material: "Bois")

accessory3 = Accessory.create!(name:"Eliza", material: "Cuivre & Bois - Pin", color: "", type_of: "Console", varnish: "Mat", varnish_brand: "Libéron", tint: "Chêne doré", paint_brand: "", description: "Création de l'atelier plinguet pour une commande client.
Une console toute en cuivre, avec luminaire intégré et tablettes en pin des Landes.
Design épuré, cette pièce unique a trouvé refuge dans une belle maison Arcachonnaise.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "")

accessory4 = Accessory.create!(name: "Hélène", type_of: "Porte-serviette", varnish: "Incolore mat", varnish_brand: "3v3", material: "Cuivre et Bois", description: "Cette semaine à l'atelier, nous avons créé un porte serviette à la demande d'une cliente. Les couleurs du cuivre et du bois s'harmonisent parfaitement avec le sol en travertin de la salle de bain de notre cliente. Si cette pièce vous plait, n'hésitez pas à nous envoyer un DM pour plus d'informations, l'atelier peut la reproduire sur demande et sa taille est ajustable.")

accessory5 = Accessory.create!(name: "Augusta", type_of: "Chaise", varnish: "Brillant - métal", varnish_brand: "Libéron", description: "Création de l'atelier Plinguet pour une commande client. Magnifique fauteuil en cuivre aux lignes épurées et au designe original.", material: "cuivre")

accessory6 = Accessory.create!(name:"Camille", material: "Cuivre & Bois", color: "Blanc écru", type_of: "Console", varnish: "Brillant - métal", varnish_brand: "Libéron", tint: "", paint_brand: "Farrow & Ball", description: "Voici une nouvelle création de l'atelier. Cette semaine, nous avons travaillé sur une superbe console en cuivre et bois de couleur blanc écru. Son design élégant et épuré nous plait vraiment beaucoup! Bonne nouvelle cette pièce est disponible à l'adoption.")
#varnish: "", varnish_brand: "", teint: "", paint_brand: "")

accessory7 = Accessory.create!(name: "Nicole", material: "Bois", type_of: "Lampadaire", varnish: "Incolore - mat", varnish_brand: "v33",description: "Nouvelle création de l'atelier. Pour une cliente bordelaise, nous avons dessiné et fabriqué 2 lampadaires en bois. Pour obtenir ce résultat, il a fallu réaliser un assemblage de 10 planches de contreplaqués collées entre elles en y incorporant 2 ouvertures qui apportent une touche de légèreté. Il y a eu pas mal de travail de ponçage pour arriver à un rendu aussi lisse et harmonieux.")

accessory8 = Accessory.create!(name:"Nona", material: "Bois", color: "Pitch Black n°256", type_of: "Table basse", varnish: "Incolore - Mat", varnish_brand: "Libéron", tint: "", paint_brand: "Farrow & Ball", description: "Aujourd'hui nous ne parlerons pas de restauration mais de fabrication avec cette commande qui sort de l'atelier.
Réalisée pour une cliente bordelaise, cette grand table basse est un assemblage d'une trentaine de tasseaux en pin, sapin et chêne. Il s'agit uniquement de bois de récupération, issu de palettes et de chutes d'autres projets…
Les pieds sont également réalisés en bois et peints en noir donnant l'illusion de pieds métalliques.
Après de nombreuses heures de découpage, dégauchissage rabotage de chaque tasseau, puis d'assemblage et bien évidemment de ponçage, le plateau est passé au vernis bistrot de chez @liberon_officiel pour une protection totale dans le temps!
C'est le genre de projet que l'on adore, respectueux de l'environnement, avec un objectif de réduction de déchets. D'autres modèles devraient suivre, avec différents pieds, mais surtout différents plateaux, c'est ça qui est bien aussi avec la récup, il n'y aura donc jamais 2 fois la même table ;)")
#varnish: "Vernis bistrot - Libéron", varnish_brand: "", teint: "", paint_brand: "")

puts "Seed des accessoires : OK !"


# ----------- Seed des réalisations -----------

puts "Starting seed des réalisations"

realisation1 = Realisation.create!(name:"Alma", color: "Vert livid", type_of_realisation: "Bibliothèque sur mesure", varnish: "", varnish_brand: "", tint: "", paint_brand: "Little Green", date_of_realisation: "", localisation: "Paris", description: "Bibliothèque sur mesure Alma 📚📚
On était plutôt discret dernièrement, c'est parce l'atelier s'est exporté à Paris pour travailler sur la conception d'une bibliothèque sur mesure dans un appartement hausmanien. Au programme meuble design arrondi avec pliage de bois. Toute la fabrication a été faite sur place. Pour la peinture, on a choisi avec l'aide de @nelscouleurs , la superbe teinte #Livid de chez @littlegreene.fr @littlegreenepaintcompany .
Le reste de la rénovation de l'appartement à été effectué par le talentueux @antinomik_design .")
#)

realisation2 = Realisation.create!(name: "Le Friedland", localisation: "Paris", type_of_realisation: "Décoration murale", date_of_realisation: date, description: "Depuis 3 semaines, l'atelier Plinguet s'est lancé dans un nouveau projet, la modernisation d'éléments d'un bistrot Parisien. Au programme la restauration de 26 tables de bistrot! À la base teintées en bois noir, il a fallu de nombreuses heures de décapage et ponçage pour retrouver la belle teinte initiale et les veines du bois. Le tout a été vernis avec une finition spéciale bistrot pour résister aux nombreux clients qui utiliseront ces tables. L'atelier a également restauré un vieux meuble de service dans des teintes de bois doré et la superbe couleur #inchyra de chez Farrow&ball. Enfin, nous avons procédé à la création d'un élément de déco murale alliant coffrage en bois peint dans cette même teinte Inchyra, flocage en contreplaqué réalisé à la découpe laser et ampoules design pour un rendu vraiment sympa!")

puts "Seed des réalisations : OK !"

# ------------ URL des meubles -------------

lilas = 'https://www.campingsgrandsud.fr/wp-content/uploads/2019/04/foret-des-landes.jpg'

puts "Starting seed des url furnitures"

thalia1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999814/Atelier%20Plinguet/thalia-1-bibli_yks6q2.jpg"
thalia2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234815/Atelier%20Plinguet/thalia-2-bibliotheque_y71wmi.png'

luna1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999056/Atelier%20Plinguet/luna-1-vaisselier_tin257.jpg'
luna2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999841/Atelier%20Plinguet/luna-2-vaisselier_xflobn.jpg'
luna3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999036/Atelier%20Plinguet/luna-3-vaisselier_v1uuz6.jpg'


mathilda1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999825/Atelier%20Plinguet/matilda-1-bahut_tyzsxt.jpg'
mathilda2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999834/Atelier%20Plinguet/mathilda-2-bahut_wb7gsk.jpg'
mathilda3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999834/Atelier%20Plinguet/matilda-3-bahut_ce4o6k.jpg'

lou1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999805/Atelier%20Plinguet/lou-1-bahut_eurmju.jpg'
lou2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999055/Atelier%20Plinguet/lou-2-bahut_zlqsuo.jpg'

imany1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999861/Atelier%20Plinguet/imany-1-armoire_rp8jc1.jpg'
imany2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999050/Atelier%20Plinguet/imany-2-armoire_sd38rl.jpg'
imany3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999040/Atelier%20Plinguet/imany-3-armoire_livzpj.jpg'
imany4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999047/Atelier%20Plinguet/imany-4-armoire_lkmojv.jpg'

adriana1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710998997/Atelier%20Plinguet/adriana-1-meuble_j5yvtq.jpg'

esther1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999800/Atelier%20Plinguet/esther1-commode_wbtxqn.jpg'
esther2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234827/Atelier%20Plinguet/esther-2-commode_fcs4e3.png'
esther3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999799/Atelier%20Plinguet/esther-3-commode_scwn2j.jpg'
esther4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999055/Atelier%20Plinguet/esther-4-commode_ubcuga.jpg'
esther5 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234827/Atelier%20Plinguet/esther-2-commode_fcs4e3.png'

rita1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999801/Atelier%20Plinguet/rita-1-meuble_fgktmd.jpg'
rita2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999027/Atelier%20Plinguet/rita-2-meuble_yjea0g.jpg'
rita3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999025/Atelier%20Plinguet/rita-3-meuble_wgvjp6.jpg'

christina1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999041/Atelier%20Plinguet/christina-1-buffet_yetxi1.jpg'
christina2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234832/Atelier%20Plinguet/christina-2-buffet_ozixru.png'
christina3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234826/Atelier%20Plinguet/christina-3-buffet_x9dzji.png'

simone1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999018/Atelier%20Plinguet/simone-1-commode_j1rofu.jpg'
simone2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999035/Atelier%20Plinguet/simone-2-commode_c0qyxk.jpg'
simone3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999026/Atelier%20Plinguet/simone-3-commode_wccn4z.jpg'

alma1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999004/Atelier%20Plinguet/alma-1-meuble_twdlpj.jpg'
alma2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999006/Atelier%20Plinguet/alma-2-meuble_t3bfud.jpg'
alma3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999007/Atelier%20Plinguet/alma-3-meuble_yh6s2w.jpg'

lola1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999017/Atelier%20Plinguet/lola-1-bahut_sctghc.jpg'
lola2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999842/Atelier%20Plinguet/lola-2-bahut_ecyngl.jpg'
lola3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999807/Atelier%20Plinguet/lola-4-bahut_vtnmgr.jpg'
lola4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999842/Atelier%20Plinguet/lola-5-bahut_u8fiol.jpg'

paula1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999881/Atelier%20Plinguet/paula-1-commode_wjwkrr.jpg'
paula2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999879/Atelier%20Plinguet/paula-2-commode_wj6vtg.jpg'
paula3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999887/Atelier%20Plinguet/paula-3-commode_xugurl.jpg'

jade1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999858/Atelier%20Plinguet/jade-1-bahut_ggusoa.jpg'
jade2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999854/Atelier%20Plinguet/jade-2-bahut_mzz6th.jpg'

raphaelle1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999873/Atelier%20Plinguet/raphaelle-1-bahut_rng0jh.jpg'
raphaelle2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999873/Atelier%20Plinguet/raphaelle-2-bahut_rprbgd.jpg'
raphaelle3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999819/Atelier%20Plinguet/raphaelle-3-bahut_dto2s8.jpg'
raphaelle4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999893/Atelier%20Plinguet/raphaelle-4-bahut_jjlls0.jpg'

pauline1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999849/Atelier%20Plinguet/pauline-1-meuble-box_nrwyte.jpg'
pauline2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999843/Atelier%20Plinguet/pauline-meuble-box_zfq7kz.jpg'

philippa1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999871/Atelier%20Plinguet/philippa-1-commode_phripy.jpg'
philippa2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999799/Atelier%20Plinguet/philippa-3-commode_osyz3e.jpg'
philippa3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999871/Atelier%20Plinguet/philiipa-2-commode_xcgiix.jpg'

louison1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234715/Atelier%20Plinguet/louison-1-confiturier_t4p5cf.png'
louison2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999795/Atelier%20Plinguet/louison-2-confiturier_cmxrfm.jpg'
louison3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999026/Atelier%20Plinguet/louison-1_dtreay.jpg'

sofia1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999822/Atelier%20Plinguet/meuble-netree-rose_j6vsal.jpg'
sofia2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999842/Atelier%20Plinguet/meuble-entree-2-rose_kk5p68.jpg'
sofia3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234808/Atelier%20Plinguet/sofia-3-confiturier_f9zvwj.png'
sofia4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234812/Atelier%20Plinguet/sofia-4-confiturier_x3pix2.png'

chloe1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999033/Atelier%20Plinguet/chloe-1-enfilade_bujgvs.jpg'
chloe2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234772/Atelier%20Plinguet/chloe-2-enfilade_fbp4t6.png'
chloe3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234774/Atelier%20Plinguet/chloe-3-enfilade_ltf46h.png'
chloe4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234809/Atelier%20Plinguet/chloe-4-enfilade_n33n60.png'
chloe5 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234782/Atelier%20Plinguet/chloe-5-enfilade_wifw9i.png'

eva1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999823/Atelier%20Plinguet/eva-1-commode_vezife.jpg'
eva2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999821/Atelier%20Plinguet/eva-2-commode_hnsptm.jpg'
eva3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234738/Atelier%20Plinguet/eva-3-commode_acwgkw.png'
eva4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234725/Atelier%20Plinguet/eva-4-commode_h3vb3z.png'
eva5 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234725/Atelier%20Plinguet/eva-before-1-commode_kujk6a.png'

rose1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234778/Atelier%20Plinguet/rose-1-armoire_f0w5uw.png'
rose2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234792/Atelier%20Plinguet/rose-3-armoire_e64j7n.png'
rose3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234816/Atelier%20Plinguet/rose-2-armoire_jfac7z.png'


chantal1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234729/Atelier%20Plinguet/chantal-1-bahut_bhaxyj.png'
chantal2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234745/Atelier%20Plinguet/chantal-2-bahut_ebgbdh.png'
chantal3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234793/Atelier%20Plinguet/chantal-3-bahut_pb6xr3.png'


emma1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234809/Atelier%20Plinguet/emma-1-meuble-chaussure_qvczbx.png'

holly1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234835/Atelier%20Plinguet/holly-1-semainier_xrdprt.png'
holly2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234819/Atelier%20Plinguet/holly-2-semainier_crdjbi.png'


philippa_semainier1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234814/Atelier%20Plinguet/philippa-1-semainier_hfxxte.png'
philippa_semainier2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234832/Atelier%20Plinguet/philippa-2-semainier_ixju9a.png'
philippa_semainier3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234732/Atelier%20Plinguet/philippa-3-semainier_ybbj9s.png'
philippa_semainier4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234729/Atelier%20Plinguet/philippa-4-semainier_md7peb.png'

clemence1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234805/Atelier%20Plinguet/clemence-1-secretaire_uonasa.png'
clemence2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234781/Atelier%20Plinguet/clemence-3-secretaire_pbn5bc.png'
clemence3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234828/Atelier%20Plinguet/clemence-2-secretaire_oz9cuu.png'

emma2_1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234802/Atelier%20Plinguet/emma2-1-meuble-chaussure_q5mmz6.png'
emma2_2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234792/Atelier%20Plinguet/emma2-2-meuble-chaussure_le3p4l.png'
emma2_3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234719/Atelier%20Plinguet/emma2-3-meuble-chaussure_atxa4h.png'
emma2_4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234722/Atelier%20Plinguet/emma2-4-meuble-chaussure_mhh6hs.png'

armelle1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234800/Atelier%20Plinguet/armelle-1-table_i1msfo.png'
armelle2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234835/Atelier%20Plinguet/armelle-2-table_lnwuly.png'

ava1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234728/Atelier%20Plinguet/ava-1-coffre_gfsngk.png'
ava2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234736/Atelier%20Plinguet/ava-2-coffre_oanljq.png'
ava3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234786/Atelier%20Plinguet/ava-3-coffre_yq50xi.png"


anna1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234726/Atelier%20Plinguet/anna-1-commode_t9fwfn.png'
anna2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234768/Atelier%20Plinguet/anna-2-commode_-_Copie_erofyr.png'
anna3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234797/Atelier%20Plinguet/anna-3-commode_ie4a5a.png'
anna4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234766/Atelier%20Plinguet/anna-4-commode_ofkpjh.png'

suzanne1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234841/Atelier%20Plinguet/suzanne-1-bar_slxwic.png'
suzanne2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234834/Atelier%20Plinguet/suzanne-3-bar_efna2v.png'
suzanne3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234797/Atelier%20Plinguet/suzanne-2-bar_gildlr.png'

louisa1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999821/Atelier%20Plinguet/louisa-1-commode_sqds2t.jpg'
louisa2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234777/Atelier%20Plinguet/louisa-2-commode_crvmou.png'
louisa3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234720/Atelier%20Plinguet/louisa-3-commode_x0rzn7.png'

prune1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234778/Atelier%20Plinguet/prune-_-bureau_zccks3.png'
prune2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234821/Atelier%20Plinguet/prune-4-bureau_gpfwh1.png'
prune3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234825/Atelier%20Plinguet/prune-2-bureau_fojjzv.png'
prune4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234733/Atelier%20Plinguet/prune-3-bureau_svat4w.png'
prune5 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234783/Atelier%20Plinguet/prune-5-bureau_wh8tbe.png'

victoria1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234721/Atelier%20Plinguet/victoria-0-commode_pvzbeo.png'
victoria2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234790/Atelier%20Plinguet/victoria-01-commode_ppufyj.png'
victoria3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999043/Atelier%20Plinguet/victoria-1-commode_yx6v9q.jpg"

louise1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999041/Atelier%20Plinguet/louise--mueble-toilettes_umwo1c.jpg'
louise2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234806/Atelier%20Plinguet/louise-4-meuble-toilettes_znw9lo.png'
louise3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234733/Atelier%20Plinguet/louise-3-meuble-toilettes_rqko16.png'
louise4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234718/Atelier%20Plinguet/louise-2-meuble-toilettes_nzoldt.png'

manon1 ="https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999862/Atelier%20Plinguet/commode2-1-blanche_lpok40.jpg"
manon2 ="https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999810/Atelier%20Plinguet/commode2-2-blanche_jrdbia.jpg"
manon3 ="https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999027/Atelier%20Plinguet/commode2-3-blanche_i1vhpc.jpg"
manon4 ="https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999048/Atelier%20Plinguet/commode2-4-blanche_vqlkls.jpg"



puts "Seed des url furnitures : OK !"

# --------- Url accessories ------------

puts "Starting seed des url accessories"

nona1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999878/Atelier%20Plinguet/ona-1-table_qzzxiv.jpg'
nona2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999878/Atelier%20Plinguet/nona-3-table_d4cftu.jpg'
nona3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999863/Atelier%20Plinguet/nona-2-table_oedsz4.jpg'
nona4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234728/Atelier%20Plinguet/mona-4-table-basse_nsk0lw.png'

nicole1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234724/Atelier%20Plinguet/nicole-4-lampadaire_gpiwf6.png"
nicole2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234821/Atelier%20Plinguet/nicole-3-lampadaire_p8olnk.png"
nicole3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234845/Atelier%20Plinguet/nicole-2-lampadaire_bhuhmt.png"
nicole4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234788/Atelier%20Plinguet/nicole-1-lampadaire_wvrp0b.png'

helene1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999887/Atelier%20Plinguet/helne-1-pote-serviettes_z6v8ba.jpg"
helene2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234843/Atelier%20Plinguet/helene-2-porte-serviette_ejewxk.png"
helene3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999853/Atelier%20Plinguet/helene-2-porte-serviettes_i7qrsp.jpg"
helene4 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234837/Atelier%20Plinguet/helene-1-porte-serviette_vy7un6.png"

mona1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234773/Atelier%20Plinguet/mona-lampe-1_x2jh0q.png"
mona2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234721/Atelier%20Plinguet/mona-lampe-2_rv6rlo.png"

louacc = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234795/Atelier%20Plinguet/lou-1-applique_dafbs3.png"

augusta1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999013/Atelier%20Plinguet/chaise-1-cuivre_ybcgbq.jpg'
augusta2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999013/Atelier%20Plinguet/chaise-2-cuivre_adktak.jpg'

camille1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234823/Atelier%20Plinguet/camille-1-console_fkum2b.png'

eliza1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999870/Atelier%20Plinguet/eliza-1-console_f5tn6b.jpg'
eliza2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999855/Atelier%20Plinguet/eliza-2-console_k4dlho.jpg'
eliza3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234815/Atelier%20Plinguet/eliza-3-console_xzox3g.png'

puts "Seed des url accessories : OK !"

# --------- Url des réalisations ----------

puts "Starting seed des urls réalisations"

friedland1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999868/Atelier%20Plinguet/Lefriendland-1-bar_zpxoyy.jpg'
friedland2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234733/Atelier%20Plinguet/friendland-1-luminaire_riqzyw.png'
friedland3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234768/Atelier%20Plinguet/friendland-2-decoration-murale_yq3kmc.png'
friedland4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234776/Atelier%20Plinguet/friendland-3-meuble_tipy5t.png'
friedland5 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234803/Atelier%20Plinguet/friendland-4-table_edcb3k.png'

almab1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999004/Atelier%20Plinguet/alma-1-bibliotheque_cvhayj.jpg'
almab2 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999017/Atelier%20Plinguet/alma-2-bibliotheque_mltkze.jpg'
almab3 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710998997/Atelier%20Plinguet/alma-3-bibliotheque_b28di5.jpg'
almab4 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710998997/Atelier%20Plinguet/alma-4-bibliotheque_ovfciw.jpg'
almab5 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999007/Atelier%20Plinguet/alma-5-bibliotheque_xbyhw8.jpg'
almab6 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710998997/Atelier%20Plinguet/alma-6-bibliotheque_rnyv3g.jpg'
almab7 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710998997/Atelier%20Plinguet/alma-7-bibliotheque_iuzyfx.jpg'
puts "Seed des url réalisations : OK !"

puts "Starting seed des url inspi"

inspi_window = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234784/Atelier%20Plinguet/inspi-9-canage_mr51av.png'
inspi_panthere = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234839/Atelier%20Plinguet/inspi-8-panthere_qfdt67.png'
inspi_redpaint = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234788/Atelier%20Plinguet/inspi-10-peinture_muba1s.png'
inspi_wood_1 = 'https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234718/Atelier%20Plinguet/inspi-7-bois-2_syjnyw.png'
inspi_console = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999838/Atelier%20Plinguet/inspi-_w8tgim.jpg"
nice_ss_1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710998999/Atelier%20Plinguet/nice-ss-1_fhoy5o.png"
inspi_tableau = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234716/Atelier%20Plinguet/inspi--tableau_sspgid.png"

puts "Seed des url inspi : OK !"

puts "Starting seed des url logo"

pure_and_paint = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/pure_and_paint_logo_qgsn1x.png"
farrow_and_ball = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/farrow_and_ball_logo_meo66k.png"
envie = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231823/atelier-plinguet/logo-envie_jfziwl.jpg"
little_green = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/little_green_logo_dardnn.jpg"
colibri = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/colibri_logo_cujxhq.png"
liberon = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707238807/atelier-plinguet/liberon-logo_rvtwfa.jpg"
tableau = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234716/Atelier%20Plinguet/inspi--tableau_sspgid.png"

table_basse1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999848/Atelier%20Plinguet/table-basse-2_v2lryj.jpg"
table_basse2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999021/Atelier%20Plinguet/table-basse-1_qduvl0.jpg"
table_basse3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999795/Atelier%20Plinguet/table-basse-3_u9b9bm.jpg"

secretaire_rose1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999817/Atelier%20Plinguet/secretaire1-1-rose_wlmzst.jpg"
secretaire_rose2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999820/Atelier%20Plinguet/secretaire1-2-rose_jm5al4.jpg"

meuble_entree_vert1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999883/Atelier%20Plinguet/meuble-entree-1-vert_qyipkn.jpg"
meuble_entree_vert2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999885/Atelier%20Plinguet/meuble-entree-2-vert_d1gy5d.jpg"
meuble_entree_vert3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999888/Atelier%20Plinguet/meuble-entree-3-vert_kulbqi.jpg"

meuble_alcool_1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999863/Atelier%20Plinguet/meuble-acool-1_ftv8ag.jpg"
meuble_alcool_2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999884/Atelier%20Plinguet/meuble-alcool-2_ufokcm.jpg"
meuble_alcool_3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999891/Atelier%20Plinguet/meuble-alcool-3_uxzivb.jpg"

commode_verte_1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999021/Atelier%20Plinguet/commode4-3-verte_mosxhy.jpg"
commode_verte_2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999849/Atelier%20Plinguet/commode4-2-verte_qpe2is.jpg"
commode_verte_3 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999833/Atelier%20Plinguet/commode4-1-verte_laqbxc.jpg"

commode_blanche_1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999804/Atelier%20Plinguet/commode1-1-blanche_vzz3ua.jpg"
commode_blanche_2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999813/Atelier%20Plinguet/commode1-2-blanche_o5pgc9.jpg"

julia1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999008/Atelier%20Plinguet/buffet1-1-rose_tkfkwj.jpg"
julia2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999012/Atelier%20Plinguet/buffet1-2-rose_ziicdl.jpg"

giulia1 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999013/Atelier%20Plinguet/buffet1-1-bleu_edwef5.jpg"
giulia2 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710999013/Atelier%20Plinguet/buffet1-2-bleu_s0n7a3.jpg"

puts "Seed des url Logo : OK !"

puts "Seed de toutes les url : OK !"

# -------- Photos des meubles ------------

puts "Starting seed des furnitures photos.attach"

#Manon
furniture41.photos.attach(io: URI.open(manon1), filename: "manon-commode-1", content_type: "image/jpg")
furniture41.photos.attach(io: URI.open(manon2), filename: "manon-commode-2", content_type: "image/jpg")
furniture41.photos.attach(io: URI.open(manon3), filename: "manon-commode-3", content_type: "image/jpg")
furniture41.photos.attach(io: URI.open(manon4), filename: "manon-commode-4", content_type: "image/jpg")
furniture41.save

#Thalia
furniture36.photos.attach(io: URI.open(thalia1), filename: 'thalia-1-bibliotheque', content_type: "image/jpg" )
furniture36.photos.attach(io: URI.open(thalia2), filename: 'thalia-2-bibliotheque', content_type: "image/jpg" )
furniture36.save
puts "Thalia : ok"

#Luna
furniture32.photos.attach(io: URI.open(luna1), filename: 'luna-1-vaisselier', content_type: "image/jpg" )
furniture32.photos.attach(io: URI.open(luna2), filename: 'luna-1-vaisselier', content_type: "image/jpg" )
furniture32.photos.attach(io: URI.open(luna3), filename: 'luna-1-vaisselier', content_type: "image/jpg" )
furniture32.save
puts "Luna : ok"

#Mathilda
furniture31.photos.attach(io: URI.open(mathilda1), filename: 'mathilda-1-bahut', content_type: "image/jpg" )
furniture31.photos.attach(io: URI.open(mathilda2), filename: 'mathilda-2-bahut', content_type: "image/jpg" )
furniture31.photos.attach(io: URI.open(mathilda3), filename: 'mathilda-3-bahut', content_type: "image/jpg" )
furniture31.save
puts "mathilda : ok"

#Lou-bahut
furniture40.photos.attach(io: URI.open(lou1), filename: 'lou-1-bahut', content_type: "image/jpeg" )
furniture40.photos.attach(io: URI.open(lou2), filename: 'lou-2-bahut', content_type: "image/jpeg" )
furniture40.save
puts "Lou : ok"

#Imany
furniture34.photos.attach(io: URI.open(imany1), filename: 'imany-1-armoire', content_type: "image/jpg" )
furniture34.photos.attach(io: URI.open(imany2), filename: 'imany-2-armoire', content_type: "image/jpg" )
furniture34.photos.attach(io: URI.open(imany3), filename: 'imany-3-armoire', content_type: "image/jpg" )
furniture34.photos.attach(io: URI.open(imany4), filename: 'imany-4-armoire', content_type: "image/jpg" )
furniture34.save
puts "Imany : ok"

#Adriana
furniture28.photos.attach(io: URI.open(adriana1), filename: 'adriana-1-meuble.jpeg', content_type: "image/jpeg" )
furniture28.save
puts "Adriana : ok"

#Esther
furniture33.photos.attach(io: URI.open(esther1 ), filename: 'esther-1-commode.jpeg', content_type: "image/jpg" )
furniture33.photos.attach(io: URI.open(esther2), filename: 'esther-2-commode.jpg', content_type: "image/jpg" )
furniture33.photos.attach(io: URI.open(esther3), filename: 'esther-3-commode.jpg', content_type: "image/jpg" )
furniture33.photos.attach(io: URI.open(esther4), filename: 'esther-4-commode.jpg', content_type: "image/jpg" )
furniture33.photos.attach(io: URI.open(esther5), filename: 'esther-5-commode.jpg', content_type: "image/jpg")
furniture33.save
puts "Esther : ok"

#Rita
furniture39.photos.attach(io: URI.open(rita1), filename: 'rita-1-meuble.jpg', content_type: "image/jpg" )
furniture39.photos.attach(io: URI.open(rita2), filename: 'rita-2-meuble.jpg', content_type: "image/jpg" )
furniture39.photos.attach(io: URI.open(rita3), filename: 'rita-3-meuble.jpg', content_type: "image/jpg" )
furniture39.save
puts "Rita : ok"

#Christina
furniture37.photos.attach(io: URI.open(christina1), filename: 'christina-1-buffet.jpg', content_type: "image/jpg" )
furniture37.photos.attach(io: URI.open(christina2), filename: 'christina-2-buffet.jpg', content_type: "image/jpg" )
furniture37.photos.attach(io: URI.open(christina3), filename: 'christina-3-buffet.jpg', content_type: "image/jpg" )
furniture37.save
puts "Christina : ok"

#Simone
furniture30.photos.attach(io: URI.open(simone1), filename: 'simone-1-commode.jpg', content_type: "image/jpg" )
furniture30.photos.attach(io: URI.open(simone2), filename: 'simone-2-commode.jpg', content_type: "image/jpg" )
furniture30.photos.attach(io: URI.open(simone3), filename: 'simone-3-commode.jpg', content_type: "image/jpg" )
furniture30.save
puts "Simone : ok"

#Alma
furniture35.photos.attach(io: URI.open(alma1), filename: 'alma-1-meuble.jpg', content_type: "image/jpg" )
furniture35.photos.attach(io: URI.open(alma2), filename: 'alma-2-meuble.jpg', content_type: "image/jpg" )
furniture35.photos.attach(io: URI.open(alma3), filename: 'alma-3-meuble.jpg', content_type: "image/jpg" )
furniture35.save
puts "Alma : ok"

#Lola
furniture27.photos.attach(io: URI.open(lola1), filename: 'lola-1-bahut.jpg', content_type: "image/jpg" )
furniture27.photos.attach(io: URI.open(lola2), filename: 'lola-2-bahut.jpg', content_type: "image/jpg" )
furniture27.photos.attach(io: URI.open(lola3), filename: 'lola-3-bahut.jpg', content_type: "image/jpg" )
furniture27.photos.attach(io: URI.open(lola4), filename: 'lola-4-bahut.jpg', content_type: "image/jpg" )
furniture27.save
puts "Lola : ok"

#Paula
furniture26.photos.attach(io: URI.open(paula1),filename: 'paula-1-commode.jpg', content_type: "image/jpg" )
furniture26.photos.attach(io: URI.open(paula2),filename: 'paula-2-commode.jpg', content_type: "image/jpg" )
furniture26.photos.attach(io: URI.open(paula3),filename: 'paula-3-commode.jpg', content_type: "image/jpg" )
furniture26.save
puts "Paula : ok"

#Jade
furniture25.photos.attach(io: URI.open(jade1), filename: 'jade-1-bahut.jpg', content_type: "image/jpg" )
furniture25.photos.attach(io: URI.open(jade2), filename: 'jade-2-bahut.jpg', content_type: "image/jpg" )
furniture25.save
puts "Jade : ok"

#Raphaelle
furniture24.photos.attach(io: URI.open(raphaelle1), filename: 'raphaelle-1-bahut.jpg', content_type: "image/jpg" )
furniture24.photos.attach(io: URI.open(raphaelle2), filename: 'raphaelle-2-bahut.jpg', content_type: "image/jpg" )
furniture24.photos.attach(io: URI.open(raphaelle3), filename: 'raphaelle-3-bahut.jpg', content_type: "image/jpg" )
furniture24.photos.attach(io: URI.open(raphaelle4), filename: 'raphaelle-4-bahut.jpg', content_type: "image/jpg" )
furniture24.save
puts "Raphaelle : ok"

#Pauline
furniture23.photos.attach(io: URI.open(pauline1), filename: 'paulina-1-meuble-box.jpg', content_type: "image/jpg" )
furniture23.photos.attach(io: URI.open(pauline2), filename: 'paulina-2-meuble-box.jpg', content_type: "image/jpg" )
furniture23.save
puts "Paulina : ok"

#Philippa-commode
furniture22.photos.attach(io: URI.open(philippa1), filename: 'philippa-1-commode.jpg', content_type: "image/jpg" )
furniture22.photos.attach(io: URI.open(philippa2), filename: 'philippa-2-commode.jpg', content_type: "image/jpg" )
furniture22.photos.attach(io: URI.open(philippa3), filename: 'philippa-3-commode.jpg', content_type: "image/jpg" )
furniture22.save
puts "Philippa : ok"

#Sofia
furniture21.photos.attach(io: URI.open(sofia1), filename: 'sofia-1-confiturier.jpg', content_type: "image/jpg" )
furniture21.photos.attach(io: URI.open(sofia2), filename: 'sofia-2-confiturier.jpg', content_type: "image/jpg" )
furniture21.photos.attach(io: URI.open(sofia3), filename: 'sofia-3-confiturier.jpg', content_type: "image/jpg" )
furniture21.photos.attach(io: URI.open(sofia4), filename: 'sofia-4-confiturier.jpg', content_type: "image/jpg" )
furniture21.save
puts "Sofia : ok"

#Louison
furniture20.photos.attach(io: URI.open(louison1), filename: 'louison-1-confiturier.jpg', content_type: "image/jpg" )
furniture20.photos.attach(io: URI.open(louison2), filename: 'louison-2-confiturier.jpg', content_type: "image/jpg" )
furniture20.photos.attach(io: URI.open(louison3), filename: 'louison-3-confiturier.jpg', content_type: "image/jpg" )
furniture20.save
puts "Louison : ok"

#Chloe
furniture01.photos.attach(io: URI.open(chloe1), filename: 'chloe-1-enfilade.jpg', content_type: "image/jpg" )
furniture01.photos.attach(io: URI.open(chloe2), filename: 'chloe-2-enfilade.jpg', content_type: "image/jpg" )
furniture01.photos.attach(io: URI.open(chloe3), filename: 'chloe-3-enfilade.jpg', content_type: "image/jpg" )
furniture01.photos.attach(io: URI.open(chloe4), filename: 'chloe-4-enfilade.jpg', content_type: "image/jpg" )
furniture01.photos.attach(io: URI.open(chloe5), filename: 'chloe-5-enfilade.jpg', content_type: "image/jpg" )
furniture01.save
puts "Chloe : ok"

#Eva
furniture18.photos.attach(io: URI.open(eva1), filename: 'eva-1-buffet.jpg', content_type: "image/jpg" )
furniture18.photos.attach(io: URI.open(eva2), filename: 'eva-2-buffet.jpg', content_type: "image/jpg" )
furniture18.photos.attach(io: URI.open(eva3), filename: 'eva-3-buffet.jpg', content_type: "image/jpg" )
furniture18.photos.attach(io: URI.open(eva4), filename: 'eva-4-buffet.jpg', content_type: "image/jpg" )
furniture18.photos.attach(io: URI.open(eva5), filename: 'eva-5-buffet.jpg', content_type: "image/jpg" )
furniture18.save
puts "Eva : ok"

#Rose
furniture17.photos.attach(io: URI.open(rose1), filename: 'rose-1-armoire.png', content_type: "image/png" )
furniture17.photos.attach(io: URI.open(rose2), filename: 'rose-2-armoire.png', content_type: "image/png" )
furniture17.photos.attach(io: URI.open(rose3), filename: 'rose-3-armoire.png', content_type: "image/png" )
furniture17.save
puts "Rose : ok"

#Louisa
furniture16.photos.attach(io: URI.open(louisa1), filename: 'louisa-1-commode.jpeg', content_type: "image/jpeg" )
furniture16.photos.attach(io: URI.open(louisa2), filename: 'louisa-2-commode.jpeg', content_type: "image/jpeg" )
furniture16.photos.attach(io: URI.open(louisa3), filename: 'louisa-3-commode.jpeg', content_type: "image/jpeg" )
furniture16.save
puts "Louisa : ok"

#Chantal
furniture02.photos.attach(io: URI.open(chantal1), filename: 'chantal-1-bahut.png', content_type: "image/png" )
furniture02.photos.attach(io: URI.open(chantal2), filename: 'chantal-2-bahut.png', content_type: "image/png" )
furniture02.photos.attach(io: URI.open(chantal3), filename: 'chantal-3-bahut.png', content_type: "image/png" )
furniture02.save
puts "Chantal : ok"

#Prune
furniture14.photos.attach(io: URI.open(prune1), filename: 'prune-1-bureau.jpeg', content_type: "image/jpeg" )
furniture14.photos.attach(io: URI.open(prune2), filename: 'prune-2-bureau.jpeg', content_type: "image/jpeg" )
furniture14.photos.attach(io: URI.open(prune3), filename: 'prune-3-bureau.jpeg', content_type: "image/jpeg" )
furniture14.photos.attach(io: URI.open(prune4), filename: 'prune-4-bureau.jpeg', content_type: "image/jpeg" )
furniture14.photos.attach(io: URI.open(prune5), filename: 'prune-5-bureau.jpeg', content_type: "image/jpeg" )
furniture14.save
puts "Prune : ok"

#Victoria
furniture13.photos.attach(io: URI.open(victoria1), filename: 'victoria-1-commode.jpeg', content_type: "image/jpeg" )
furniture13.photos.attach(io: URI.open(victoria2), filename: 'victoria-2-commode.jpeg', content_type: "image/jpeg" )
furniture13.photos.attach(io: URI.open(victoria3), filename: 'victoria-2-commode.jpeg', content_type: "image/jpeg" )
furniture13.save
puts "Victoria : ok"

#Emma1
furniture12.photos.attach(io: URI.open(emma1), filename: 'emma-1-meuble.png', content_type: "image/png" )
furniture12.save
puts "Emma : ok"

#Holly
furniture11.photos.attach(io: URI.open(holly1), filename: 'holly-1-semainier.png', content_type: "image/png" )
furniture11.photos.attach(io: URI.open(holly2), filename: 'holly-2-semainier.png', content_type: "image/png" )
furniture11.save
puts "Holly : ok"

#Louise
furniture9.photos.attach(io: URI.open(louise1), filename: 'louise-1-meuble-toilettes.jpg', content_type: "image/jpg" )
furniture9.photos.attach(io: URI.open(louise2), filename: 'louise-2-meuble-toilettes.jpg', content_type: "image/jpg" )
furniture9.photos.attach(io: URI.open(louise3), filename: 'louise-3-meuble-toilettes.jpg', content_type: "image/jpg" )
furniture9.photos.attach(io: URI.open(louise4), filename: 'louise-4-meuble-toilettes.jpg', content_type: "image/jpg" )
furniture9.save
puts "Louise : ok"

#Philippa-semainier
furniture8.photos.attach(io: URI.open(philippa_semainier1) ,filename: 'philippa_semainier1.png', content_type: "image/png" )
furniture8.photos.attach(io: URI.open(philippa_semainier2), filename: "philippa_semainier2.png", content_type: "image/png" )
furniture8.photos.attach(io: URI.open(philippa_semainier3), filename: "philippa_semainier3.png", content_type: "image/png" )
furniture8.photos.attach(io: URI.open(philippa_semainier4), filename: "philippa_semainier4.png", content_type: "image/png" )
furniture8.save
puts "Philippa : ok"

#Clemence
furniture7.photos.attach(io: URI.open(clemence1), filename: 'clemence-1-secretaire.png', content_type: "image/png" )
furniture7.photos.attach(io: URI.open(clemence2), filename: 'clemence-2-secretaire.png', content_type: "image/png" )
furniture7.photos.attach(io: URI.open(clemence3), filename: 'clemence-3-secretaire.png', content_type: "image/png" )
furniture7.save
puts "Clémence : ok"

#Emma2
furniture6.photos.attach(io: URI.open(emma2_1), filename: 'emma2_1-meuble-chaussure.png', content_type: "image/png" )
furniture6.photos.attach(io: URI.open(emma2_2), filename: 'emma2_2-meuble-chaussure.png', content_type: "image/png" )
furniture6.photos.attach(io: URI.open(emma2_3), filename: 'emma2_3-meuble-chaussure.png', content_type: "image/png" )
furniture6.photos.attach(io: URI.open(emma2_4), filename: 'emma2_old-meuble-chaussure.png', content_type: "image/png" )
furniture6.save

puts "Emma2 : ok"

#Armelle
furniture5.photos.attach(io: URI.open(armelle1), filename: 'armelle-1-table.png', content_type: "image/png" )
furniture5.photos.attach(io: URI.open(armelle2), filename: 'armelle-2-table.png', content_type: "image/png" )
furniture5.save
puts "Armelle ok"

#Ava
furniture4.photos.attach(io: URI.open(ava1), filename: 'ava-1-commode.jpg', content_type: "image/jpg" )
furniture4.photos.attach(io: URI.open(ava2), filename: 'ava-2-commode.jpg', content_type: "image/jpg" )
furniture4.photos.attach(io: URI.open(ava3), filename: 'ava-3-commode.jpg', content_type: "image/jpg" )
furniture4.save
puts "Ava : ok" 

#Suzanne
furniture3.photos.attach(io: URI.open(suzanne1), filename: 'suzanne-1-bar.png', content_type: "image/png")
furniture3.photos.attach(io: URI.open(suzanne2), filename: 'suzanne-2-bar.png', content_type: "image/png")
furniture3.photos.attach(io: URI.open(suzanne3), filename: 'suzanne-3-bar.png', content_type: "image/png")
furniture3.save
puts "Suzannne : ok"

#Anna
furniture2.photos.attach(io: URI.open(anna1), filename: 'anna-1-commode.png', content_type: "image/png" )
furniture2.photos.attach(io: URI.open(anna2), filename: 'anna-2-commode.png', content_type: "image/png" )
furniture2.photos.attach(io: URI.open(anna3), filename: 'anna-3-commode.png', content_type: "image/png" )
furniture2.photos.attach(io: URI.open(anna4), filename: 'anna-4-commode.png', content_type: "image/png" )
furniture2.save
puts "Anna : ok"


puts "seed des furnitures photos.attach : OK !"

# ------------ Photos des accessoires ---------------

puts "Start des accessories photos.attach"

#Mona
accessory1.photos.attach(io: URI.open(mona1), filename: "mona-lampe-1.png", content_type: "image/png")
accessory1.photos.attach(io: URI.open(mona2), filename: "mona-lampe-2.png", content_type: "image/png")
accessory1.save
puts "Mona : ok"

#Lou-applique
accessory2.photos.attach(io: URI.open(louacc), filename: "lou-1-applique.png", content_type: "image/png")
accessory2.save
puts "Lou : ok"

#Eliza
accessory3.photos.attach(io: URI.open(eliza1), filename: 'eliza-1-console.jpeg', content_type: "image/jpeg" )
accessory3.photos.attach(io: URI.open(eliza2), filename: 'eliza-2-console.jpeg', content_type: "image/jpeg" )
accessory3.photos.attach(io: URI.open(eliza3), filename: 'eliza-2-console.png', content_type: "image/png" )
accessory3.save
puts "Eliza : ok"

#Hélène
accessory4.photos.attach(io: URI.open(helene1), filename: "helene-1-porte-serviette.png", content_type: "image/png")
accessory4.photos.attach(io: URI.open(helene2), filename: "helene-2-porte-serviette.png", content_type: "image/png")
accessory4.photos.attach(io: URI.open(helene3), filename: "helene-2-porte-serviette.png", content_type: "image/png")
accessory4.photos.attach(io: URI.open(helene4), filename: "helene-2-porte-serviette.png", content_type: "image/png")
accessory4.save
puts "Hélène : ok"

#Augusta
accessory5.photos.attach(io: URI.open(augusta1), filename: "augusta-1-chaise", content_type: "image/jpg")
accessory5.photos.attach(io: URI.open(augusta2), filename: "augusta-2-chaise", content_type: "image/jpg")
accessory5.save

#Camille
accessory6.photos.attach(io: URI.open(camille1), filename: 'camille-1-console.png', content_type: "image/png" )
accessory6.save
puts "Camille : ok"

#Nicole
accessory7.photos.attach(io: URI.open(nicole1), filename: "nicole-1-lampadaire.png", content_type: "image/png")
accessory7.photos.attach(io: URI.open(nicole2), filename: "nicole-2-lampadaire.png", content_type: "image/png")
accessory7.photos.attach(io: URI.open(nicole3), filename: "nicole-3-lampadaire.png", content_type: "image/png")
accessory7.photos.attach(io: URI.open(nicole4), filename: "nicole-4-lampadaire.png", content_type: "image/png")
accessory7.save
puts "Nicole ok"

#Nona
accessory8.photos.attach(io: URI.open(nona1), filename: 'nona-1-table-basse.jpg', content_type: "image/jpg" )
accessory8.photos.attach(io: URI.open(nona2), filename: 'nona-2-table-basse.jpg', content_type: "image/jpg" )
accessory8.photos.attach(io: URI.open(nona3), filename: 'nona-3-table-basse.jpg', content_type: "image/jpg" )
accessory8.photos.attach(io: URI.open(nona4), filename: 'nona-4-table-basse.jpg', content_type: "image/jpg" )
accessory8.save
puts "Nona : ok"

puts "Seed des accessories photos.attach : OK!"

# ------------ Photos des réalisations ------------------
puts "Starting seed des realisations photos.attach"

#Alma
realisation1.photos.attach(io: URI.open(almab1), filename: 'alma-1-bibliotheque', content_type: "image/jpg" )
realisation1.photos.attach(io: URI.open(almab2), filename: 'alma-2-bibliotheque', content_type: "image/jpg" )
realisation1.photos.attach(io: URI.open(almab3), filename: 'alma-3-bibliotheque', content_type: "image/jpg" )
realisation1.photos.attach(io: URI.open(almab4), filename: 'alma-4-bibliotheque', content_type: "image/jpg" )
realisation1.photos.attach(io: URI.open(almab5), filename: 'alma-5-bibliotheque', content_type: "image/jpg" )
realisation1.photos.attach(io: URI.open(almab6), filename: 'alma-6-bibliotheque', content_type: "image/jpg" )
realisation1.photos.attach(io: URI.open(almab7), filename: 'alma-7-bibliotheque', content_type: "image/jpg" )
realisation1.save
puts "Alma : ok"

#Friedland
realisation2.photos.attach(io: URI.open(friedland1), filename: "friedland-decoration-1", content_type: "image/jpg")
realisation2.photos.attach(io: URI.open(friedland2), filename: "friedland-decoration-2", content_type: "image/jpg")
realisation2.photos.attach(io: URI.open(friedland3), filename: "friedland-decoration-3", content_type: "image/jpg")
realisation2.photos.attach(io: URI.open(friedland4), filename: "friedland-decoration-4", content_type: "image/jpg")
realisation2.photos.attach(io: URI.open(friedland5), filename: "friedland-decoration-5", content_type: "image/jpg")
realisation2.save  

puts "Seed des realisations photos.attach: OK!"

puts "Fin des seeds : everything is updated !"
