class DashboardController < ApplicationController
  def index
  end

  def profile
    # Convert to Raw SQL (double join, use join to get other tables)
    # Possibly add genre to table
    @my_watched_movies = WatchedMovie.connection
      .select_all("SELECT m.title AS title,
                          w.created_at AS created_at
                   FROM watched_movies w
                   INNER JOIN movies m
                   ON m.id = w.movie_id
                   WHERE w.user_id = #{current_user.id};")


  end
end
