module Loggly
  class Loggly

    def initialize(opts = {})
      if opts.has_key? :token
        @logger = Api.new()
      else
        @logger = Log.new()
      end
      
      @messages = Messages.new opts, do |messages|

      end
    end

    def send
      # send all log messages
      @messages.flush
    end

    private
end
end
