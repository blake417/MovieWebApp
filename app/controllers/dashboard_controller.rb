class DashboardController < ApplicationController
  def index
  end

  def profile
    # Convert to Raw SQL (double join, use join to get other tables)
    # Possibly add genre to table
    @my_watched_movies = WatchedMovie.where(user_id: current_user.id)
  end
end
