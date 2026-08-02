class HomeController < ApplicationController
  allow_unauthenticated_access only: %i[ new index ]
  def index
  end

  def new
  end
end
