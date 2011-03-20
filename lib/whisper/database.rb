module Whisper
  class Database
    def self.whisper_py
      @whisper_py ||= begin
        RubyPython.start if Whisper.start_rubypython

        sys = RubyPython.import('sys')
        sys.path.append(File.expand_path('../py', __FILE__))

        RubyPython.import('whisper')
      end
    end
    
    def whisper_py
      self.class.whisper_py
    end
    
    # Public: Create a new Whisper database.
    #
    # path         - The String pointing to the location of the database.
    # archiveList  - The Array of Arrays each containing secondsPerPoint
    #                and numberOfPoints.
    # xFilesFactor - The Float that specifies the fraction of data points
    #                in a propagation interval that must have known values
    #                for a propagation to occur.
    #
    # Returns a Whisper::Database of the newly created database.
    def self.create(path, archiveList, xFilesFactor=0.5)
      whisper_py.create(path, archiveList, xFilesFactor)
      new(path)
    end
    
    # Public: Open an existing Whisper database.
    def initialize(path)
      @path = path
    end
    
    # Public: Update the database
    def update(value, timestamp = nil)
      whisper_py.update(@path, value, timestamp)
    end
    
    # Public: Bulk-update the database
    def update_many(points)
      whisper_py.update_many(@path, points)
    end
    
    # Public: Retrieve info about the database
    def info
      whisper_py.info(@path)
    end
    
    # Public: Fetch values from the database
    def fetch(fromTime, untilTime = nil)
      whisper_py.fetch(@path, fromTime, untilTime)
    end
  end
end