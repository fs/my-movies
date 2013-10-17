require 'github/markdown'

class DashboardController < ApplicationController
  expose(:recent_movies) { Movie.recent }

  def index
  end
end
