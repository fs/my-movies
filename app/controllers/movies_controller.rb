class MoviesController < ApplicationController
  respond_to :html

  expose(:movie, attributes: :movie_params)
  expose(:movies) { Movie.page(params[:page]) }

  def create
    flash[:notice] = 'Movie was successfully created.' if movie.save
    respond_with(movie)
  end

  def update
    flash[:notice] = 'Movie was successfully updated.' if movie.save
    respond_with(movie)
  end

  def destroy
    movie.destroy
    respond_with(movie)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :rating)
  end
end
