module Browzy
  
  # Represents a browser. Expects a name & optional version & list of platforms.
  #
  class Browser

    attr_accessor :name, :version, :platforms

    def initialize
      @platforms = []
    end
    
  end
end