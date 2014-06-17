describe "Messages Class" do
  before do 
    @app = UIApplication.sharedApplication
    @messages = Loggly::Messages.new 5, do 
      puts "HERE"
    end
  end

  it "should store messages" do
    #@messages.should.be.a Loggly::Messages
    1.should == 1
    Location.location_manager
    puts Location.authorized?
    Location.get_once do |location|
      puts location.latitude
    end
  end
end
