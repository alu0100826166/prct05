class Fraccionario
	attr_reader :n, :d
	
	def initialize(n, d)
		@n = n
		@d = d
	end
	
	def to_s
	  "#@n/#@d"
	end

	def mcd(a, b)
    	b==0? a: mcd(b, a%b)
  	end
	
	
	def + (f2)
		d = (@d / mcd(@d, f2.d)) * f2.d
		numa = (d / @d) * @n
		numb = (d / f2.d) * f2.n
		Fraccionario.new(numa + numb, d)
	end
	
	def - (f2)
		d = (@d / mcd(@d, f2.d)) * f2.d
		numa = (d / @d) * @n
		numb = (d / f2.d) * f2.n
		Fraccionario.new(numa - numb, d)
	end
	
	def * (f2)
		Fraccionario.new(@n * f2.n , @d * f2.d)
	end
	
	def / (f2)
		Fraccionario.new(@n * f2.d , @d * f2.n)
	end
		
	
end
