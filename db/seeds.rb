# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Database seeding ...'
RegistrationOffice.delete_all

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

puts 'Seeding finished.'
