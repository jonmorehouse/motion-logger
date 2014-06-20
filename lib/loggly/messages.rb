module Log
  class Messages

    @@size = 50

    def initialize(opts = {}, &cb)
      @cb = cb
      # start location watcher if applicable
      if not opts.has_key?(:no_location) or opts[:no_location] == false
        location_handler
      end
      # create internal array
      if not opts.has_key?(:size)
        opts[:size] = @@size
      end
      @size = opts[:size]
    
      @store = Array.new
    end

    def add(msg, opts = {})
      # push item into array
      @store.push(create_item(msg, opts))
      # check if array is full
      after_hook
    end

    def flush()
      @cb.call(@store.shift(@store.length))
    end

    private
    def create_item(msg, opts = {})
      msg = {
        msg: msg,
        timestamp: Time.now.to_s
      }
      if not opts.has_key? :no_location or opts[:no_location] == false and @location
        msg[:location] = @location
      end
      return msg
    end

    def after_hook
      if @store.length == @size
        @cb.call(@store.shift(@size))
      end
    end

    def location_handler
      # initialize location manager
      ::BW::Location.location_manager
      ::BW::Location::get_significant do |location|
        if location.is_a?(Hash) and location[:error]
          @location = {:error => location[:error]}
        else
          @location = {
            :latitude => location[:to].latitude,
            :longitude => location[:to].longitude
          }
        end
      end
    end
  end
end
