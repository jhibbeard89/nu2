# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Database seeding ...'
Appointment.delete_all
RegistrationOffice.delete_all
Bank.delete_all
Insurance.delete_all

charlottenburg = RegistrationOffice.create(
  office_name: 'Bürgeramt Charlottenburg',
  address: 'Wilmersdorferstrasse 46, 10627 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
kreuzberg = RegistrationOffice.create(
  office_name: 'Bürgeramt Kreuzberg',
  address: 'Yorckstraße 4-11, 10965 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
mitte = RegistrationOffice.create(
  office_name: 'Bürgeramt Mitte',
  address: 'Karl-Marx-Allee 31, 10178 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
neukoelln = RegistrationOffice.create(
  office_name: 'Bürgeramt Neukölln',
  address: 'Donaustr. 29, 12043 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
pankow = RegistrationOffice.create(
  office_name: 'Bürgeramt Pankow',
  address: 'Breite Str. 24A - 26, 13187 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
wedding = RegistrationOffice.create(
  office_name: 'Bürgeramt Wedding',
  address: 'Osloer Str. 36, 13359 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)


puts 'Registration offices created.'
puts 'Now seeding appointments ...'


Appointment.create(
  date: DateTime.new(2021,9,15,8,30,0),
  documents_uploaded: false,
  registration_office_id: charlottenburg.id
)
Appointment.create(
  date: DateTime.new(2021,9,15,11,00,0),
  documents_uploaded: false,
  registration_office_id: charlottenburg.id
)
Appointment.create(
  date: DateTime.new(2021,9,16,14,00,0),
  documents_uploaded: false,
  registration_office_id: charlottenburg.id
)
Appointment.create(
  date: DateTime.new(2021,9,17,15,30,0),
  documents_uploaded: false,
  registration_office_id: charlottenburg.id
)


Appointment.create(
  date: DateTime.new(2021,9,13,10,30,0),
  documents_uploaded: false,
  registration_office_id: kreuzberg.id
)
Appointment.create(
  date: DateTime.new(2021,9,15,12,00,0),
  documents_uploaded: false,
  registration_office_id: kreuzberg.id
)
Appointment.create(
  date: DateTime.new(2021,9,15,12,30,0),
  documents_uploaded: false,
  registration_office_id: kreuzberg.id
)
Appointment.create(
  date: DateTime.new(2021,9,17,11,30,0),
  documents_uploaded: false,
  registration_office_id: kreuzberg.id
)


Appointment.create(
  date: DateTime.new(2021,9,16,11,00,0),
  documents_uploaded: false,
  registration_office_id: mitte.id
)
Appointment.create(
  date: DateTime.new(2021,9,16,12,30,0),
  documents_uploaded: false,
  registration_office_id: mitte.id
)
Appointment.create(
  date: DateTime.new(2021,9,16,15,30,0),
  documents_uploaded: false,
  registration_office_id: mitte.id
)
Appointment.create(
  date: DateTime.new(2021,9,17,9,30,0),
  documents_uploaded: false,
  registration_office_id: mitte.id
)


Appointment.create(
  date: DateTime.new(2021,9,13,8,00,0),
  documents_uploaded: false,
  registration_office_id: neukoelln.id
)
Appointment.create(
  date: DateTime.new(2021,9,14,14,30,0),
  documents_uploaded: false,
  registration_office_id: neukoelln.id
)
Appointment.create(
  date: DateTime.new(2021,9,15,15,00,0),
  documents_uploaded: false,
  registration_office_id: neukoelln.id
)
Appointment.create(
  date: DateTime.new(2021,9,16,12,00,0),
  documents_uploaded: false,
  registration_office_id: neukoelln.id
)


Appointment.create(
  date: DateTime.new(2021,9,13,14,00,0),
  documents_uploaded: false,
  registration_office_id: pankow.id
)
Appointment.create(
  date: DateTime.new(2021,9,13,14,30,0),
  documents_uploaded: false,
  registration_office_id: pankow.id
)
Appointment.create(
  date: DateTime.new(2021,9,17,10,00,0),
  documents_uploaded: false,
  registration_office_id: pankow.id
)
Appointment.create(
  date: DateTime.new(2021,9,17,12,00,0),
  documents_uploaded: false,
  registration_office_id: pankow.id
)


Appointment.create(
  date: DateTime.new(2021,9,14,10,00,0),
  documents_uploaded: false,
  registration_office_id: wedding.id
)
Appointment.create(
  date: DateTime.new(2021,9,15,9,30,0),
  documents_uploaded: false,
  registration_office_id: wedding.id
)
Appointment.create(
  date: DateTime.new(2021,9,16,11,30,0),
  documents_uploaded: false,
  registration_office_id: wedding.id
)
Appointment.create(
  date: DateTime.new(2021,9,17,14,00,0),
  documents_uploaded: false,
  registration_office_id: wedding.id
)


puts 'Appointments succesfully created.'

banks = Bank.create([{name: "N26", english_customer_support: 8, signup_process: 9, bank_fees: 10, atm_fees: 6, banking_features: 8, summary: "As one of Europe's first mobile banks, N26 lets you manage your entire financial life from your phone. It offers a free Debit Mastercard, free ATM withdrawals, an intuitive app design and English-speaking customer service.", image: "n26.png" },
     {name: "Commerzbank", english_customer_support: 5, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "For most expats, Commerzbank’s more comprehensive services become relevant if staying in Germany longer-term. We suggest starting with N26 and then considering Commerzbank as and when you can benefit from their traditional banking services.", image: "commerzbank.png"},
      {name: "Deutsche Bank", english_customer_support: 7, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "While similar to Commerzbank in its offering, Deutsche Bank is arguably slightly less geared towards expat customers. Having browsed their materials extensively, we found them to be the most ‘German’ of our four best banks in Germany.", image: "deutschebank.png"}])

public_insurances = Insurance.create([{name: "Techniker Krankenkasse", private: false, summary: "Great English-speaking sign-up process and support.", image: "tk.png" },
     {name: "AOK Baden Württemberg", private: false, summary: "Excellent range of services for elderly people.", image: "AOK.png"},
     {name: "Barmer Ersatzkasse", private: false, summary: "Highly rated customer service and helpline.", image: "barmer.png"}])

private_insurances = Insurance.create([{name: "DR-WALTER GmbH", private: true, summary: "Great option for short-term stays in Germany, business travellers and globetrotters. Consultants specializing in expatriates are available to assist.", image: "walter.png"},
    {name: "AXA Versicherungen", private: true, summary: "Large provider offering flexible packages for employees and independent workers, including five different international insurance policies.", image: "AXA.png"},
    {name: "Allianz Krankenversicherung", private: true, summary: "One of the largest three medical insurance companies in the world, with English speaking support services and optional add-ons such as maternity and dental coverage.", image: "allianz.png"}])

puts 'Seeding finished.'
