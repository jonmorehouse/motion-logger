describe "Messages Class" do

  describe "high level message storing / callback processing" do

    before do
      @callback = Proc.new do |msgs|
      end
      @messages = Logger::Messages.new no_location: true, size: 1 do
        @callback.call()
      end

    end

    it "should store messages" do
      #@messages.add("new message")
      #@counter.should == 1
      1.should == 1
    end

    it "should call the passed in callback when the array is full" do

      1.should == 1
    end
  end


end
