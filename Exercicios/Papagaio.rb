class Papagaio
	attr_reader :nome
	attr_reader :idade

	def initialize(nome, idade)
		@nome = nome
		@idade = idade
	end

	def repetir_frase(frase = "Curupaco")
		return frase
	end
end

#############################################

papagaio1 = Papagaio.new("Fulano", 5)
papagaio2 = Papagaio.new("Beltrano", 3)

puts papagaio1.nome
puts papagaio1.idade
puts papagaio1.repetir_frase("Frase um")

puts papagaio2.nome
puts papagaio2.idade
puts papagaio2.repetir_frase("Frase dois")