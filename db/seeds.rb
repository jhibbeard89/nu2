# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Database seeding ...'
RegistrationOffice.delete_all
Bank.delete_all
Insurance.delete_all

RegistrationOffice.create(
  office_name: 'Bürgeramt Charlottenburg',
  address: 'Wilmersdorferstrasse 46, 10627 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Wilmersdorf',
  address: 'Hohenzollerndamm 177, 10713 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Kreuzberg',
  address: 'Yorckstraße 4-11, 10965 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Friedrichshain',
  address: 'Frankfurter Allee 35/37, 10247 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Lichtenberg',
  address: 'Normannenstr. 1-2, 10367 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Marzahn',
  address: 'Marzahner Promenade 11, 12679 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Mitte',
  address: 'Karl-Marx-Allee 31, 10178 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Wedding',
  address: 'Osloer Str. 36, 13359 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Tiergarten',
  address: 'Mathilde-Jacob-Platz 1, 10551 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Neukölln',
  address: 'Donaustr. 29, 12043 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Pankow',
  address: 'Breite Str. 24A - 26, 13187 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Prenzlauer Berg',
  address: 'Fröbelstr. 17, 10405 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Weißensee',
  address: 'Berliner Allee 252 - 260, 13088 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Reinickendorf',
  address: 'Eichborndamm 215, 13437 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Tegel',
  address: 'Berliner Str. 35, 13507 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Spandau',
  address: 'Carl-Schurz-Str. 2/6, 13597 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Lankwitz',
  address: 'Gallwitzallee 87, 12249 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Steglitz',
  address: 'Schloßstr. 37, 12163 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Zehlendorf',
  address: 'Kirchstr. 1/3, 14163 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Schöneberg',
  address: 'John-F.-Kennedy-Platz, 10825 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)
RegistrationOffice.create(
  office_name: 'Bürgeramt Tempelhof',
  address: 'Tempelhofer Damm 165, 12099 Berlin',
  opening_hours: '08:00',
  closing_hours: '16:00'
)

banks = Bank.create([{name: "N26", english_customer_support: 8, signup_process: 9, bank_fees: 10, atm_fees: 6, banking_features: 8, summary: "Marketed as Europe's first mobile bank, N26 allows you to manage your entire financial life on your phone. Its free Debit Mastercard, free ATM withdrawals, intuitive app and English-speaking customer service are unparalleled in Berlin. When coupled with the fact that there are no hidden fees and you can sign up online in just a few minutes, this is our favourite banking option in Germany." },
     {name: "Commerzbank", english_customer_support: 5, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "For most expats, Commerzbank’s more comprehensive services only become relevant if staying in Germany longer-term. Therefore, we suggest starting with N26 and then joining Commerzbank as and when you can benefit from their traditional banking services."},
      {name: "Deutsche Bank", english_customer_support: 7, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "While similar to Commerzbank in its offering, Deutsche Bank is arguably slightly less geared towards expat customers. Having browsed their materials extensively, we found them to be the most ‘German’ of our four best banks in Germany. For day-to-day use, the monthly account fee combined with only being able to use a limited number of ATMs are notable drawbacks for Deutsche Bank."}])

public_insurances = Insurance.create([{name: "Techniker Krankenkasse (TK)", private: false, summary: "Great English-speaking sign-up process and support." },
     {name: "AOK Baden Württemberg", private: false, summary: "Really excellent range of services for elderly people."}, 
     {name: "Barmer", private: false, summary: "Wodnerful customer service and help-line."}])

private_insurances = Insurance.create([{name: "DR-WALTER", private: true, summary: "Excellent cover for young professionals" },
    {name: "AXA", private: true, summary: "Really good cover for retired professionals"}, 
    {name: "Allianz", private: true, summary: "Amazing all round long term cover"}])

puts 'Seeding finished.'
