require '../lib/frac.rb'
require 'test/unit'

class TestFrac < Test::Unit::TestCase
	def setup
		@origen = Fraccionario.new(2,1)
		@a = Fraccionario.new(1,2)
	end
	
	def test_simple
		assert_equal("2/1", @origen.to_s)
		assert_equal("1/2", @a.to_s)
		assert_equal("5/2", (@a+@origen).to_s)
	end
end