describe "Messages Class" do
  before do 
    @app = UIApplication.sharedApplication
    @messages = Loggly::Messages.new 5, do 
      puts "HERE"
    end
  end

  it "should store messages" do
    1.should == 1
  end
end
