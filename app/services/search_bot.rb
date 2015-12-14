class SearchBot

  def def initialize(query)
    @query = query
    @redis_code_base_path = Rails.public_path + 'redis-unstable'
    @directories_to_search_through = ['deps', 'src', 'tests', 'utils']
  end

  def search_in_code_base
  end

end
