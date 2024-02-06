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


Furniture.destroy_all
puts "Destroy des meubles : OK !"
Accessory.destroy_all
puts "Destroy des fabrications : OK !"
Realisation.destroy_all
puts "Destroy des réalisations : OK !"

# ---------- SEED DES MEUBLES -----------

puts "Starting seed des meubles"

furniture1 = Furniture.create!(name:"Thalia", material: "Bois", color: "Bleu Atlantide", paint_brand: "Colibri", teint: "", type_of_furniture: "Bibliothèque", date_of_manufacture: date, varnish: "Laque écologique", description: "Attention transformation ! On avait chiné cette armoire, il y a quelque temps, et le moins que l'on puisse dire, c'est qu'il fallait se projeter… Il nous a fallu pas mal de travail pour la transformer en bibliothèque, mais le résultat en valait la peine ! Un grand merci à @colibripeinture qui nous a fourni de supers produits et peintures pour la transformation de ce meuble!")
#  )

furniture2 = Furniture.create!(name:"Luna", material: "Bois", color: "Blanc glacier & Vert de gris", type_of_furniture: "Vaisselier", varnish: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Initialement Luna était le haut d'un vaisselier. Lorsque nous l'avons récupérée, on s'est dit que la partie haute et basse de ce vaisselier pouvaient faire 2 meubles à part entière.
Pour que cela soit possible, il nous a fallu rajouter des pieds en conservant le style du meuble, décaper à la machine le meuble, à la main les portes et leurs motifs et changer le plateau du haut qui était trop abimé.
Pour lui donner plus de style, une porte a été retirée pour créer cette niche. Pour les couleurs, c'est un blanc glacier de chez @farrowandball , et un magnifique vert de gris de chez @farrowandballfr que vous reverrez surement sur d'autres réalisations tant on l'aime!") 
#)

furniture3 = Furniture.create!(name:"Alma", material: "Bois", color: "Vert livid", type_of_furniture: "Bibliothèque", varnish: "", teint: "", paint_brand: "Little Green", date_of_manufacture: "", description: "Bibliothèque sur mesure Alma 📚📚
On était plutôt discret dernièrement, c'est parce l'atelier s'est exporté à Paris pour travailler sur la conception d'une bibliothèque sur mesure dans un appartement hausmanien. Au programme meuble design arrondi avec pliage de bois. Toute la fabrication a été faite sur place. Pour la peinture, on a choisi avec l'aide de @nelscouleurs , la superbe teinte #Livid de chez @littlegreene.fr @littlegreenepaintcompany .
Le reste de la rénovation de l'appartement à été effectué par le talentueux @antinomik_design .")
#)

furniture4 = Furniture.create!(name:"Matilda", material: "Bois", color: "Vert Kaki", type_of_furniture: "Bahut", varnish: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "", description: "Une fois n'est pas coutume, un client a flashé sur le bahut Raphaëlle que nous avions refait et vendu il y a quelques mois.
Il nous a demandé de lui en trouver un autre et de le restaurer en vert kaki.
C'est chose faite !
Après avoir chiné le bahut, démonté, poncé, réparé, enlevé les panneaux de portes et les remplacés par du cannage, nous avons appliqué un magnifique vert kaki de chez @farrowandball et un couche de vernis incolore @liberon_officiel pour protéger le bois brut.")
#)

furniture5 = Furniture.create!(name:"Lou", material: "Bois", color: "Vert Rivage
", type_of_furniture: "Bahut", varnish: "", teint: "Naturelle", paint_brand: "Envie", date_of_manufacture: "", description: "Lou est un superbe bahut comme on les aime.
Arrivé peint avec une couche plus qu'épaisse de peinture glycero saumon, il a fallu de nombreuses heures de ponçage pour le dénuder entièrement et révéler sa magnifique essence.
Les parties trop abimées ont été remplacées, les pieds refait sur mesure. Pour ce qui est de la teinte, nous avons choisi de lui laisser sa teinte naturel sur l'extérieur (protégé par un vernis de chez @liberon_officiel ) et le peindre en vert rivage de chez envie.") #)

furniture6 = Furniture.create!(name:"Imany", material: "Bois", color: "Bleu Mystere", type_of_furniture: "Armoire", varnish: "", teint: "", paint_brand: "Pure & Paint", date_of_manufacture: "", description: "Imany est une armoire très mignonne. Arrivée à l'atelier dans un vernis vieillissant couleur acajou qui ne lui allait pas spécialement, nous avons décidé de la changer d'époque ! Après un gros décapage, quelques réparations, et le changement des étagères, nous l'avons vêtue du très beau bleu « Mystère » de chez @pure_and_paint . Assortie à un très joli papier peint de la savane, Imany retrouve un cachet fou!")
#)

furniture7 = Furniture.create!(name:"Adriana", material: "Bois", color: "Vert de gris
", type_of_furniture: "Meuble de rangement",varnish: "", teint: "", paint_brand: "Envie", date_of_manufacture: "" , description: "Adriana était un petit meuble de machine à coudre qui avait été transformé par son ancien propriétaire en meuble de télévision. Un plateau sur glissière avait été rajouté pour rehausser le meuble et permettre à la télévision de se déporter. A l'atelier nous avons choisi d'en faire un meuble de rangement. Glissière et rehausse du plateau ont été déposées. Pour la teinte nous avons choisi un très beau vert de gris, et une poignée laitonné vient sublimer la couleur.
Adriana a rejoint son environnement pour le plus grand plaisir de son propriétaire.")
#)

=begin 
furniture8 = Furniture.create!(name:"Esther", material: "Bois", color: "Bleu nuit", type_of_furniture: "Commode", description: "Cette commode typique des années 60 nous est arrivée dans son jus.
Un gros travail de décapage et de ponçage a été nécéssaire pour enlever l'imposante couche de vernis et pouvoir ainsi lui donner cette jolie teinte bleu nuit de chez @farrowandball . Les pieds ont été changés pour des nouveaux plus modernes.
Les poignées sont d'origine et ont demandé un bon nettoyage pour retrouver leur brillance.")
#varnish: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture9 = Furniture.create!(name:"Rita", material: "Bois", color: "Soir de Sienne", type_of_furniture: "Meuble de rangement", description: "Arrivé à l'atelier dans un état déplorable, ce meuble de machine à coudre était bon pour la déchetterie. Le plateau, ou encore les portes ont subi de très très gros dégâts dont des coups de scie des anciens propriétaires. Il aura fallu de nombreuses heures de travail pour enlever le mécanisme rouillé supportant la machine à coudre, remplacer le plateau par un nouveau, et reboucher tous les trous qui avaient été faits dans les portes, mais cela en valait la peine. Nous avons immédiatement perçu le charme que pourrait avoir ce meuble une fois restauré, et nous ne sommes pas déçus d'y avoir passé du temps!
Habillé de la superbe teinte « soir de sienne » de chez @pure_and_paint , et d'une teinte chêne moyen de chez @liberon_officiel pour le plateau, les poignées et les pieds, ce meuble retrouve de sa superbe! Il est beau, unique, atypique et surtout il pourrait trouver sa place dans n'importe quelle pièce de la maison. Bref c'est un vrai coup de coeur pour l'atelier!")
#varnish: "", teint: "Chène - Libéron", paint_brand: "Pure & Paint", date_of_manufacture: "")

furniture10 = Furniture.create!(name:"Christina", material: "Bois", color: "Blanc Albâtre", type_of_furniture: "Coffre", description: "À l'atelier c'est un vieux coffre qui est passé entre nos mains cette semaine.
Il était sombre, avec des motifs de vitraux sur tout le coffre, cela avait son charme à l'époque mais aujourd'hui ce n'est plus trop le cas. C'est pourquoi nous avons décidé de le démonter entièrement pour le refaire à la sauce Atelier Plinguet. Une fois chaque pièce poncée afin de retrouver la couleur naturelle du bois qui entre nous est beaucoup plus douce et jolie, nous avons décidé de remplacer les vitraux par des panneaux simples mais mis en valeur par le blanc albâtre de chez @liberon_officiel . Ainsi le coffre change d'époque, et s'adaptera parfaitement dans son nouvel environnement.")
#varnish: "", teint: "Bois", paint_brand: "Libéron", date_of_manufacture: "")

furniture11 = Furniture.create!(name:"Simone", material: "Bois - pin", color: "Rose boréal", type_of_furniture: "Commode", description: "Aujourd'hui c'est une commode qui est passée à l'atelier pour un relooking.
Cette commode en pin pouvait paraitre « basique », mais était plutôt en bon état, donc le travail a été moins important que d'habitude. Aussi, nous avons décidé de lui donner plus d'originalité, en y appliquant la teinte « rose boréal » de chez #enviepeinture, mais uniquement sur l'intérieur de la façade des tiroirs et sur les côtés du meuble. Le plateau lui a été protégé au vernis mat de chez @liberon_officiel.
Les poignées d'origine qui étaient en bois, ont été remplacées par de jolies poignées laitonnées. On apprécie également sa grande capacité avec ses 6 tiroirs.")
#varnish: "Mat - Libéron", teint: "", paint_brand: "Envie", date_of_manufacture: "")

furniture12 = Furniture.create!(name:"Nona", material: "Bois", color: "Noire", type_of_furniture: "Table basse", description: "Aujourd'hui nous ne parlerons pas de restauration mais de fabrication avec cette commande qui sort de l'atelier.
Réalisée pour une cliente bordelaise, cette grand table basse est un assemblage d'une trentaine de tasseaux en pin, sapin et chêne. Il s'agit uniquement de bois de récupération, issu de palettes et de chutes d'autres projets…
Les pieds sont également réalisés en bois et peints en noir donnant l'illusion de pieds métalliques.
Après de nombreuses heures de découpage, dégauchissage rabotage de chaque tasseau, puis d'assemblage et bien évidemment de ponçage, le plateau est passé au vernis bistrot de chez @liberon_officiel pour une protection totale dans le temps!
C'est le genre de projet que l'on adore, respectueux de l'environnement, avec un objectif de réduction de déchets. D'autres modèles devraient suivre, avec différents pieds, mais surtout différents plateaux, c'est ça qui est bien aussi avec la récup, il n'y aura donc jamais 2 fois la même table ;)")
#varnish: "Vernis bistrot - Libéron", teint: "", paint_brand: "", date_of_manufacture: "")

furniture13 = Furniture.create!(name:"Alma", material: "Bois", color: "Lin velours", type_of_furniture: "Meuble de rangement / meuble TV / meuble d'enfant", description: "Cette semaine à l'atelier nous avons chiné un meuble assez atypique qui nous a bien plu. Apres avoir entièrement décapé cette petite merveille, et réparé ses tiroirs qui étaitent bien abimés. Nous avons choisi de peindre ce meuble dans une teinte très belle teinte Lin velours avec de nouvelles poignées et entrée de clé.
Le but étant de prendre une couleur s'accordant avec beaucoup d'autres pour permettre à ce meuble atypique qui peut servir de console, meuble tv, meuble d'enfant, petit meuble de rangement, et on en passe, de s'accorder dans beaucoup de pièces. Une chose est sûre, il aura sa place dans beaucoup de décos différentes")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture14 = Furniture.create!(name:"Lola", material: "Bois - Pin", color: "Banc crème", type_of_furniture: "Bahut", description: "Nous avons chiné dernièrement un bahut en pin assez commun. L'idée était de changer l'utilité de ce meuble. La personne chez qui nous l'avions acheté s'en servait de vaisselier. Apres l'avoir décapé entièrement, nous avons décidé d'enlever les portes pour en faire un bahut ouvert. Apres avoir choisi ce blanc crème de chez Farrow&ball, nous avons laissé sa teinte naturelle au plateau et à l'étagère, que nous avons passée au vernis incolore afin de les protéger. L'association de ces deux couleurs avec ses nouvelles poignées rendent ce meuble unique. Il peut aussi bien séjourner dans un salon, une salle à manger, une entrée ou bien une cuisine et ça c'est quand même pratique")
#varnish: "Incolore", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture15 = Furniture.create!(name:"Paula", material: "Bois", color: "Vert", type_of_furniture: "Commode", description: "En ce mois janvier, l'atelier Plinguet vous présente ses voeux ainsi que ce nouveau bijou. Jade est un bahut avec deux portes qui a bien souffert durant son passé. De nombreux petits habitants xylophages ont apprécié son bois. L'atelier a passé beaucoup de temps sur l'assainissement du meuble et sa reconstruction. De nombreuses heures ont été passés à traiter et réparer les dégâts causés par les vrillettes.
Aujourd'hui, nous avons un magnifique bahut à deux portes, peint dans un gris bleu de chez @farrowandballfr , avec un plateau et un intérieur en pin qui font ressortir cette magnifique teinte. De nouvelles poignées terminent cette restauration pour parfaire le résultat.")
#varnish: "", teint: "Vernis bois noyer", paint_brand: "", date_of_manufacture: "")

furniture16 = Furniture.create!(name:"Jade", material: "Bois - pin", color: "Gris bleu", type_of_furniture: "Bahut", description: "En ce mois janvier, l'atelier Plinguet vous présente ses voeux ainsi que ce nouveau bijou. Jade est un bahut avec deux portes qui a bien souffert durant son passé. De nombreux petits habitants xylophages ont apprécié son bois. L'atelier a passé beaucoup de temps sur l'assainissement du meuble et sa reconstruction. De nombreuses heures ont été passés à traiter et réparer les dégâts causés par les vrillettes.
Aujourd'hui, nous avons un magnifique bahut à deux portes, peint dans un gris bleu de chez @farrowandballfr , avec un plateau et un intérieur en pin qui font ressortir cette magnifique teinte. De nouvelles poignées terminent cette restauration pour parfaire le résultat.")
#varnish: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture17 = Furniture.create!(name:"Raphaëlle", material: "Bois", color: "Vert Rivage
", type_of_furniture: "Bahut", description: "Aujourd'hui à l'atelier, nous avons chiné un nouveau bahut parisien dans l'idée d'en faire un meuble ultra design après avoir décapé, et repeint toute la structure du meuble dans un vert rivage de chez #envie sauf le plateau que nous avons passé au vernis incolore pour le protéger. Nous avons tapissé le fond du meuble avec un papier peint style « savane » sur les tons de gris qui contraste parfaitement avec le vert. Enfin pour donner du cachet à ce meuble, nous avons découpé les panneaux des portes pour les remplacer par du canage qui termine cette restauration en donnant un style unique à ce bahut parisien")
#varnish: "", teint: "", paint_brand: "Envie", date_of_manufacture: "")

furniture18 = Furniture.create!(name:"Paulina", material: "Bois", color: "Vert Rivage", type_of_furniture: "Meuble box tv", description: "A l'atelier cette semaine nous avons cherché pour un client un tout petit meuble pour cacher sa box internet. Il y avait deux contraintes à respecter pour cette commande : la taille, pas plus de 40 cm de large et de profondeur, et l'ouverture, la box a besoin d'air pour ne pas surchauffer.
Alors quand on a chiné cette petit table de nuit avec son marbre qui pouvait aussi servir de meuble d'appoint, on s'est dit que c'était parfait! Après avoir découpé la porte, pour y incruster du canage afin de laisser la box respirer, nous avons traité le meuble contre les insectes xylophages, puis préparé pour la mise en peinture ce meuble. C'est sur le vert rivage que se porte le choix du client, et à l'atelier on trouve qu'avec le marbre et le canage c'est très réussi! Dernière étape de cette restauration, nettoyer ce beau marbre en profondeur et le récoler pour éviter toute casse possible.")
#varnish: "incolore", teint: "", paint_brand: "", date_of_manufacture: "")

furniture19 = Furniture.create!(name:"Philippa", material: "Bois", color: "", type_of_furniture: "Commode", description: "Cette commode est arrivée à l'atelier dans un bien piteux état. Initialement pourvue d'un rose bonbon plus qu'écaillé, d'un seul bouton central par tiroir et surtout de long pieds sculptés style Louis XV, nous avons décidé de changer totalement son style pour en faire une commode pour enfant.
Apres un décapage, une réparation du bois à certains endroits, nous avons changé le piétement, pour en fabriquer un en pieds compas teinte acajou, cela a pour but de rabaisser le meuble et de faire ressortir son nouveau rose poudré.
Ultime détail de nouvelles poignées en laiton disposées en chevrons pour parfaire son style.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture20 = Furniture.create!(name:"Louison", material: "Bois", color: "Rouge Terracotta", type_of_furniture: "Confiturier", description: "Le confiturier était un des meubles préférés de ma grand mère. À l'époque je le trouvais imposant, trop sombre et sans intérêt. Aujourd'hui, je vois tout le potentiel de ce meuble. Quel joie de retomber sur un similaire à celui de chez ma grand mère. Ce confiturier en chêne massif pese son poids. Il a fallu beaucoup d'efforts pour le ramener dans notre époque, mais revêtue de cette peinture Rouge Terracotta respectueuse de l'environnement avec son bouton laitonné et texturé, il sera parfait dans une entrée, ou un séjour.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture21 = Furniture.create!(name:"Sofia", material: "Bois - chène massif", color: "Red Earth", type_of_furniture: "Confiturier", description: "Cette semaine nous vous avons chiné un vieux confiturier vintage comme on les aime! À la base dans une teinte blanc cassé assez abimé, nous avons décidé après avoir effectué un travail sur le bois de le repeindre dans la teinte Red Earth de chez @farrowandball .
C'est donc dans cette nouvelle couleur et avec de nouvelles poignées que ce confiturier devient un meuble ultra tendance.")
#varnish: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture22 = Furniture.create!(name:"Chloé", material: "Bois", color: "Bleu Hague blue", type_of_furniture: "Enfilade", description: "La semaine dernière, l'atelier Plinguet a eu le plaisir de travailler à Paris sur une superbe enfilade scandinave des années 60. Le propriétaire de ce meuble l'avait chiné sur le site Selency qui regorge de pépites pour que nous le restaurions à son goût. De nombreuses heures de travail ont permis de lui donner une seconde jeunesse. Un papier peint intissé au motif floral dans les parties secrétaires ainsi que le bleu Hague Blue de chez Farrow&ball ont permis de rapporter cette sublime enfilade dans notre siècle ")
#varnish: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "2022-03-21")

furniture23 = Furniture.create!(name:"Eva", material: "Bois", color: "Bleu Nîmes", type_of_furniture: "Buffet", description: "La semaine dernière, l'atelier Plinguet a travaillé sur la restauration d'un buffet Parisien vintage. Apres un décapage intensif pour le dévêtir de sa peinture glycéro blanche, puis un traitement du bois, le buffet arbore dorénavant un magnifique bleu de Nimes de chez Farrow&Ball, qui est en réalité un sublime gris/bleu.
Son plateau et ses étagères ont eux été laissés bruts puis vernis pour les protéger dans le temps. Enfin de nouvelles poignées complètent son look pour ramener cette pièce vintage à notre époque.") 
#varnish: "Incolore", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture24 = Furniture.create!(name:"Rose", material: "Bois", color: "Lin velours", type_of_furniture: "Armoire", description: "Et voici la première restauration de l'atelier Plinguet pour cette année 2022. Lorsque l'on a vu arriver cette armoire asymétrique dans notre atelier, on s'est dit 2 choses. La première: qu'il y avait un travail de titan à réaliser dessus tant de pièces étaient à changer. La seconde : que malgré son look actuel, cette armoire vintage avait un potentiel énorme ! Avec un nouveau placage, un changement de serrure, la réparation de 3 tiroirs, un décapage plus que compliqué pour certaines zones et surtout avec une teinte couleur lin velours magnifique, un changement de poignées et d'entrée de clés, cette armoire vintage revient directement dans notre siècle pour enjoliver la chambre d'un enfant.") 
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture25 = Furniture.create!(name:"Louisa", material: "Bois", color: "Rouge Terracotta", type_of_furniture: "Commode", description: "Voici une nouvelle restauration de l'atelier Plinguet, une commode à l'aspect très « basique » qui après ponçage, réparation de tiroirs cassés et mise en peinture retrouve de sa superbe ! Ce rouge Terracotta de chez Farrow&Ball apporte une touche moderne qui s'allie parfaitement avec les poignées laitonnées.")
#varnish: "", teint: "", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture26 = Furniture.create!(name:"Chantal", material: "Bois", color: "Vert Cardoom green", type_of_furniture: "Bahut", description: "En ce début de mois, nous avons restauré un très joli bahut deux portes pour une cliente Landaise. À la base revêtu d'une teinte chêne foncée très en vogue à l'époque mais moins tendance aujourd'hui, le bahut a été entièrement décapé. Ses pieds, ont été supprimés pour apporter plus de simplicité au meuble, tout comme l'entrée de clé qui ne demandait qu'à être modernisée. Apres quelques réparations sur le bois, et un changement de serrure, notre cliente a opté pour un mélange bois teinte doré et vert #cardroomgreen de chez Farrow and Ball et franchement on adore le résultat!")
#varnish: "", teint: "Teinte dorée", paint_brand: "Farrow & Ball", date_of_manufacture: "")

furniture27 = Furniture.create!(name:"Prune", material: "Bois", color: "Vert kaki", type_of_furniture: "Bureau d'écolier", description: "En ce début de semaine, à l'atelier nous sommes repartis à l'école, pour une cliente parisienne qui cherchait pour ses filles un bureau d'école vintage. C'est à l'école de Bias dans les Landes que nous avons trouvé son bonheur : un bureau des années 50. Nous l'avons décapé, restauré le bois qui comportait les marques de ces dernières années et surtout repeint dans un vert qui tire vers le kaki, pour offrir de la modernité à ce bureau.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture28 = Furniture.create!(name:"Victoria", material: "Bois", color: "", type_of_furniture: "Commode", description: "Depuis dix jours, l'atelier Plinguet s'est délocalisé à Paris pour restaurer des meubles directement chez ses clients. La commode Victoria était dans un sale état à notre arrivée. Quelques réparations de tiroirs après, un gros travail de ponçage et de peinture, suivis d'un changement de boutons ont permis de rendre cette commode basique beaucoup plus moderne!")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture29 = Furniture.create!(name:"Emma", material: "Bois", color: "", type_of_furniture: "Meuble à chaussure", description: "Cette semaine, c'est le deuxième meuble à chaussures Emma qui était disponible à l'adoption qui quitte l'atelier. Ce meuble recherché de style pierre Guariche reste dans la région puisqu'il rejoint une bergerie Landaise. Transformé en commode pour une chambre d'enfant, ses tons dégradés s'harmonisent parfaitement avec la déco de notre client.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture30 = Furniture.create!(name:"Holly", material: "Bois", color: "Vert Céladon", type_of_furniture: "Semainier", description: "L'Atelier Plinguet s'exporte aussi. À la demande d'une cliente américaine habitant la région Landaise, nous avons refait 2 semainiers en vert céladon avec quelques dorures pour leur donner un look rétro. Souhaitant en faire des tables de nuit, les pieds ont été rabaissés pour que ces deux semainiers puissent prendre place de chaque côté du lit.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture31 = Furniture.create!(name:"Camille", material: "Cuivre & Bois", color: "Blanc écru", type_of_furniture: "Console", description: "Voici une nouvelle création de l'atelier. Cette semaine, nous avons travaillé sur une superbe console en cuivre et bois de couleur blanc écru. Son design élégant et épuré nous plait vraiment beaucoup! Bonne nouvelle cette pièce est disponible à l'adoption.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture32 = Furniture.create!(name:"Louise", material: "Bois", color: "", type_of_furniture: "Meuble de toilette", description: "Voici une nouvelle pièce sortie de l'atelier. Cet ancien meuble de toilette utilisé dans les années 1900 est arrivé à l'atelier la semaine dernière. Après pas mal d'heures de travail, il est reparti pour une deuxième jeunesse. Bonne nouvelle, Louise est disponible à l'adoption. En table d'appoint, bureau ou meuble de salle de bain, il trouvera une place dans n'importe quel intérieur.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture33 = Furniture.create!(name:"Philippa", material: "Bois", color: "Bleu velours", type_of_furniture: "Semainier", description: "Aujourd'hui à l'atelier Plinguet, un client nous a confié la restauration d'un semainier espagnol.
Après quelques jours de travail, le meuble n'est plus le même ! Son brun sombre a laissé place à une teinte de chêne dorée beaucoup plus lumineuse et actuelle, qui, associée à un bleu velours, donne un rendu que l'on affectionne particulièrement 👍🏼. Cette pièce est repartie dans un maison landaise où elle trouve parfaitement sa place ✔️.")
#varnish: "", teint: "Chène doré", paint_brand: "", date_of_manufacture: "")

furniture34 = Furniture.create!(name:"Clémence", material: "Bois", color: "Bleu velours", type_of_furniture: "Secrétaire", description: "Cette semaine, pour une cliente qui cherchait un meuble pratique pour travailler et ranger quelques affaires dans sa chambre, l'atelier est parti chiner ce secrétaire des années 60 et lui a refait une beauté. Gros coup de coeur pour ses nouvelles poignées en cuir qui se marient parfaitement avec le bleu choisi par notre cliente.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture35 = Furniture.create!(name:"Emma", material: "Bois", color: "Vert", type_of_furniture: "Meuble à chaussures / commode", description: "Cette pépite dénichée il y a deux semaines est un superbe meuble à chaussures très recherché de style pierre Guariche. Il peut également servir de petite commode. Arrivé dans un état assez catastrophique à l'atelier, il a fallu travailler sans relâche pour lui offrir une deuxième jeunesse. Revêtu d'un très joli vert, ce meuble à 4 tiroirs et poignées dorées apportera une touche design à votre intérieur.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture36 = Furniture.create!(name:"Armelle", material: "Bois", color: "Bleu Cobalt", type_of_furniture: "Table", description: "À la demande d'une cliente, l'atelier Plinguet a transformé un vieux meuble à machine à coudre en petite table. Son bleu cobalt et ses détails en laiton, donnent du chic à ce basique qui a trouvé sa place dans un appartement bordelais.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture37 = Furniture.create!(name:"Ava", material: "Bois", color: "Vert d'eau", type_of_furniture: "Coffre à jouets", description: "Restauration : Coffre à jouets entièrement en bois, restauré dans les tons vert d'eau et bois pour un rendu doux et naturel.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture38 = Furniture.create!(name:"Suzanne", material: "Bois", color: "Vert", type_of_furniture: "Mini-bar", description: "Restauration : bar vintage des années 60 sur roulettes, restauré et remis au goût du jour dans deux tons de vert.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

furniture39 = Furniture.create!(name:"Anna", material: "Bois", color: "Bleu nuit", type_of_furniture: "Commode", description: "Restauration : Commode restaurée dans les tons bleu nuit avec poignées cuivrées pour un design chic et épuré")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "", poignées : "Cuivrées")

furniture40 = Furniture.create!(name:"Eliza", material: "Cuivre & Bois - Pin", color: "", type_of_furniture: "Console", description: "Création de l'atelier plinguet pour une commande client.
Une console toute en cuivre, avec luminaire intégré et tablettes en pin des Landes.
Design épuré, cette pièce unique a trouvé refuge dans une belle maison Arcachonnaise.")
#varnish: "", teint: "", paint_brand: "", date_of_manufacture: "")

=end

puts "Seed des meubles : OK !"

# -------- Seed des accessories -------------- 

puts "Starting seed des accessoires"

accessory1 = Accessory.create!(name: "Nicole", material: "Bois", type_of: "Lampadaire", description: "Nouvelle création de l'atelier. Pour une cliente bordelaise, nous avons dessiné et fabriqué 2 lampadaires en bois. Pour obtenir ce résultat, il a fallu réaliser un assemblage de 10 planches de contreplaqués collées entre elles en y incorporant 2 ouvertures qui apportent une touche de légèreté. Il y a eu pas mal de travail de ponçage pour arriver à un rendu aussi lisse et harmonieux.")

accessory2 = Accessory.create!(name: "Hélène", type_of: "Porte-serviette", material: "Cuivre et Bois", description: "Cette semaine à l'atelier, nous avons créé un porte serviette à la demande d'une cliente. Les couleurs du cuivre et du bois s'harmonisent parfaitement avec le sol en travertin de la salle de bain de notre cliente. Si cette pièce vous plait, n'hésitez pas à nous envoyer un DM pour plus d'informations, l'atelier peut la reproduire sur demande et sa taille est ajustable.")

accessory3 = Accessory.create!(name: "Mona", material: "Bois", type_of: "Lampe", description: "Création de atelier plinguet pour une commande client.Une structure réalisée en assemblage de bois avec découpes et courbes travaillées. Recouverte un enduit de lissage et peint selon les désirs du client.")

accessory4 = Accessory.create!(name: "Lou", type_of: "Applique", description: "Création de l'atelier Plinguet pour une commande client. Lot de deux appliques en bois effet métal, avec vitre en Plexiglas, et ampoule Led à filament vintage.", material: "Bois")

accessory5 = Accessory.create!(name: "Augusta", type_of: "Chaise", description: "Création de l'atelier Plinguet pour une commande client. Magnifique fauteuil en cuivre aux lignes épurées et au designe original.", material: "cuivre")

puts "Seed des accessoires : OK !"

# ----------- Seed des réalisations -----------

puts "Starting seed des réalisations"

realisation1 = Realisation.create!(name: "Le Friedland", localisation: "Paris", type_of_realisation: "Décoration murale", date_of_realisation: date, description: "Depuis 3 semaines, l'atelier Plinguet s'est lancé dans un nouveau projet, la modernisation d'éléments d'un bistrot Parisien. Au programme la restauration de 26 tables de bistrot! À la base teintées en bois noir, il a fallu de nombreuses heures de décapage et ponçage pour retrouver la belle teinte initiale et les veines du bois. Le tout a été vernis avec une finition spéciale bistrot pour résister aux nombreux clients qui utiliseront ces tables. L'atelier a également restauré un vieux meuble de service dans des teintes de bois doré et la superbe couleur #inchyra de chez Farrow&ball. Enfin, nous avons procédé à la création d'un élément de déco murale alliant coffrage en bois peint dans cette même teinte Inchyra, flocage en contreplaqué réalisé à la découpe laser et ampoules design pour un rendu vraiment sympa!")

puts "Seed des réalisations : OK !"

# ------------ URL des meubles -------------

lilas = 'https://www.campingsgrandsud.fr/wp-content/uploads/2019/04/foret-des-landes.jpg'
puts "Starting seed des url furnitures"

thalia1 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424414/atelier-plinguet/thalia-1-bibli_zx58iy.jpg"
thalia_before = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716693/atelier-plinguet/thalia-2-bibliotheque_lmrumn.png'

luna1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424397/atelier-plinguet/luna-1-vaisselier_ekymps.jpeg'
luna2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424425/atelier-plinguet/luna-2-vaisselier_i99qpo.jpeg'
luna3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424392/atelier-plinguet/luna-3-vaisselier_jfmn7w.jpeg'

alma1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424439/atelier-plinguet/alma-1-bibliotheque_f9zc7r.jpg'
alma2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424441/atelier-plinguet/alma-2-bibliotheque_hqrlfj.jpg'
alma3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424396/atelier-plinguet/alma-3-bibliotheque_sjl4pp.jpg'
alma4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424394/atelier-plinguet/alma-4-bibliotheque_dhzxv3.jpg'
alma5 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424440/atelier-plinguet/alma-5-bibliotheque_ajecms.jpg'
alma6 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424391/atelier-plinguet/alma-6-bibliotheque_mtv28m.jpg'
alma7 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424390/atelier-plinguet/alma-7-bibliotheque_htwt5q.jpg'

mathilda1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424413/atelier-plinguet/matilda-1-bahut_hloh1t.jpg'
mathilda2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424418/atelier-plinguet/mathilda-2-bahut_cevwbe.jpg'
mathilda3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424425/atelier-plinguet/matilda-3-bahut_iq10qr.jpg'

lou1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424405/atelier-plinguet/lou-1-bahut_pdmmq8.jpg'
lou2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424406/atelier-plinguet/lou-2-bahut_oss09z.jpg'

imany1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424430/atelier-plinguet/imany-1-armoire_kyaltd.jpg'
imany2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424406/atelier-plinguet/imany-2-armoire_fvyn7i.jpg'
imany3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424398/atelier-plinguet/imany-3-armoire_p9xmdb.jpg'
imany4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424399/atelier-plinguet/imany-4-armoire_kpjwab.jpg'

adriana1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424394/atelier-plinguet/adriana-1-meuble_ciyl3g.jpg'
=begin
esther1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424401/atelier-plinguet/esther1-commode_g5bnkh.jpg'
esther2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424408/atelier-plinguet/esther2-commode_k9369t.jpg'
esther3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424401/atelier-plinguet/esther-3-commode_b04lb2.jpg'
esther4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424404/atelier-plinguet/esther-4-commode_isize0.jpg'
esther5 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716693/atelier-plinguet/esther-2-commode_g0mpo4.png'

rita1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424398/atelier-plinguet/rita-1-meuble_qnpbpp.jpg'
rita2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424392/atelier-plinguet/rita-2-meuble_uc2pcn.jpg'
rita3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424391/atelier-plinguet/rita-3-meuble_g5oywy.jpg'

christina1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424409/atelier-plinguet/christina-1-buffet_sx8ffl.jpg'
christina2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716693/atelier-plinguet/sofia-3-confiturier_nuxuku.png'
christina_before = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716693/atelier-plinguet/christina-3-buffet_cgls7z.png'

simone1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424390/atelier-plinguet/simone-1-commode_j39j8i.jpg'
simone2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424393/atelier-plinguet/simone-2-commode_t16s1w.jpg'
simone3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424394/atelier-plinguet/simone-3-commode_dslzsr.jpg'

nona1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424439/atelier-plinguet/ona-1-table_mzr4hw.jpg'
nona2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424432/atelier-plinguet/nona-2-table_spg9vy.jpg'
nona3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424437/atelier-plinguet/nona-3-table_kw6lhh.jpg'

alma1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424437/atelier-plinguet/alma-1-meuble_pfolbn.jpg'
alma2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424434/atelier-plinguet/alma-2-meuble_hxkvo5.jpg'
alma3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424433/atelier-plinguet/alma-3-meuble_skcw7z.jpg'

lola1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424390/atelier-plinguet/lola-1-bahut_diefil.jpg'
lola2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424418/atelier-plinguet/lola-2-bahut_gax5ro.jpg'
lola3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424422/atelier-plinguet/lola-3-bahut_tb0e3u.jpg'
lola4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424412/atelier-plinguet/lola-4-bahut_bem2p0.jpg'
lola5 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424421/atelier-plinguet/lola-5-b_bjkrz7.jpg'

paula1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424437/atelier-plinguet/paula-1-commode_vrowc8.jpg'
paula2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424443/atelier-plinguet/paula-2-commode_i11mey.jpg'
paula3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424439/atelier-plinguet/paula-3-commode_h1hwam.jpg'

jade1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424440/atelier-plinguet/jade-1-bahut.jpg'
jade2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424429/atelier-plinguet/helene-2-porte-serviettes_pc590v.jpg'

raphaelle1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424434/atelier-plinguet/raphaelle-1-bahut_wtipv1.jpg'
raphaelle2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424438/atelier-plinguet/raphaelle-2-bahut_m2dil7.jpg'
raphaelle3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424422/atelier-plinguet/raphaelle-3-bahut_crnosc.jpg'
raphaelle4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705400374/development/1geap8wvifp1m4guitrac3z2qsvs.jpg'

pauline1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424423/atelier-plinguet/pauline-1-meuble-box_nron3m.jpg'
pauline2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424422/atelier-plinguet/pauline-meuble-box_gswo3h.jpg'

philippa1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424434/atelier-plinguet/philippa-1-commode_yzrtls.jpg'
philippa2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424437/atelier-plinguet/philiipa-2-commode_njihrh.jpg'
philippa3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424409/atelier-plinguet/philippa-3-commode_vkm8js.jpg'

louison1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705400386/development/louison-1-confiturier.jpg'
louison2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424409/atelier-plinguet/louison-2-confiturier.jpg'
louison3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424391/atelier-plinguet/louison-1_wdxmy8.jpg'

sofia1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424414/atelier-plinguet/sofia-1-confiturier.jpg'
sofia2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424421/atelier-plinguet/sofia-2-confiturier.jpg'
sofia3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716693/atelier-plinguet/sofia-3-confiturier_nuxuku.png'
sofia4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716691/atelier-plinguet/sofia-4-confiturier_ggqccf.png'

chloe1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424403/atelier-plinguet/chloe-1-enfilade_uayvn3.jpg'
chloe2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716688/atelier-plinguet/chloe-4-enfilade_iejtkj.png'
chloe3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716688/atelier-plinguet/chloe-3-enfilade_yfde8n.png'
chloe4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716688/atelier-plinguet/chloe-2-enfilade_zo3kmq.png'
chloe5 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716688/atelier-plinguet/chloe-5-enfilade_p790ar.png'

eva1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424417/atelier-plinguet/eva-1-commode_hlg7wo.jpg'
eva2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424417/atelier-plinguet/eva-2-commode_g50tc4.jpg'
eva3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716688/atelier-plinguet/eva-3-commode_xpr53d.png'
eva4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716688/atelier-plinguet/eva-4-commode_en0xtt.png'
eva-before = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716687/atelier-plinguet/eva-before-1-commode_v8zye9.png'

rose1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595698/atelier-plinguet/rose-1-armoire_om4ogs.png'
rose2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595698/atelier-plinguet/rose-2-armoire_epya1k.png'
rose3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595698/atelier-plinguet/rose-3-armoire_szumas.png'

chantal1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595717/atelier-plinguet/chantal-1-bahut_wqo8t8.png'
chantal2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595712/atelier-plinguet/chantal-2-bahut_jusnhg.png'
chantal3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595715/atelier-plinguet/chantal-3-bahut_uwyrgp.png'

emma1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595717/atelier-plinguet/emma-1-meuble-chaussure_t8tvbz.png'

camille1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595716/atelier-plinguet/camille-1-console_imb0yj.png'

holly1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595722/atelier-plinguet/holly-1-semainier_eqmvsw.png'
holly2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595723/atelier-plinguet/holly-2-semainier_r0a0uo.png'

philippa-semainier1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595697/atelier-plinguet/philippa-1-semainier_rtrhda.png'
philippa-semainier2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595698/atelier-plinguet/philippa-2-semainier_duo7hf.png'
philippa-semainier3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622664/atelier-plinguet/philippa-3-semainier_gvoemk.png'
philippa-semainier4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622664/atelier-plinguet/philippa-4-semainier_enip8c.png'

clemence1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595712/atelier-plinguet/clemence-1-secretaire_deykxk.png'
clemence2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595718/atelier-plinguet/clemence-2-secretaire_ojb8vb.png'
clemence3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622664/atelier-plinguet/clemence-3-secretaire_n5fyow.png'

emma2-1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595719/atelier-plinguet/emma2-1-meuble-chaussure_sndmld.png'
emma2-2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622665/atelier-plinguet/emma2-3-meuble-chaussure_gq6jxw.png'
emma2-3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622664/atelier-plinguet/emma2-4-meuble-chaussure_gv4qgy.png'
emma2-old = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595721/atelier-plinguet/emma2-2-meuble-chaussure_x4tz5a.png'

armelle1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595708/atelier-plinguet/armelle-1-coffre_n6acvc.png'
armelle2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595709/atelier-plinguet/armelle-2-coffre_dg2itd.png'

armelle3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595708/atelier-plinguet/armelle-1-table_eoadwa.png'
armelle4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595711/atelier-plinguet/armelle-2-table_o9jct9.png'

ava1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424417/atelier-plinguet/eva-2-commode_g50tc4.jpg'
ava2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424417/atelier-plinguet/eva-2-commode_g50tc4.jpg'
ava3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424417/atelier-plinguet/eva-2-commode_g50tc4.jpg'

anna1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595704/atelier-plinguet/anna-1-commode_neqv11.png'
anna2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595704/atelier-plinguet/anna-2-commode_fcedyz.png'
anna3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595708/atelier-plinguet/anna-4-commode_hc5kgb.png'
anna4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595705/atelier-plinguet/anna-3-commode_rm9qvq.png'

suzanne1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595699/atelier-plinguet/suzanne-1-bar_wjpcw8.png'
suzanne2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595703/atelier-plinguet/suzanne-2-bar_td4put.png'
suzanne3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595705/atelier-plinguet/suzanne-3-bar_dsqa5q.png'

nicole1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595697/atelier-plinguet/nicole-3-lampadaire_ugyxor.png'
nicole2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595697/atelier-plinguet/nicole-2-lampadaire_ipu1wm.png'
nicole3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595727/atelier-plinguet/mona-lampe-2_ohq69s.png'

eliza1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424433/atelier-plinguet/eliza-1-console_tyrcjs.jpg'
eliza2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424427/atelier-plinguet/eliza-2-console_gmu0fl.jpg'
eliza3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595716/atelier-plinguet/eliza-3-console_pvne5a.png'

louisa1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424417/atelier-plinguet/louisa-1-commode_bpxvld.jpg'
louisa2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716687/atelier-plinguet/louisa-2-commode_bkmaw9.png'
louisa3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716687/atelier-plinguet/louisa-3-commode_wu1tdu.png'

prune1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424424/atelier-plinguet/prune-1-bureau_wn4b0j.jpg'
prune2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622659/atelier-plinguet/prune-2-bureau_vkrwo4.png'
prune3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622659/atelier-plinguet/prune-3-bureau_m6vcl5.png'
prune4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622659/atelier-plinguet/prune-4-bureau_dbdgc3.png'
prune5 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622658/atelier-plinguet/prune-_-bureau_wz5yki.png'

victoria1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424406/atelier-plinguet/victoria-2-commode_zr0jfm.jpg'
victoria2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424395/atelier-plinguet/victoria-1-commode_xbs5m1.jpg'
victoria3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622658/atelier-plinguet/victoria-0-commode_oqzr7u.png'
Victoria1-old = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622659/atelier-plinguet/victoria-01-commode_yir3ho.png'

louise1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424394/atelier-plinguet/louise--mueble-toilettes_djicx2.jpg'
louise2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622667/atelier-plinguet/louise-4-meuble-toilettes_aj6ctl.png'
louise3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622667/atelier-plinguet/louise-2-meuble-toilettes_jlioz7.png'
louise4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622668/atelier-plinguet/louise-3-meuble-toilettes_jorxvl.png'
=end
puts "Seed des url furnitures : OK !"

# --------- Url accessories ------------

puts "Starting seed des url accessories"

nicole1 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595697/atelier-plinguet/nicole-3-lampadaire_ugyxor.png"
nicole2 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595697/atelier-plinguet/nicole-2-lampadaire_ipu1wm.png"
nicole3 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595728/atelier-plinguet/nicole-1-lampadaire_ack2fa.png"
nicole4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622658/atelier-plinguet/nicole-4-lampadaire_n2v5za.png'

helene1 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595723/atelier-plinguet/helene-2-porte-serviette_zp5sws.png"
helene2 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595723/atelier-plinguet/helene-1-porte-serviette_oonfwt.png"

mona1 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595728/atelier-plinguet/mona-lampe-1_cxi20h.png"
mona2 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595727/atelier-plinguet/mona-lampe-2_ohq69s.png"

louacc = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1705595722/atelier-plinguet/lou-1-applique_ae5qdr.png"

augusta1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424410/atelier-plinguet/chaise-1-cuivre_miib6p.jpg'
augusta2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424403/atelier-plinguet/chaise-2-cuivre_m338wp.jpg'

puts "Seed des url accessories : OK !"

# --------- Url des réalisations ----------

puts "Starting seed des urls réalisations"

friedland1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1705424433/atelier-plinguet/Lefriendland-1-bar_bvbydt.jpg'
friedland2 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622663/atelier-plinguet/friendland-1-luminaire_mmhrzq.png'
friedland3 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622659/atelier-plinguet/friendland-4-table_zidi83.png'
friedland4 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622659/atelier-plinguet/friendland-3-meuble_ukdbfu.png'
friedland5 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706622660/atelier-plinguet/friendland-2-decoration-murale_gte1zm.png'

puts "Seed des url réalisations : OK !"

puts "Starting seed des url inspi"

inspi_window = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716692/atelier-plinguet/inspi-9-canage_mfmxkj.png'
inspi_panthere = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716692/atelier-plinguet/inspi-8-panthere_rguikf.png'
inspi_redpaint = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716692/atelier-plinguet/inspi-10-peinture_uusmlg.png'
inspi_wood_1 = 'https://res.cloudinary.com/dnqkzzqga/image/upload/v1706716692/atelier-plinguet/inspi-10-peinture_uusmlg.png'

puts "Seed des url inspi : OK !"

puts "Starting seed des url logo"

pure_and_paint = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/pure_and_paint_logo_qgsn1x.png"
farrow_and_ball = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/farrow_and_ball_logo_meo66k.png"
envie = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231823/atelier-plinguet/logo-envie_jfziwl.jpg"
little_green = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/little_green_logo_dardnn.jpg"
colibri = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/colibri_logo_cujxhq.png"
liberon = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707238807/atelier-plinguet/liberon-logo_rvtwfa.jpg"

puts "Seed des url Logo : OK !"

puts "Seed de toutes les url : OK !"

# -------- Photos des meubles ------------

puts "Starting seed des furnitures photos.attach"

#Thalia
furniture1.photos.attach(io: URI.open(thalia1), filename: 'thalia-1-bibliotheque', content_type: "image/jpg" )
furniture1.photos.attach(io: URI.open(thalia_before), filename: 'thalia-2-bibliotheque', content_type: "image/jpg" )
furniture1.save
puts "thalia : ok"

#Luna
furniture2.photos.attach(io: URI.open(luna1), filename: 'luna-1-vaisselier', content_type: "image/jpg" )
furniture2.photos.attach(io: URI.open(luna2), filename: 'luna-1-vaisselier', content_type: "image/jpg" )
furniture2.photos.attach(io: URI.open(luna3), filename: 'luna-1-vaisselier', content_type: "image/jpg" )
furniture2.save
puts "luna : ok"

#Alma
furniture3.photos.attach(io: URI.open(alma1), filename: 'alma-1-bibliotheque', content_type: "image/jpg" )
furniture3.photos.attach(io: URI.open(alma2), filename: 'alma-2-bibliotheque', content_type: "image/jpg" )
furniture3.photos.attach(io: URI.open(alma3), filename: 'alma-3-bibliotheque', content_type: "image/jpg" )
furniture3.photos.attach(io: URI.open(alma4), filename: 'alma-4-bibliotheque', content_type: "image/jpg" )
furniture3.photos.attach(io: URI.open(alma5), filename: 'alma-5-bibliotheque', content_type: "image/jpg" )
furniture3.photos.attach(io: URI.open(alma6), filename: 'alma-6-bibliotheque', content_type: "image/jpg" )
furniture3.photos.attach(io: URI.open(alma7), filename: 'alma-7-bibliotheque', content_type: "image/jpg" )
furniture3.save
puts "alma : ok"

#Mathilda
furniture4.photos.attach(io: URI.open(mathilda1), filename: 'mathilda-1-bahut', content_type: "image/jpg" )
furniture4.photos.attach(io: URI.open(mathilda2), filename: 'mathilda-2-bahut', content_type: "image/jpg" )
furniture4.photos.attach(io: URI.open(mathilda3), filename: 'mathilda-3-bahut', content_type: "image/jpg" )
furniture4.save
puts "mathilda : ok"

#Lou-bahut
furniture5.photos.attach(io: URI.open(lou1), filename: 'lou-1-bahut', content_type: "image/jpeg" )
furniture5.photos.attach(io: URI.open(lou2), filename: 'lou-2-bahut', content_type: "image/jpeg" )
furniture5.save
puts "lou : ok"

#Imany
furniture6.photos.attach(io: URI.open(imany1), filename: 'imany-1-armoire', content_type: "image/jpg" )
furniture6.photos.attach(io: URI.open(imany2), filename: 'imany-2-armoire', content_type: "image/jpg" )
furniture6.photos.attach(io: URI.open(imany3), filename: 'imany-3-armoire', content_type: "image/jpg" )
furniture6.photos.attach(io: URI.open(imany4), filename: 'imany-4-armoire', content_type: "image/jpg" )
furniture6.save
puts "imany : ok"

#Adriana
furniture7.photos.attach(io: URI.open(adriana1), filename: 'adriana-1-meuble.jpeg', content_type: "image/jpeg" )
furniture7.save
puts "adriana : ok"

=begin
#Esther
furniture8.photos.attach(io: URI.open(esther1 ), filename: 'esther-1-commode.jpeg', content_type: "image/jpg" )
furniture8.photos.attach(io: URI.open(esther2), filename: 'esther-2-commode.jpg', content_type: "image/jpg )
furniture8.photos.attach(io: URI.open(esther3), filename: 'esther-3-commode.jpg', content_type: "image/jpg )
furniture8.photos.attach(io: URI.open(esther4), filename: 'esther-4-commode.jpg', content_type: "image/jpg )
furniture8.photos.attach(io: URI.open(esther5), filename: 'esther-5-commode.jpg', content_type: "image/jpg )
furniture8.save
puts "esther : ok"

#Rita
furniture9.photos.attach(io: URI.open(rita1), filename: 'rita-1-meuble.jpg', content_type: "image/jpg )
furniture9.photos.attach(io: URI.open(rita2), filename: 'rita-2-meuble.jpg', content_type: "image/jpg )
furniture9.photos.attach(io: URI.open(rita3), filename: 'rita-3-meuble.jpg', content_type: "image/jpg )
furniture9.save
puts "rita : ok"

#Christina
furniture10.photos.attach(io: URI.open(christina1), filename: 'christina-1-buffet.jpg', content_type: "image/jpg )
furniture10.photos.attach(io: URI.open(christina2), filename: 'christina-2-buffet.jpg', content_type: "image/jpg )
furniture10.photos.attach(io: URI.open(christina_before), filename: 'christina-1-before-buffet.jpg', content_type: "image/jpg )
furniture10.save
puts "christina : ok"

#Simone
furniture11.photos.attach(io: URI.open(simone1), filename: 'simone-1-commode.jpg', content_type: "image/jpg )
furniture11.photos.attach(io: URI.open(simone2), filename: 'simone-2-commode.jpg', content_type: "image/jpg )
furniture11.photos.attach(io: URI.open(simone3), filename: 'simone-3-commode.jpg', content_type: "image/jpg )
furniture11.save
puts "simone : ok"

#Mona
furniture12.photos.attach(io: URI.open(mona1), filename: 'mona-1-table.jpg', content_type: "image/jpg )
furniture12.photos.attach(io: URI.open(mona2), filename: 'mona-2-table.jpg', content_type: "image/jpg )
furniture12.save
puts "nona : ok"

#Alma
furniture13.photos.attach(io: URI.open(alma1), filename: 'alma-1-meuble.jpg', content_type: "image/jpg )
furniture13.photos.attach(io: URI.open(alma2), filename: 'alma-2-meuble.jpg', content_type: "image/jpg )
furniture13.photos.attach(io: URI.open(alma3), filename: 'alma-3-meuble.jpg', content_type: "image/jpg )
furniture13.save
puts "alma : ok"

#Lola
furniture14.photos.attach(io: URI.open(lola1), filename: 'lola-1-bahut.jpg', content_type: "image/jpg )
furniture14.photos.attach(io: URI.open(lola2), filename: 'lola-2-bahut.jpg', content_type: "image/jpg )
furniture14.photos.attach(io: URI.open(lola3), filename: 'lola-3-bahut.jpg', content_type: "image/jpg )
furniture14.photos.attach(io: URI.open(lola4), filename: 'lola-4-bahut.jpg', content_type: "image/jpg )
furniture14.photos.attach(io: URI.open(lola5), filename: 'lola-5-bahut.jpg', content_type: "image/jpg )
furniture14.save
puts "lola : ok"

#Paula
furniture15.photos.attach(io: URI.open(paula1,filename: 'paula-1-commode.jpg', content_type: "image/jpg )
furniture15.photos.attach(io: URI.open(paula2,filename: 'paula-2-commode.jpg', content_type: "image/jpg )
furniture15.photos.attach(io: URI.open(paula3,filename: 'paula-3-commode.jpg', content_type: "image/jpg )
furniture15.save
puts "paula : ok"

#Jade
furniture16.photos.attach(io: URI.open(jade1), filename: 'jade-1-bahut.jpg', content_type: "image/jpg )
furniture16.photos.attach(io: URI.open(jade2), filename: 'jade-2-bahut.jpg', content_type: "image/jpg )
furniture16.save
puts "jade : ok"

#Raphaelle
furniture17.photos.attach(io: URI.open(raphaelle1), filename: 'raphaelle-1-bahut.jpg', content_type: "image/jpg )
furniture17.photos.attach(io: URI.open(raphaelle2), filename: 'raphaelle-2-bahut.jpg', content_type: "image/jpg )
furniture17.photos.attach(io: URI.open(raphaelle3), filename: 'raphaelle-3-bahut.jpg', content_type: "image/jpg )
furniture17.photos.attach(io: URI.open(raphaelle4), filename: 'raphaelle-4-bahut.jpg', content_type: "image/jpg )
furniture17.save
puts "raphaelle : ok"

#Pauline
furniture18.pho4os.attach(io: URI.open(pauline1), filename: 'paulina-1-meuble-box.jpg', content_type: "image/jpg )
furniture18.photos.attach(io: URI.open(pauline2), filename: 'paulina-2-meuble-box.jpg', content_type: "image/jpg )
furniture18.save
puts "paulina : ok"

#Philippa-commode
furniture19.photos.attach(io: URI.open(philippa1), filename: 'philippa-1-commode.jpg', content_type: "image/jpg )
furniture19.photos.attach(io: URI.open(philippa2), filename: 'philippa-2-commode.jpg', content_type: "image/jpg )
furniture19.photos.attach(io: URI.open(philippa3), filename: 'philippa-3-commode.jpg', content_type: "image/jpg )
furniture19.save
puts "philippa : ok"

#Louison
furniture20.photos.attach(io: URI.open(louison1), filename: 'louison-1-confiturier.jpg', content_type: "image/jpg )
furniture20.photos.attach(io: URI.open(louison2), filename: 'louison-2-confiturier.jpg', content_type: "image/jpg )
furniture20.photos.attach(io: URI.open(louison3), filename: 'louison-3-confiturier.jpg', content_type: "image/jpg )
furniture20.save
puts "louison : ok"

#Sofia
furniture21.photos.attach(io: URI.open(sofia1), filename: 'sofia-1-confiturier.jpg', content_type: "image/jpg )
furniture21.photos.attach(io: URI.open(sofia2), filename: 'sofia-2-confiturier.jpg', content_type: "image/jpg )
furniture21.photos.attach(io: URI.open(sofia3), filename: 'sofia-3-confiturier.jpg', content_type: "image/jpg )
furniture21.photos.attach(io: URI.open(sofia4), filename: 'sofia-4-confiturier.jpg', content_type: "image/jpg )
furniture21.save
puts "sofia : ok"

#Chloe
furniture22.photos.attach(io: URI.open(chloe1), filename: 'chloe-1-enfilade.jpg', content_type: "image/jpg )
furniture22.photos.attach(io: URI.open(chloe2), filename: 'chloe-2-enfilade.jpg', content_type: "image/jpg )
furniture22.photos.attach(io: URI.open(chloe3), filename: 'chloe-3-enfilade.jpg', content_type: "image/jpg )
furniture22.photos.attach(io: URI.open(chloe4), filename: 'chloe-4-enfilade.jpg', content_type: "image/jpg )
furniture22.photos.attach(io: URI.open(chloe5), filename: 'chloe-5-enfilade.jpg', content_type: "image/jpg )
furniture22.save
puts "chloe : ok"

#Eva
furniture23.photos.attach(io: URI.open(eva1), filename: 'eva-1-buffet.jpg', content_type: "image/jpg )
furniture23.photos.attach(io: URI.open(eva2), filename: 'eva-2-buffet.jpg', content_type: "image/jpg )
furniture23.photos.attach(io: URI.open(eva3), filename: 'eva-3-buffet.jpg', content_type: "image/jpg )
furniture23.photos.attach(io: URI.open(eva4), filename: 'eva-4-buffet.jpg', content_type: "image/jpg )
furniture23.photos.attach(io: URI.open(eva-before), filename: 'eva-1-before-buffet.jpg', content_type: "image/jpg )
furniture23.save
puts "eva : ok"

#Rose
furniture24.photos.attach(io: URI.open(rose1,filename: 'rose-1-armoire.png', content_type: "image/png )
furniture24.photos.attach(io: URI.open(rose2,filename: 'rose-2-armoire.png', content_type: "image/png )
furniture24.photos.attach(io: URI.open(rose3,filename: 'rose-3-armoire.png', content_type: "image/png )
furniture24.save
puts "rose : ok"

#Louisa
furniture25.photos.attach(io: URI.open(louisa1), filename: 'louisa-1-commode.jpeg', content_type: "image/jpg )
furniture25.photos.attach(io: URI.open(louisa2), filename: 'louisa-2-commode.jpeg', content_type: "image/jpg )
furniture25.photos.attach(io: URI.open(louisa3), filename: 'louisa-3-commode.jpeg', content_type: "image/jpg )
furniture25.save
puts "louisa : ok"

#Chantal
furniture26.photos.attach(io: URI.open(chantal1,filename: 'chantal-1-bahut.png', content_type: "image/png )
furniture26.photos.attach(io: URI.open(chantal2,filename: 'chantal-2-bahut.png', content_type: "image/png )
furniture26.photos.attach(io: URI.open(chantal3,filename: 'chantal-3-bahut.png', content_type: "image/png )
furniture26.save
puts "chantal : ok"

#Prune
furniture27.photos.attach(io: URI.open(prune1), filename: 'prune-1-bureau.jpeg', content_type: "image/jpg )
furniture27.photos.attach(io: URI.open(prune2), filename: 'prune-2-bureau.jpeg', content_type: "image/jpg )
furniture27.photos.attach(io: URI.open(prune3), filename: 'prune-3-bureau.jpeg', content_type: "image/jpg )
furniture27.photos.attach(io: URI.open(prune4), filename: 'prune-4-bureau.jpeg', content_type: "image/jpg )
furniture27.photos.attach(io: URI.open(prune5), filename: 'prune-5-bureau.jpeg', content_type: "image/jpg )
furniture27.save
puts "prune : ok"

#Victoria
furniture28.photos.attach(io: URI.open(victoria1), filename: 'victoria-1-commode.jpeg', content_type: "image/jpg )
furniture28.photos.attach(io: URI.open(victoria2), filename: 'victoria-2-commode.jpeg', content_type: "image/jpg )
furniture28.photos.attach(io: URI.open(victoria3), filename: 'victoria-3-commode.jpeg', content_type: "image/jpg )
furniture28.photos.attach(io: URI.open(victoria1-old), filename: 'victoria-3-commode.jpeg', content_type: "image/jpg )
furniture28.save
puts "victoria : ok"

#Emma1
furniture29.photos.attach(io: URI.open(emma1), filename: 'emma-1-meuble.png', content_type: "image/png )
furniture29.save
puts "emma : ok"

#Holly
furniture30.photos.attach(io: URI.open(holly1), filename: 'holly-1-semainier.png', content_type: "image/png )
furniture30.photos.attach(io: URI.open(holly2), filename: 'holly-2-semainier.png', content_type: "image/png )
furniture30.save
puts "holly : ok"

#Camille
furniture31.photos.attach(io: URI.open(camille1), filename: 'camille-1-console.png', content_type: "image/png )
furniture31.save
puts "camille : ok"

#Louise
furniture32.photos.attach(io: URI.open(louise1,filename: 'louise-1-meuble-toilettes.jpg', content_type: "image/jpg )
furniture32.photos.attach(io: URI.open(louise2,filename: 'louise-2-meuble-toilettes.jpg', content_type: "image/jpg )
furniture32.photos.attach(io: URI.open(louise3,filename: 'louise-3-meuble-toilettes.jpg', content_type: "image/jpg )
furniture32.photos.attach(io: URI.open(louise4,filename: 'louise-4-meuble-toilettes.jpg', content_type: "image/jpg )
furniture32.save
puts "louise : ok"

#Philippa-semainier
furniture33.photos.attach(io: URI.open(philippa-semainier1 ,filename: 'philippa-1-semainier.png', content_type: "image/png )
furniture33.photos.attach(io: URI.open(philippa-semainier2), filename: "philippa-2-semainier.png", content_type: "image/png )
furniture33.photos.attach(io: URI.open(philippa-semainier3), filename: "philippa-2-semainier.png", content_type: "image/png )
furniture33.photos.attach(io: URI.open(philippa-semainier4), filename: "philippa-2-semainier.png", content_type: "image/png )
furniture33.save
puts "philippa : ok"

#Clemence
furniture34.photos.attach(io: URI.open(clemence1,filename: 'clemence-1-secretaire.png', content_type: "image/png )
furniture34.photos.attach(io: URI.open(clemence2,filename: 'clemence-2-secretaire.png', content_type: "image/png )
furniture34.photos.attach(io: URI.open(clemence3,filename: 'clemence-3-secretaire.png', content_type: "image/png )
furniture34.save
puts "clemence : ok"

#Emma2
furniture35.photos.attach(io: URI.open(emma2-1,filename: 'emma2-1-meuble-chaussure.png', content_type: "image/png )
furniture35.photos.attach(io: URI.open(emma2-2,filename: 'emma2-2-meuble-chaussure.png', content_type: "image/png )
furniture35.photos.attach(io: URI.open(emma2-3,filename: 'emma2-3-meuble-chaussure.png', content_type: "image/png )
furniture35.photos.attach(io: URI.open(emma2-old,filename: 'emma2-old-meuble-chaussure.png', content_type: "image/png )
furniture35.save

puts "emma2 : ok"

#Armelle
furniture36.photos.attach(io: URI.open(armelle1,filename: 'armelle-1-table.png', content_type: "image/png )
furniture36.photos.attach(io: URI.open(armelle2,filename: 'armelle-2-table.png', content_type: "image/png )
furniture36.save
puts "armelle ok"

#Ava
furniture37.photos.attach(io: URI.open(ava1,filename: 'ava-1-commode.jpg', content_type: "image/jpg )
furniture37.photos.attach(io: URI.open(ava2,filename: 'ava-2-commode.jpg', content_type: "image/jpg )
furniture37.photos.attach(io: URI.open(ava3,filename: 'ava-3-commode.jpg', content_type: "image/jpg )
furniture37.save
puts "ava : ok"

#Suzanne
furniture38.photos.attach(io: URI.open(suzanne1 ,filename: 'suzanne-1-bar.png', content_type: "image/png )
furniture38.photos.attach(io: URI.open(suzanne2 ,filename: 'suzanne-2-bar.png', content_type: "image/png )
furniture38.photos.attach(io: URI.open(suzanne3 ,filename: 'suzanne-3-bar.png', content_type: "image/png )
furniture382sav3
puts "suzan3e : ok"

#Anna
furniture39.photos.attach(io: URI.open(anna1,filename: 'anna-1-commode.png', content_type: "image/png )
furniture39.photos.attach(io: URI.open(anna2,filename: 'anna-2-commode.png', content_type: "image/png )
furniture39.photos.attach(io: URI.open(anna3,filename: 'anna-3-commode.png', content_type: "image/png )
furniture39.photos.attach(io: URI.open(anna4,filename: 'anna-4-commode.png', content_type: "image/png )
furniture392save
puts "anna 3 ok"

#Eliza
furniture40.photos.attach(io: URI.open(eliza1,filename: 'eliza-1-console.jpeg', content_type: "image/jpg )
furniture40.photos.attach(io: URI.open(eliza2,filename: 'eliza-2-console.jpeg', content_type: "image/jpg )
furniture40.photos.attach(io: URI.open(eliza3,filename: 'eliza-2-console.png', content_type: "image/png )
furniture40.save
puts "eliza : ok"
=end

puts "seed des furnitures photos.attach : OK !"

# ------------ Photos des accessoires ---------------

puts "Start des accessories photos.attach"

#Nicole
accessory1.photos.attach(io: URI.open(nicole1), filename: "nicole-1-lampadaire.png", content_type: "image/png")
accessory1.photos.attach(io: URI.open(nicole2), filename: "nicole-2-lampadaire.png", content_type: "image/png")
accessory1.photos.attach(io: URI.open(nicole3), filename: "nicole-3-lampadaire.png", content_type: "image/png")
accessory1.photos.attach(io: URI.open(nicole4), filename: "nicole-4-lampadaire.png", content_type: "image/png")
accessory1.save
puts "nicole ok"

#Helene
accessory2.photos.attach(io: URI.open(helene1), filename: "helene-1-porte-serviette.png", content_type: "image/png")
accessory2.photos.attach(io: URI.open(helene2), filename: "helene-2-porte-serviette.png", content_type: "image/png")
accessory2.save
puts "helene : ok"

#Mona
accessory3.photos.attach(io: URI.open(mona1), filename: "mona-lampe-1.png", content_type: "image/png")
accessory3.photos.attach(io: URI.open(mona2), filename: "mona-lampe-2.png", content_type: "image/png")
accessory3.save
puts "mona : ok"

#Lou-lampe
accessory4.photos.attach(io: URI.open(louacc), filename: "lou-1-applique.png", content_type: "image/png")
accessory4.save
puts "lou : ok"

accessory5.photos.attach(io: URI.open(augusta1), filename: "augusta-1-chaise", content_type: "image/jpg")
accessory5.photos.attach(io: URI.open(augusta2), filename: "augusta-2-chaise", content_type: "image/jpg")

puts "Seed des accessories photos.attach : OK!"

# ------------ Photos des réalisations ------------------
puts "Starting seed des realisations photos.attach"

realisation1.photos.attach(io: URI.open(friedland1), filename: "friedland-decoration-1", content_type: "image/jpg")
realisation1.photos.attach(io: URI.open(friedland2), filename: "friedland-decoration-2", content_type: "image/jpg")
realisation1.photos.attach(io: URI.open(friedland3), filename: "friedland-decoration-3", content_type: "image/jpg")
realisation1.photos.attach(io: URI.open(friedland4), filename: "friedland-decoration-4", content_type: "image/jpg")
realisation1.photos.attach(io: URI.open(friedland5), filename: "friedland-decoration-5", content_type: "image/jpg")

puts "Seed des realisations photos.attach: OK!"

puts "Fin des seeds : everything is updated !"
