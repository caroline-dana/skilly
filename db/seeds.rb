# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
JobSkill.destroy_all
JobLike.destroy_all
UserLike.destroy_all
Match.destroy_all
JobOffer.destroy_all
User.destroy_all
Company.destroy_all

def get_image(image)
  File.open(File.join(File.dirname(__FILE__), "../app/assets/images/#{image}"))
end

puts 'creating user 1'
user_1 = User.create!(first_name: "Caroline", last_name: "Dana", email: "caroline.m.dana@gmail.com", password: "mdpmdp", job_wanted: "Product Owner", languages: "Français Anglais", years_of_experience: 8)
puts 'created Caroline'

puts 'seeding companies'
# Blablacar
company_1 = Company.create(
  name: "Blablacar",
  city: "Paris",
  employees: 700,
  description: "Avec plus de 100 millions de membres dans 22 pays, BlaBlaCar rassemble la plus large communauté de covoiturage longue distance au monde. La plateforme met en relation des conducteurs voyageant avec des places libres et des passagers se rendant dans la même direction. Ils partagent un trajet et les frais qui y sont liés. Avec l’intégration de bus et du covoiturage courte-distance à sa plateforme, BlaBlaCar souhaite devenir la place de marché de référence de la mobilité partagée. Pratique, économique, conviviale et responsable, partout où il y a une route, il y a un BlaBlaCar.",
  recruiter_message: "Si tu es un team pleayer qui veut changer le futur de la mobilité, rejoins-nous !"
)

# Skello
company_2 = Company.create(
  name: "Skello",
  city: "Paris",
  employees: 150,
  description: "Skello est une société européenne qui a pour mission de réinventer l’expérience de travail des équipes sur le terrain en leur permettant de mieux anticiper, s’organiser et communiquer. Ceci grâce à une technologie collaborative et intuitive. L’ambition de Skello est d’être la solution de référence pour toutes les équipes de terrain en Europe. Pour cela, une levée de fonds en Série B de 40M€ a été réalisée auprès de fonds experts dans le domaine (Partech, Aglaé Ventures & XAnge) pour apporter toujours plus de valeur à ses clients grâce de nouvelles fonctionnalités et s’ouvrir à de nouveaux secteurs d’activités, au delà des secteurs historiques : l'hospitality, le retail et la santé.",
  recruiter_message: "Si tu as envie de déplacer des montagnes avec nous, n'attends plus, postule !"
)

# Lydia
company_3 = Company.create(
  name: "Lydia",
  city: "Paris",
  employees: 200,
  description: "Lydia a pour mission de rendre l’expérience du paiement aussi simple que possible, pour tous. En exploitant le meilleur des nouvelles technologies pour créer des solutions de paiement mobile intuitives, sécurisées et surtout universelles. Les services proposés sont nombreux : carte de paiement, paiement mobile sans contact, cagnottes, comptes partagés… Il y en a pour tous les goûts ! Lancée en 2013, Lydia est aujourd’hui leader du paiement mobile et compte plus de 3 millions d'utilisateurs en Europe (et plus de 4000 nouveaux chaque jour). Lydia est la 22ème licorne de la French Tech ! ",
  recruiter_message: "Nous cherchons des talents pour nous inspirer et que nous inspirons. Rejoins-nous, aide-nous à construire une application parfaite"
)
puts 'seeding companies done'

puts 'seeding skills'
soft_skill_1 = Skill.create(name: "Esprit d'équipe", category: "soft_skill")
soft_skill_2 = Skill.create(name: "Organisation", category: "soft_skill")
soft_skill_3 = Skill.create(name: "Créativité", category: "soft_skill")
soft_skill_4 = Skill.create(name: "Patience", category: "soft_skill")
soft_skill_5 = Skill.create(name: "Curiosité", category: "soft_skill")
soft_skill_6 = Skill.create(name: "Problem solving", category: "soft_skill")
soft_skill_7 = Skill.create(name: "Rigueur", category: "soft_skill")
soft_skill_8 = Skill.create(name: "Enthousiasme", category: "soft_skill")
soft_skill_9 = Skill.create(name: "Management", category: "soft_skill")
soft_skill_10 = Skill.create(name: "Empathie", category: "soft_skill")
soft_skill_11 = Skill.create(name: "Flexibilité", category: "soft_skill")
soft_skill_12 = Skill.create(name: "Gestion du temps", category: "soft_skill")
soft_skill_13 = Skill.create(name: "Négociation", category: "soft_skill")
soft_skill_14 = Skill.create(name: "Intelligence émotionnelle", category: "soft_skill")
soft_skill_15 = Skill.create(name: "Motivation", category: "soft_skill")

hard_skill_1 = Skill.create(name: "Software development", category: "hard_skill")
hard_skill_2 = Skill.create(name: "Bases User Stories", category: "hard_skill")
hard_skill_3 = Skill.create(name: "Methodologie Agile", category: "hard_skill")
hard_skill_4 = Skill.create(name: "SCRUM", category: "hard_skill")
hard_skill_5 = Skill.create(name: "Data analysis", category: "hard_skill")
hard_skill_6 = Skill.create(name: "CRM", category: "hard_skill")
hard_skill_7 = Skill.create(name: "Relation Client", category: "hard_skill")
hard_skill_8 = Skill.create(name: "Vente", category: "hard_skill")
hard_skill_9 = Skill.create(name: "Business Stratégie", category: "hard_skill")
hard_skill_10 = Skill.create(name: "Ruby on Rails", category: "hard_skill")
hard_skill_11 = Skill.create(name: "Front-end HTML CSS JS", category: "hard_skill")
hard_skill_12 = Skill.create(name: "Business developement", category: "hard_skill")
hard_skill_13 = Skill.create(name: "Pack office", category: "hard_skill")
hard_skill_14 = Skill.create(name: "Python", category: "hard_skill")
hard_skill_15 = Skill.create(name: "Marketing produit", category: "hard_skill")

value_1 = Skill.create(name: "Loyauté", category: "values")
value_2 = Skill.create(name: "Bienveillance", category: "values")
value_3 = Skill.create(name: "Humilité", category: "values")
value_4 = Skill.create(name: "Ténacité", category: "values")
value_5 = Skill.create(name: "Humilité", category: "values")
value_6 = Skill.create(name: "Ownership", category: "values")
value_7 = Skill.create(name: "Partage", category: "values")
value_8 = Skill.create(name: "Engagement", category: "values")
value_9 = Skill.create(name: "Passion", category: "values")
value_10 = Skill.create(name: "Culture résultat", category: "values")
value_11 = Skill.create(name: "proximité", category: "values")
value_12 = Skill.create(name: "Liberté d'expression", category: "values")
value_13 = Skill.create(name: "Responsabilisation", category: "values")
value_14 = Skill.create(name: "Indépendance", category: "values")
value_15 = Skill.create(name: "Respect", category: "values")
puts 'seeding skills done'

puts 'seeding user skills'
UserSkill.create(user: user_1, skill: soft_skill_1)
UserSkill.create(user: user_1, skill: soft_skill_2)
UserSkill.create(user: user_1, skill: soft_skill_3)

UserSkill.create(user: user_1, skill: hard_skill_7)
UserSkill.create(user: user_1, skill: hard_skill_9)
UserSkill.create(user: user_1, skill: hard_skill_13)

UserSkill.create(user: user_1, skill: value_1)
UserSkill.create(user: user_1, skill: value_2)
UserSkill.create(user: user_1, skill: value_3)
puts 'seeding user skills done'

puts 'seeding job offers'

# Blablacar
job_offer_1 = JobOffer.new(
  job_title: "Product Owner",
  company: company_1,
  city: "Paris",
  contracttype: "CDI",
  description: "Vos missions : Recueillir des insights sur les problématiques Marketing et les traduire en opportunités.
  Définir la stratégie et l'ambition associée. Construire la feuille de route des fonctionnalités.
  Collaborer avec l'ingénierie au sein d'une équipe pour exécuter la feuille de route.
  Communiquer sur le plan de l'équipe et les réalisations au sein de BlaBlaCar.",
  languages: "Français Anglais",
  years_of_experience: "5",
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("logo-blablacar.png")
job_offer_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_1.save!

# Skello
job_offer_2 = JobOffer.new(
  job_title: "Product Owner",
  company: company_2,
  city: "Paris",
  contracttype: "CDI",
  description: "Vos missions : Analyser nos performances, identifiez les principaux pain points. Définir la feuille de route de conversion du site web.
  Identifiez & priorisez les projets, fonctionnalités & idées pertinentes. Améliorer les KPI de conversion, méthode de test A/B. Obtenir des insights sur notre produit.
  S'assurer que nos pages de destination soient à jour.",
  languages: "Français Anglais",
  years_of_experience: "5",
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("logo-skello.png")
job_offer_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_2.save!

# Lydia
job_offer_3 = JobOffer.new(
  job_title: "Product Owner",
  company: company_3,
  city: "Paris",
  contracttype: "CDI",
  description: "Vos missions : Surveiller les performances à l'aide d'analyses. Définir les évolutions et les améliorations du produit.
  Rédiger des User Stories. Tester les nouvelles fonctionnalités. Créer la documentation sur les fonctionnalités.
  Communiquer en interne sur les fonctionnalités et leurs évolutions. Participer à la définition de la feuille de route.",
  languages: "Français Anglais",
  years_of_experience: "8",
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("logo-lydia.png")
job_offer_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_3.save!

puts 'seeding job offers done'

puts 'seeding job skills'
[job_offer_1, job_offer_2].each do |job_offer|
  [soft_skill_4, soft_skill_5, soft_skill_6, hard_skill_1, hard_skill_2, hard_skill_3, value_4, value_5, value_6,].each do |skill|
    JobSkill.create(job_offer: job_offer, skill: skill)
  end
end

[soft_skill_1, soft_skill_2, soft_skill_3, hard_skill_7, hard_skill_9, hard_skill_13, value_1, value_2, value_3].each do |skill|
  JobSkill.create(job_offer: job_offer_3, skill: skill)
end
puts 'seeding job skills done'

puts 'seeding job likes'
# Lydia
job_like_3 = JobLike.create(user: user_1, job_offer: job_offer_3, status: true)
puts 'seeding job likes done'
