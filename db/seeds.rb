# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning up the database...'
Offer.destroy_all

puts 'Seeding database...'
independant = Offer.create!(
  name: 'Indépendants',
  description: 'Pour les travailleurs indépendants',
  highlight: true,
  position: 0,
  plans_attributes: [
    {
      name: 'Basic',
      price_cents: 900,
      description: "Les services essentiels pour gérer votre activité d'indépendant",
      position: 0,
      image_path: 'basic.png',
      options_attributes: [
        { description: '1 membre et 1 carte One Mastercard Business inclus' },
        { description: '<b>30</b> prélèvements et virements instantanés' },
        { description: 'Support 7j/7 et 24h/24' },
      ]
    },
    {
      name: 'Smart',
      price_cents: 1900,
      description: "Le compte complet pour faciliter votre gestion bancaire et comptable",
      position: 1,
      highlight: true,
      image_path: 'smart.png',
      options_attributes: [
        { description: '1 membre et 1 carte One Mastercard Business et un accès comptable inclus' },
        { description: '<b>60</b> prélèvements et virements instantanés et <b>2</b> chèques encaissés' },
        {
          description: 'Pack pré-comptabilité',
          detail: 'Traitement des factures, reçus certifiés, auto-détection de la TVA, labels personnalisés'
        },
      ]
    },
    {
      name: 'Premium',
      price_cents: 3900,
      description: "Le forfait qui inclut toutes nos fonctionnalités et un support prioritaire",
      position: 2,
      image_path: 'premium.png',
      options_attributes: [
        { description: '1 membre et 1 carte One Mastercard Business et un accès comptable inclus' },
        { description: '<b>100</b> prélèvements et virements instantanés et <b>5</b> chèques encaissés' },
        {
          description: 'Pack pré-comptabilité',
          detail: 'Traitement des factures, reçus certifiés, auto-détection de la TVA, labels personnalisés'
        },
      ]
    }
  ]
)

startup = Offer.create!(
  name: 'PME et Startups',
  description: 'Pour les PME et les startups',
  position: 1,
  plans_attributes: [
    {
      name: 'Basic',
      price_cents: 1900,
      description: "Les services essentiels pour gérer votre activité de PME et de startup",
      position: 0,
      image_path: 'basic.png',
      options_attributes: [
        { description: '2 membres et 2 cartes One Mastercard Business inclus' },
        { description: '<b>50</b> prélèvements et virements instantanés' },
        { description: 'Support 7j/7 et 24h/24' },
      ]
    },
    {
      name: 'Smart',
      price_cents: 3900,
      description: "Le compte complet pour faciliter votre gestion bancaire et comptable",
      position: 1,
      highlight: true,
      image_path: 'smart.png',
      options_attributes: [
        { description: '2 membres et 2 cartes One Mastercard Business et un accès comptable inclus' },
        { description: '<b>60</b> prélèvements et virements instantanés et <b>4</b> chèques encaissés' },
        {
          description: 'Pack pré-comptabilité',
          detail: 'Traitement des factures, reçus certifiés, auto-détection de la TVA, labels personnalisés'
        },
      ]
    },
    {
      name: 'Premium',
      price_cents: 8900,
      description: "Le forfait qui inclut toutes nos fonctionnalités et un support prioritaire",
      position: 2,
      image_path: 'premium.png',
      options_attributes: [
        { description: '5 membres et 5 cartes One Mastercard Business et un accès comptable inclus' },
        { description: '<b>300</b> prélèvements et virements instantanés et <b>10</b> chèques encaissés' },
        {
          description: 'Pack pré-comptabilité',
          detail: 'Traitement des factures, reçus certifiés, auto-détection de la TVA, labels personnalisés'
        },
      ]
    }
  ]
)

creator = Offer.create!(
  name: "Créateurs d'Entreprises",
  description: "Pour les créateurs d'entreprises",
  position: 2,
  plans_attributes: [
    {
      name: 'Basic',
      price_cents: 3900,
      description: "Les services essentiels pour gérer votre activité de créateur d'entreprise",
      position: 0,
      image_path: 'basic.png',
      options_attributes: [
        { description: '5 membres et 5 cartes One Mastercard Business inclus' },
        { description: '<b>100</b> prélèvements et virements instantanés' },
        { description: 'Support 7j/7 et 24h/24' },
      ]
    },
    {
      name: 'Smart',
      price_cents: 6900,
      description: "Le compte complet pour faciliter votre gestion bancaire et comptable",
      position: 1,
      highlight: true,
      image_path: 'smart.png',
      options_attributes: [
        { description: '8 membres et 8 cartes One Mastercard Business et un accès comptable inclus' },
        { description: '<b>150</b> prélèvements et virements instantanés et <b>4</b> chèques encaissés' },
        {
          description: 'Pack pré-comptabilité',
          detail: 'Traitement des factures, reçus certifiés, auto-détection de la TVA, labels personnalisés'
        },
      ]
    },
    {
      name: 'Premium',
      price_cents: 10900,
      description: "Le forfait qui inclut toutes nos fonctionnalités et un support prioritaire",
      position: 2,
      image_path: 'premium.png',
      options_attributes: [
        { description: '10 membres et 10 cartes One Mastercard Business et un accès comptable inclus' },
        { description: '<b>350</b> prélèvements et virements instantanés et <b>50</b> chèques encaissés' },
        {
          description: 'Pack pré-comptabilité',
          detail: 'Traitement des factures, reçus certifiés, auto-détection de la TVA, labels personnalisés'
        },
      ]
    }
  ]
)

puts 'Database seeded!'
