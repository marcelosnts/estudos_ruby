class Franquia
	def descricao
		return "Franquia!"
	end
end	

class Franqueado < Franquia
	def descricao 
		puts super
		return "Franqueado!"
	end
end

f = Franquia.new
puts f.descricao

ff = Franqueado.new
puts ff.descricao

puts "--------------------------"
################################################

class Conta
	attr_accessor :conta, :saldo

	def initialize(conta, saldo = 0)
		@conta = conta
		@saldo = saldo
	end
end

class ContaEspecial < Conta
	attr_reader :limite_especial

	def initialize(conta, saldo = 0, limite_especial)
		super(conta, saldo)
		@limite_especial = limite_especial
	end
end

conta = Conta.new("001", 100)
puts conta.conta
puts conta.saldo

####################################################

contaE = ContaEspecial.new("002", 200, 500)
puts contaE.conta
puts contaE.saldo
puts contaE.limite_especial