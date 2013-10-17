class DashboardController < ApplicationController
  def index
    @recent_movies = Movie.all
  end
end
