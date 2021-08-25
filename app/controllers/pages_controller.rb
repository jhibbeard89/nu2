class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home; end

  def tv_license; end

  def req_index; end
end
