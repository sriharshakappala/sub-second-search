require 'find'

class MetadataGenerator

  def initialize
    @redis_code_base_path = Rails.public_path + 'redis-unstable'
    @sub_directories_to_search_through = ['deps', 'src', 'tests', 'utils']
  end

  def self.loop_through_code_base
  end

end
