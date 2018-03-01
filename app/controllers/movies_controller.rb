class MoviesController < ApplicationController

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.paginate(page: params[:page], per_page: 10)

    respond_to do |format|
      format.html
      format.json { render json: @movies }
    end
  end

  # GET /movie/1
  # GET /movie/1.json
  def show
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie }
    end
  end

  def import
    Importar.import(Movie, params[:file])

    redirect_to root_url, notice: 'Movie imported.'
  end
end
