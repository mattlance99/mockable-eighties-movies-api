class MoviesController < ApplicationController

  before_action :set_movie, only: [:show, :update, :destroy]

  def new
    @movie = Movie.new
  end

  def index
    render json: Movie.all
  end

  def show
    render json: @movie
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie
    else
      render json: { message: @movie.errors }, status: 400
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: { message: @movie.errors }, status: 400
    end
  end

  def destroy
    @movie.destroy
  end

private


  def set_movie
    @movie = Movie.find_by(id: params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :genre, :release_year, :image_url)
  end

end
