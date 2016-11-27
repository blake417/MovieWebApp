class WatchedMoviesController < ApplicationController
  before_action :set_movies, only: [:new, :create]

  def new
    @watched_movie = WatchedMovie.new
  end

  def create
    @watched_movie = WatchedMovie.new(watched_movie_params)

    respond_to do |format|
      if @watched_movie.save
        format.html { redirect_to profile_path, notice: 'Watched Movie was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

private

  def set_movies
    @movies = Movie.to_array_for_select_field
  end

  def watched_movie_params
    params.require(:watched_movie).permit(:user_id, :movie_id)
  end
end
