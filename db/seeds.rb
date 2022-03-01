# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
JobOffer.destroy_all
Company.destroy_all
User.destroy_all

def get_image(image)
  File.open(File.join(File.dirname(__FILE__), "../app/assets/images/#{image}"))
end

puts 'creating user 1'
user_1 = User.create!(first_name: "Caroline", last_name: "Dana", email: "caroline.m.dana@gmail.com", password: "mdpmdp1", job_wanted: "Product Owner", hard_skills: "Logiciel SEO, CRM, Relation client", soft_skills: "Rigueur, Esprit d'équipe, Problem solving, Communication, Enthousiasme", languages: "Français, Anglais", years_of_experience: 8, values: "Loyauté, Bienveillance, Ownership, Humilité, Empathie")
puts 'created Caroline'

puts 'seeding companies'
# Lydia
company_1 = Company.create(
  name: "Lydia",
  city: "Paris",
  employees: 200,
  description: "Lydia a pour mission de rendre l’expérience du paiement aussi simple que possible, pour tous. En exploitant le meilleur des nouvelles technologies pour créer des solutions de paiement mobile intuitives, sécurisées et surtout universelles. Les services proposés sont nombreux : carte de paiement, paiement mobile sans contact, cagnottes, comptes partagés… Il y en a pour tous les goûts ! Lancée en 2013, Lydia est aujourd’hui leader du paiement mobile et compte plus de 3 millions d'utilisateurs en Europe (et plus de 4000 nouveaux chaque jour). Lydia est la 22ème licorne de la French Tech ! ",
  recruiter_message: "Nous cherchons des talents pour nous inspirer et que nous inspirons. Rejoins-nous, aide-nous à construire une application parfaite"
)

# Skello
company_2 = Company.create(
  name: "Skello",
  city: "Paris",
  employees: 150,
  description: "Skello est une société européenne qui a pour mission de réinventer l’expérience de travail des équipes sur le terrain en leur permettant de mieux anticiper, s’organiser et communiquer. Ceci grâce à une technologie collaborative et intuitive. L’ambition de Skello est d’être la solution de référence pour toutes les équipes de terrain en Europe. Pour cela, une levée de fonds en Série B de 40M€ a été réalisée auprès de fonds experts dans le domaine (Partech, Aglaé Ventures & XAnge) pour apporter toujours plus de valeur à ses clients grâce de nouvelles fonctionnalités et s’ouvrir à de nouveaux secteurs d’activités, au delà des secteurs historiques : l'hospitality, le retail et la santé.",
  recruiter_message: "Si tu as envie de déplacer des montagnes avec nous, n'attends plus, postule !"
)

# Blablacar
company_3 = Company.create(
  name: "Blablacar",
  city: "Paris",
  employees: 700,
  description: "Avec plus de 100 millions de membres dans 22 pays, BlaBlaCar rassemble la plus large communauté de covoiturage longue distance au monde. La plateforme met en relation des conducteurs voyageant avec des places libres et des passagers se rendant dans la même direction. Ils partagent un trajet et les frais qui y sont liés. Avec l’intégration de bus et du covoiturage courte-distance à sa plateforme, BlaBlaCar souhaite devenir la place de marché de référence de la mobilité partagée. Pratique, économique, conviviale et responsable, partout où il y a une route, il y a un BlaBlaCar.",
  recruiter_message: "Si tu es un team pleayer qui veut changer le futur de la mobilité, rejoins-nous !"
)

puts 'seeding companies done'

puts 'seeding job offers'
# Lydia
job_offer_1 = JobOffer.new(
  job_title: "Product Owner",
  city: "Paris",
  contracttype: "CDI",
  description: "Au sein de l'équipe produit, vous travaillerez sur un périmètre dédié de fonctionnalités et avec de nombreuses équipes de l'entreprise (data, juridique, marketing, tech, opérations...) pour améliorer la valeur apportée aux utilisateurs par vos fonctionnalités. Les missions :
  Comprendre les utilisateurs via des analyses de marché, des entretiens avec les utilisateurs, des analyses comportementales et une collaboration avec les équipes du service client et des ventes.
  Comprendre le paysage concurrentiel de vos fonctionnalités
  Surveiller les performances et la convivialité des fonctionnalités à l'aide d'analyses.
  Définir les évolutions et les améliorations du produit, en collaboration avec un concepteur de produits et un chef de produit technique.
  Rédiger des User Stories et les présenter à l'équipe.
  Suivez la mise en œuvre technique des évolutions de votre produit.
  Tester vos fonctionnalités et itérer
  Créer et maintenir la documentation sur vos fonctionnalités
  Communiquer en interne sur vos fonctionnalités, leurs évolutions et la vision du produit qu'elles portent.
  S'assurer que vos fonctionnalités sont correctement communiquées aux utilisateurs, en collaboration avec l'équipe CRM et Marketing.
  Participer à la définition de la feuille de route",
  hard_skills: "CRM, Analytics, Relation client, Software development, Bases UX",
  soft_skills: "Rigueur, Problem solving, Esprit d'équipe, Organisation, Enthousiasme",
  languages: "Français, Anglais",
  years_of_experience: "8",
  company: company_1,
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("logo-lydia.png")
job_offer_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_1.save!

# Skello
job_offer_2 = JobOffer.new(
  job_title: "Product Owner",
  city: "Paris",
  contracttype: "CDI",
  description: "En tant que premier Product Growth Manager de l'équipe, vous jouerez un rôle clé dans l'évolution de notre stratégie de croissance et aurez l'opportunité d'apporter de la valeur à Skello dès le premier jour ! Vos missions :
  Analyser nos performances : vous identifiez les principaux et pain points sur nos chemins de conversion avec des données qualitatives & quantitatives et mesurez l'impact de nouvelles actions.
  Définir la feuille de route de conversion du site web/des landings: vous identifiez & priorisez les projets, fonctionnalités & idées pertinentes pour augmenter notre conversion pour nos 5 marchés (France, Espagne, Allemagne, Suisse & Belgique).
  Améliorer les KPI de conversion : vous développez une méthode de test A/B pour tester de nouvelles idées, obtenir des insights et améliorer continuellement les taux de conversion du site web (landing pages), mais aussi sur notre produit (post sign-up).
  S'assurer que nos pages de destination sont à jour et localisées pour chaque marché en fonction du positionnement de notre marque et de nos dernières fonctionnalités/partenariats : vous travaillez en étroite collaboration avec le marketing, le marketing produit et les équipes locales pour vous assurer que nos nouveaux produits ou fonctionnalités sont visibles, bien compris et qu'ils incitent les prospects à convertir.",
  hard_skills: "Logiciel SEO, CRM, Data analysis, Software development, Bases User stories",
  soft_skills: "Esprit d'équipe, Organisation, Créativité, Patient, Curiosité",
  languages: "Français, Anglais, Allemand",
  years_of_experience: "5",
  company: company_2,
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("logo-skello.png")
job_offer_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_2.save!

# Blablacar
job_offer_3 = JobOffer.new(
  job_title: "Product Owner",
  city: "Paris",
  contracttype: "CDI",
  description: "En tant que chef de produit pour l'automatisation du marketing, vous serez chargé de construire les meilleurs outils du secteur pour soutenir nos efforts d'acquisition. Intégré dans une équipe, travaillant avec des ingénieurs seniors et des data scientists, vous devrez construire l'avenir de nos outils de marketing. Vous serez responsable de l'ensemble du projet, de la définition de la stratégie à la feuille de route et à l'expédition des fonctionnalités. Vos missions :
  Recueillir des insights sur les problématiques Marketing et les traduire en opportunités actionnables qui permettraient d'améliorer leurs performances.
  Définir la stratégie et l'ambition associée.
  Construire la feuille de route associée pour la réaliser.
  Collaborer avec l'ingénierie au sein d'une équipe pour exécuter la feuille de route.
  Communiquer sur le plan de l'équipe et les réalisations au sein de BlaBlaCar.",
  hard_skills: "Software development, Bases User stories, Methodologie Agile, SCRUM",
  soft_skills: "Créativité, Esprit critique, Curieux, Communication, Esprit d'équipe",
  languages: "Français Anglais",
  years_of_experience: "5",
  company: company_3,
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("logo-blablacar.png")
job_offer_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_3.save!

puts 'seeding job offers done'
