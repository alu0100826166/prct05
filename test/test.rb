require '../lib/frac.rb'
require 'test/unit'

class TestFrac < Test::Unit::TestCase
	def setup
		@origen = Fraccionario.new(2,1)
		@a = Fraccionario.new(1,2)
		@b = Fraccionario.new(3,4)
	end
	
	def test_simple
	#Mostrar fracciones
		assert_equal("2/1", @origen.to_s)
		assert_equal("1/2", @a.to_s)
	#Suma de fracciones
		assert_equal("5/2", (@a+@origen).to_s)
	#Resta de fracciones
		assert_equal("3/2", (@origen - @a).to_s)
	#Producto de fracciones
		assert_equal("2/2", (@origen * @a).to_s)
		assert_equal("3/8", (@a * @b).to_s)
	#Division de fracciones
		assert_equal("4/1", (@origen / @a).to_s)
		assert_equal("1/4", (@a / @origen).to_s)
		assert_equal("4/6", (@a / @b).to_s)
		
	end
end