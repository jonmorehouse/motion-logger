describe "Loggly" do
  before do
    @app = UIApplication.sharedApplication
  end
  it "should have a working library" do
    1.should == 1
    l = Loggly::Loggly.new
  end
end

