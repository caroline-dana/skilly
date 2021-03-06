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
Skill.destroy_all

def get_image(image)
  File.open(File.join(File.dirname(__FILE__), "../app/assets/images/#{image}"))
end

puts 'creating user 1'
user_1 = User.create!(first_name: "Aurore", last_name: "Gosset", email: "auroregosset.pro@gmail.com", password: "mdpmdp", job_wanted: "Product Owner", languages: "Français Anglais", years_of_experience: 8)
puts 'created Aurore'

puts 'seeding companies'
# Blablacar
company_1 = Company.create(
  name: "Blablacar",
  city: "Paris",
  employees: 700,
  description: "Avec plus de 100 millions de membres dans 22 pays, BlaBlaCar rassemble la plus large communauté de covoiturage longue distance au monde. La plateforme met en relation des conducteurs voyageant avec des places libres et des passagers se rendant dans la même direction. Ils partagent un trajet et les frais qui y sont liés. Avec l’intégration de bus et du covoiturage courte-distance à sa plateforme, BlaBlaCar souhaite devenir la place de marché de référence de la mobilité partagée. Pratique, économique, conviviale et responsable, partout où il y a une route, il y a un BlaBlaCar.",
  recruiter_message: "Si tu es un team pleayer qui veut changer le futur de la mobilité, rejoins-nous !"
)

file = get_image("blablacar.png")
company_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
company_1.save!

# Skello
company_2 = Company.create(
  name: "Skello",
  city: "Paris",
  employees: 150,
  description: "Skello est une société européenne qui a pour mission de réinventer l’expérience de travail des équipes sur le terrain en leur permettant de mieux anticiper, s’organiser et communiquer. Ceci grâce à une technologie collaborative et intuitive. L’ambition de Skello est d’être la solution de référence pour toutes les équipes de terrain en Europe. Pour cela, une levée de fonds en Série B de 40M€ a été réalisée auprès de fonds experts dans le domaine (Partech, Aglaé Ventures & XAnge) pour apporter toujours plus de valeur à ses clients grâce de nouvelles fonctionnalités et s’ouvrir à de nouveaux secteurs d’activités, au delà des secteurs historiques : l'hospitality, le retail et la santé.",
  recruiter_message: "Si tu as envie de déplacer des montagnes avec nous, n'attends plus, postule !"
)

file = get_image("logo-skello.png")
company_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
company_2.save!

# Pelico
company_3 = Company.create(
  name: "Pelico",
  city: "Paris",
  employees: 50,
  description: "Pelico aide les manufacturers à améliorer leurs performances opérationnelles grâce à la data. La data reste une source de valeur inexploitée pour les manufacturers: les entreprises qui les exploitent avec succès dans leurs opérations constatent des niveaux d'efficacité inégalés grâce à des informations plus granulaires et à une prise de décision quotidienne optimale.",
  recruiter_message: "Prêt.e pour une step up dans ta carrière? Rejoins-nous !"
)

file = get_image("pelico-logo.png")
company_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
company_3.save!


# 360Learning
company_4 = Company.create(
  name: "360 Learning",
  city: "Paris",
  employees: 300,
  description: "360Learning permet aux équipes Formation de piloter la culture et décupler la croissance de l’entreprise grâce au Collaborative Learning. La plateforme 360Learning intègre le pouvoir du collaboratif au cœur d’un LMS moderne pour miser sur l'intelligence collective.",
  recruiter_message: "A la recherche de la perle rare avec une connaissance solide en EdTech et l'envie de faire bouger les choses !"
)

file = get_image("360learning-logo.png")
company_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
company_4.save!

# Lydia
company_5 = Company.create(
  name: "Lydia",
  city: "Paris",
  employees: 200,
  description: "Lydia a pour mission de rendre l’expérience du paiement aussi simple que possible, pour tous. En exploitant le meilleur des nouvelles technologies pour créer des solutions de paiement mobile intuitives, sécurisées et surtout universelles. Les services proposés sont nombreux : carte de paiement, paiement mobile sans contact, cagnottes, comptes partagés… Il y en a pour tous les goûts ! Lancée en 2013, Lydia est aujourd’hui leader du paiement mobile et compte plus de 3 millions d'utilisateurs en Europe (et plus de 4000 nouveaux chaque jour). Lydia est la 22ème licorne de la French Tech ! ",
  recruiter_message: "Nous cherchons des talents pour nous inspirer et que nous inspirons. Rejoins-nous, aide-nous à construire une application parfaite"
)

file = get_image("logo-lydia.png")
company_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
company_5.save!

# Altice Media
company_6 = Company.create(
  name: "Altice Media",
  city: "Paris",
  employees: 200,
  description: "Altice a pour mission de rendre l’expérience du paiement aussi simple que possible, pour tous. En exploitant le meilleur des nouvelles technologies pour créer des solutions de paiement mobile intuitives, sécurisées et surtout universelles. Les services proposés sont nombreux : carte de paiement, paiement mobile sans contact, cagnottes, comptes partagés… Il y en a pour tous les goûts ! Lancée en 2013, Lydia est aujourd’hui leader du paiement mobile et compte plus de 3 millions d'utilisateurs en Europe (et plus de 4000 nouveaux chaque jour). Lydia est la 22ème licorne de la French Tech ! ",
  recruiter_message: "Nous cherchons des talents pour nous inspirer et que nous inspirons. Rejoins-nous, aide-nous à construire une application parfaite"
)

file = get_image("Altice_logo.png")
company_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
company_6.save!

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
hard_skill_3 = Skill.create(name: "Agile", category: "hard_skill")
hard_skill_4 = Skill.create(name: "SCRUM", category: "hard_skill")
hard_skill_5 = Skill.create(name: "Data analysis", category: "hard_skill")
hard_skill_6 = Skill.create(name: "CRM", category: "hard_skill")
hard_skill_7 = Skill.create(name: "Relation Client", category: "hard_skill")
hard_skill_8 = Skill.create(name: "Vente", category: "hard_skill")
hard_skill_9 = Skill.create(name: "Stratégie", category: "hard_skill")
hard_skill_10 = Skill.create(name: "Ruby on Rails", category: "hard_skill")
hard_skill_11 = Skill.create(name: "Front-end HTML CSS JS", category: "hard_skill")
hard_skill_12 = Skill.create(name: "Business development", category: "hard_skill")
hard_skill_13 = Skill.create(name: "Pack office", category: "hard_skill")
hard_skill_14 = Skill.create(name: "Python", category: "hard_skill")
hard_skill_15 = Skill.create(name: "Marketing", category: "hard_skill")

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
value_11 = Skill.create(name: "Proximité", category: "values")
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
  description: "En tant que chef de produit pour l'automatisation du marketing, vous serez chargé de construire les meilleurs outils du secteur pour soutenir nos efforts d'acquisition. Intégré dans une équipe, travaillant avec des ingénieurs seniors et des data scientists, vous devrez construire l'avenir de nos outils de marketing. Vous serez responsable de l'ensemble du projet, de la définition de la stratégie à la feuille de route et à l'expédition des fonctionnalités.
  - Recueillir des insights sur les problématiques Marketing et les traduire en opportunités actionnables qui permettraient d'améliorer leurs performances.
  - Définir la stratégie et l'ambition associée
  - Construire la feuille de route associée pour la réaliser
  - Collaborer avec l'ingénierie au sein d'une équipe pour exécuter la feuille de route.
  - Communiquer sur le plan de l'équipe et les réalisations au sein de BlaBlaCar.",
  languages: "Français Anglais",
  years_of_experience: "5",
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("blablacar.png")
job_offer_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_1.save!

# Skello
job_offer_2 = JobOffer.new(
  job_title: "Product Owner",
  company: company_2,
  city: "Paris",
  contracttype: "CDI",
  description: "En tant que premier Product Owner de l'équipe, vous jouerez un rôle clé dans l'évolution de notre stratégie de croissance et aurez l'opportunité d'apporter de la valeur à Skello dès le premier jour !
  - Analyser nos performances : vous identifiez les principaux et pain points sur nos chemins de conversion avec des données qualitatives & quantitatives et mesurez l'impact de nouvelles actions.
  - Définir la feuille de route de conversion du site web/des landings: vous identifiez & priorisez les projets, fonctionnalités & idées pertinentes pour augmenter notre conversion pour nos 5 marchés (France, Espagne, Allemagne, Suisse & Belgique).
  - Améliorer les KPI de conversion : vous développez une méthode de test A/B pour tester de nouvelles idées, obtenir des insights et améliorer continuellement les taux de conversion du site web (landing pages), mais aussi sur notre produit (post sign-up).",
  languages: "Français Anglais",
  years_of_experience: "5",
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("logo-skello.png")
job_offer_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_2.save!

# Pelico
job_offer_3 = JobOffer.new(
  job_title: "Product Owner",
  company: company_3,
  city: "Paris",
  contracttype: "CDI",
  description: "En tant que Product Owner, vous serez le garant du développement des fonctionnalités de l'équipe et menerez votre équipe vers la réalisation des objectifs de votre roadmap.
  - Gérer et prioriser votre roadmap en collaboration avec le CPO et le Senior Product Manager.
  - En partenariat avec les Product Designers, mener des initiatives de découverte de produits pour identifier et comprendre en profondeur les besoins, les pain points des utilisateurs, les opportunités pour Pelico.
  - Imaginer des fonctionnalités pour répondre à notre vision et aux besoins des clients tout en assurant la conformité avec la feuille de route du produit.
  - Résoudre des problèmes et créer de la valeur : nous recherchons des personnes dont l'objectif est d'apporter de la valeur à nos utilisateurs, en formulant des problèmes complexes, en définissant une vision convaincante et en menant au résultat.",
  languages: "Français Anglais",
  years_of_experience: "7",
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("pelico-logo.png")
job_offer_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_3.save!

# 360 Learning
job_offer_4 = JobOffer.new(
  job_title: "Product Owner",
  company: company_4,
  city: "Paris",
  contracttype: "CDI",
  description: "Notre équipe Produit est composée de Product Managers et Product Owners. Chaque Product Manager travaille avec un Product Designer et 3 à 6 Software Engineers sur une feuille de route ambitieuse. Les Product Managers s'engagent à maintenir notre avance en matière d'apprentissage collaboratif.
  - Rédiger les spécifications des fonctionnalités et les user stories
  - Gérer la roadmap et le product backlog de votre équipe.
  - Assurer la livraison efficace et en temps voulu des nouvelles fonctionnalités
  - Assister aux users feedbacks et adapter les solutions en conséquence
  - Collaborer avec d'autres stakeholders clés comme les autres Product Managers, les Engineering Managers et les Product Designers",
  languages: "Français Anglais",
  years_of_experience: "9",
  question1: "Quelle méthode privilégiez vous ? Scrum, Kanban, Scrumban ? Autres ?",
  question2: "Comment collectez-vous les retours utilisateurs ?",
  question3: "Comment validez-vous une nouvelle UX ou interface ?"
)

file = get_image("360learning-logo.png")
job_offer_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_4.save!

# Lydia
job_offer_5 = JobOffer.new(
  job_title: "Product Owner",
  company: company_5,
  city: "Paris",
  contracttype: "CDI",
  description: "Au sein de l'équipe produit, vous travaillerez sur un périmètre dédié de fonctionnalités et avec de nombreuses équipes de l'entreprise (data, juridique, marketing, tech, opérations...) pour améliorer la valeur apportée aux utilisateurs par vos fonctionnalités.
  - Comprendre les utilisateurs via des analyses de marché, des entretiens avec les utilisateurs, des analyses comportementales et une collaboration avec les équipes du service client et des ventes.
  - Surveiller les performances et la convivialité des fonctionnalités à l'aide d'analyses.
  - Communiquer en interne sur vos fonctionnalités, leurs évolutions et la vision du produit qu'elles portent.
  - S'assurer que vos fonctionnalités sont correctement communiquées aux utilisateurs, en collaboration avec l'équipe CRM et Marketing.
  - Participer à la définition de la feuille de route",
  languages: "Français Anglais",
  years_of_experience: "8",
  question1: "Préférez-vous Scrum ou Kanban ?",
  question2: "Quelle place occupez-vous dans une team ?",
  question3: "Quelle est votre chanson préférée ?"
)

file = get_image("logo-lydia.png")
job_offer_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_5.save!

# Altice Media
job_offer_6 = JobOffer.new(
  job_title: "Product Owner",
  company: company_6,
  city: "Paris",
  contracttype: "CDI",
  description: "Au sein de l'équipe produit, vous travaillerez sur un périmètre dédié de fonctionnalités et avec de nombreuses équipes de l'entreprise (data, juridique, marketing, tech, opérations...) pour améliorer la valeur apportée aux utilisateurs par vos fonctionnalités.
  - Comprendre les utilisateurs via des analyses de marché, des entretiens avec les utilisateurs, des analyses comportementales et une collaboration avec les équipes du service client et des ventes.
  - Surveiller les performances et la convivialité des fonctionnalités à l'aide d'analyses.
  - Communiquer en interne sur vos fonctionnalités, leurs évolutions et la vision du produit qu'elles portent.
  - S'assurer que vos fonctionnalités sont correctement communiquées aux utilisateurs, en collaboration avec l'équipe CRM et Marketing.
  - Participer à la définition de la feuille de route",
  languages: "Français Anglais",
  years_of_experience: "8",
  question1: "Préférez-vous Scrum ou Kanban ?",
  question2: "Quelle place occupez-vous dans une team ?",
  question3: "Quelle est votre chanson préférée ?"
)

file = get_image("Altice_logo.png")
job_offer_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
job_offer_6.save!

puts 'seeding job offers done'

puts 'seeding job skills'
[job_offer_1, job_offer_2, job_offer_3, job_offer_4, job_offer_6].each do |job_offer|
  [soft_skill_4, soft_skill_5, soft_skill_13, hard_skill_14, hard_skill_15, hard_skill_3, value_4, value_5, value_6,].each do |skill|
    JobSkill.create(job_offer: job_offer, skill: skill)
  end
end

[soft_skill_7, soft_skill_2, soft_skill_3, hard_skill_6, hard_skill_8, hard_skill_9, value_1, value_2, value_3].each do |skill|
  JobSkill.create(job_offer: job_offer_5, skill: skill)
end
puts 'seeding job skills done'

puts 'seeding job likes'
# Lydia
job_like_5 = JobLike.create(user: user_1, job_offer: job_offer_5, status: true)
puts 'seeding job likes done'
