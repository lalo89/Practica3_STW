require 'spec_helper'

describe RockPaperScissors::App do
       
       def server
	    Rack::MockRequest.new(RockPaperScissors_spec::App.new)
       end
       
       context '/' do
	 
	 it "Deberia devolver 200" do
	   response = server.get('/')
	   response.status.should == 200
	 end
	 
	 it "Deberia mostrar Practica 5"
	   response = server.get('/')
	   response.header == 'Practica 5'
         end
       end
end
     