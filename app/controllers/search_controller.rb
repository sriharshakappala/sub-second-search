class SearchController < ApplicationController

  def index
  end

  def search_the_crap_out_of_redis
    render nothing: true, status: :ok, content_type: "text/html"
  end

end
