class Pai
	attr_accessor :nome

	def falar(texto = "Olá!")
		return texto
	end
end

class Filha < Pai

end

###############################

pai = Pai.new
pai.nome = "Fulano"
puts pai.nome
puts pai.falar

puts "--------------------------------"

filha = Filha.new
filha.nome = "Beltrana"
puts filha.nome
puts filha.falar("Sou a filha")

puts "---------------------------------"

################################

class Funcionario
	attr_accessor :nome, :cpf, :salario

	def initialize(nome, cpf, salario)
		@nome = nome
		@cpf = cpf
		@salario = salario
	end
end

class Gerente < Funcionario
	attr_accessor :senha, :tempo_empresa

	def initialize(nome, cpf, salario, senha, tempo_empresa)
		@nome = nome
		@cpf = cpf
		@salario = salario
		@senha = senha
		@tempo_empresa = tempo_empresa
	end
end

funcionario = Funcionario.new("Funcionario", "123456", "1000")
gerente = Gerente.new("Gerente", "654321", "2000", "321441", "10")

puts funcionario.nome
puts funcionario.cpf
puts funcionario.salario
puts "--------------------------"
puts gerente.nome
puts gerente.cpf
puts gerente.salario
puts gerente.senha
puts gerente.tempo_empresa