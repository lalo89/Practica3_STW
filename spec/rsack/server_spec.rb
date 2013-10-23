require 'spec_helper'

describe RockPaperScissors::App do
       
       def server
	    Rack::MockRequest.new(RockPaperScissors::App.new)
       end
       
       context '/' do
	 
	 it "Deberia devolver 200" do
	   response = server.get('/')
	   response.status.should == 200
	 end
       end
end