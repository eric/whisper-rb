module Whisper
  VERSION = "0.1.0"
  
  class << self
    # Public: Get setting for whether the library should start a
    # RubyPython session.
    #
    # Returns a boolean specifying if RubyPython should be started.
    attr_reader :start_rubypython

    # Public: Set setting for whether the library should start a
    # RubyPython session.
    #
    # Returns nothing.
    attr_writer :start_rubypython
  end
  self.start_rubypython = true
end

require 'rubypython'

require 'whisper/database'