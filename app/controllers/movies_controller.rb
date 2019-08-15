class MoviesController < ApplicationController

  def index
    if params[:query]
      # Requete SQL
      # sql_query = " \
      #   movies.title @@ :query \
      #   OR movies.syllabus @@ :query \
      #   OR directors.first_name @@ :query \
      #   OR directors.last_name @@ :query \
      # "
      # @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")

      #PG Search
      # @movies = Movie.search_by_title_and_syllabus(params[:query])

      #Multisearch
      # @results = PgSearch.multisearch(params[:query])

      #ElasticSearch
      @movies = Movie.search(params[:query])
    else
      @movies = Movie.all
    end
  end

end
