require 'traject/alephsequential_reader/version'
require 'marc_alephsequential'
require 'zlib'
require 'yell'

module Traject
  class AlephSequentialReader
    include Enumerable

    def initialize(input_stream, settings)
      @settings = settings
      @input_stream = input_stream
      if settings['command_line.filename'] =~ /\.gz$/
        @input_stream = Zlib::GzipReader.new(@input_stream, :external_encoding => "UTF-8")
      end
  
      @internal_reader = MARC::AlephSequential::Reader.new(@input_stream)
    end

    def logger
      @logger ||= (settings[:logger] || Yell.new(STDERR, :level => "gt.fatal")) # null logger)
    end    

    def each
      unless block_given?
        return enum_for(:each)
      end
  
      @internal_reader.each {|r| yield r}
    end

  end
end
  
  