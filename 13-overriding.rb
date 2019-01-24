class Calculadora
	def somar(n1, n2)
		return n1 + n2
	end
end

class CalculadoraFashion < Calculadora
	def somar(n1, n2)
		return "A soma é #{n1 + n2}"
	end
end

c = Calculadora.new
puts c.somar(3, 4)

cf = CalculadoraFashion.new
puts cf.somar(3, 4)
