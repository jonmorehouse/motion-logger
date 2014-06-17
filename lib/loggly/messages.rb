module Loggly
  class Messages

    def initialize(max_size, &cb)
      @max_size = max_size
      @store = Array.new(max_size)
      @cb = cb
    end

    def add(msg)
      add_item(msg)
      after_hook
    end

    private
    def add_item(msg)
      item = create_item(msg)
      @store.push Array.new(2)
    end

    def after_hook()
      # check to see if list is ready to be sent

    end

    def create_item(msg, no_location = false)

      # normalize to a hash
      msg = {
        msg: msg,
        timestamp: Time.now.to_s
      }
      # add location data to the log event
      if not no_location
        msg[:location] = get_location
      end

    end

    def get_location

      ::BW::Location.get_once() do |location|
        puts "here"
        puts location
      end

      #::BW::Location.error(type)
    end

  end
end
