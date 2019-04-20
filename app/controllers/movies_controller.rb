class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def index
    render json: Movie.all
  end

  def show
    render json: Movie.find_by(id: params['id'])
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
  end

private

  def movie_params
    params.require(:movie).permit(:title, :release_year, :genre)
  end

end
