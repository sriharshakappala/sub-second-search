require 'find'

class SearchBot

  def initialize(query)
    @query = query
    @redis_code_base_path = Rails.public_path + 'redis-unstable'
    @sub_directories_to_search_through = ['deps', 'src', 'tests', 'utils']
  end

  def search_in_code_base
    @sub_directories_to_search_through.each do |sub_directory|
      _directory_path = @redis_code_base_path + sub_directory
      Find.find(_directory_path.to_s) { |e| puts e if File.directory?(e) }
    end
  end

end
