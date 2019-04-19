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

end
