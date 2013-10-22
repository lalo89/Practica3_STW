require "test/unit"
require "./lib/rps"
require "rack/test"

class RPSApp_Test < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Rack::Builder.new do
      run RockPaperScissors::App.new
    end.to_app
  end
   
  def test_index
    get "/"
    assert last_response.ok?
  end
  
  def test_rock
    get "/?choice=rock"
    assert last_response.ok?
  end
  
  def test_paper
    get "/?choice=paper"
    assert last_response.ok?
  end
  
  def test_scissors
    get "/?choice=scissors"
    assert last_response.ok?
  end
end