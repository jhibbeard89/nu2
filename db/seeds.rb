# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

banks = Bank.create([{name: "N26", english_customer_support: 8, signup_process: 9, bank_fees: 10, atm_fees: 6, banking_features: 8, summary: "Marketed as Europe's first mobile bank, N26 allows you to manage your entire financial life on your phone. Its free Debit Mastercard, free ATM withdrawals, intuitive app and English-speaking customer service are unparalleled in Berlin. When coupled with the fact that there are no hidden fees and you can sign up online in just a few minutes, this is our favourite banking option in Germany." },
     {name: "Deutsche Bank", english_customer_support: 5, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "For most expats, Commerzbank’s more comprehensive services only become relevant if staying in Germany longer-term. Therefore, we suggest starting with N26 and then joining Commerzbank as and when you can benefit from their traditional banking services."},
      {name: "Commerzbank", english_customer_support: 7, signup_process: 6, bank_fees: 7, atm_fees: 5, banking_features: 8, summary: "While similar to Commerzbank in its offering, Deutsche Bank is arguably slightly less geared towards expat customers. Having browsed their materials extensively, we found them to be the most ‘German’ of our four best banks in Germany. For day-to-day use, the monthly account fee combined with only being able to use a limited number of ATMs are notable drawbacks for Deutsche Bank."}])

public_insurances = Insurance.create([{name: "Techniker Krankenkasse (TK)", private: false, summary: "Great English-speaking sign-up process and support." },
     {name: "AOK Baden Württemberg", private: false, summary: "Really excellent range of services for elderly people."}, 
     {name: "Barmer", private: false, summary: "Wodnerful customer service and help-line."}])

private_insurances = Insurance.create([{name: "DR-WALTER", private: true, summary: "Excellent cover for young professionals" },
    {name: "AXA", private: true, summary: "Really good cover for retired professionals"}, 
    {name: "Allianz", private: true, summary: "Amazing all round long term cover"}])