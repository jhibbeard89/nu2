class BanksController < ApplicationController
  def index
    @banks = Bank.all
    @n26 = Bank.find_by(name: "N26")
    @deutschebank = Bank.find_by(name: "Deutsche Bank")
    @commerzbank = Bank.find_by(name: "Commerzbank")
  end
end
