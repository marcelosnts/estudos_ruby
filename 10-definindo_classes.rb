class Pessoa
	attr_accessor :nome
	attr_accessor :idade

	def initialize(nome, idade)									#Construtor
		@nome = nome
		@idade = idade
	end
=begin
	@nome = nil
	@idade = nil

	def nome=(nome)												#getters and setters usados como get_nome equivalente a nome= e set_dade equivalente a idade
		@nome = nome
	end

	def nome
		puts @nome
	end

	def idade=(idade)
		@idade = idade
	end

	def idade
		puts @idade
	end

=end

	def gritar(grito = "ARRRG")
		puts "Gritando: #{grito}"
	end

	def agradecer(agradecimento = "Obrigado!")
		return "Agradecendo: #{agradecimento}"					#O retorno da função é automatico, tornando a palavra return opcional
	end
end

###############################

obj = Pessoa.new("Marcelo", 23)

puts obj.nome
puts obj.idade

obj.gritar
puts obj.agradecer

