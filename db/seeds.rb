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

puts 'Appointments succesfully created.'

banks = Bank.create([{name: "N26", english_customer_support: 8, signup_process: 9, bank_fees: 10, atm_fees: 6, banking_features: 8, summary: "Marketed as Europe's first mobile bank, N26 allows you to manage your entire financial life on your phone. Its free Debit Mastercard, free ATM withdrawals, intuitive app and English-speaking customer service are unparalleled in Berlin. When coupled with the fact that there are no hidden fees and you can sign up online in just a few minutes, this is our favourite banking option in Germany." },
     {name: "Commerzbank", english_customer_support: 5, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "For most expats, Commerzbank’s more comprehensive services only become relevant if staying in Germany longer-term. Therefore, we suggest starting with N26 and then joining Commerzbank as and when you can benefit from their traditional banking services."},
      {name: "Deutsche Bank", english_customer_support: 7, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "While similar to Commerzbank in its offering, Deutsche Bank is arguably slightly less geared towards expat customers. Having browsed their materials extensively, we found them to be the most ‘German’ of our four best banks in Germany. For day-to-day use, the monthly account fee combined with only being able to use a limited number of ATMs are notable drawbacks for Deutsche Bank."}])

public_insurances = Insurance.create([{name: "Techniker Krankenkasse (TK)", private: false, summary: "Great English-speaking sign-up process and support.", image: "insurance1.png" },
     {name: "AOK Baden Württemberg", private: false, summary: "Really excellent range of services for elderly people.", image: "insurance2.png"}, 
     {name: "Barmer", private: false, summary: "Wodnerful customer service and help-line.", image: "insurance3.png"}])

private_insurances = Insurance.create([{name: "DR-WALTER", private: true, summary: "Excellent cover for young professionals", image: "insurance4.png"},
    {name: "AXA", private: true, summary: "Really good cover for retired professionals", image: "insurance5.png"}, 
    {name: "Allianz", private: true, summary: "Amazing all round long term cover", image: "insurance6.png"}])

puts 'Seeding finished.'
