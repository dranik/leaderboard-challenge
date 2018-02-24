class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    sleep 1.5
    @shows = Show.joins(:reviews)
                 .select('shows.id, shows.title, shows.description, shows.number, avg(reviews.score)')
                 .group('shows.id')
                 .order('avg(reviews.score)+shows.number desc')
                 .limit(10)
    if params[:data_only]
      render "index.json"
    end
  end

end
