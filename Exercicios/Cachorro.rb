class Cachorro
	attr_accessor :nome
	attr_reader :raca

	def initialize(nome, raca)
		@nome = nome
		@raca = raca
	end

	def latir(latido)
		return "Latindo: #{latido}"
	end
end

###############################################

cachorro1 = Cachorro.new("Fulano", "Pastor Alemao")
cachorro2 = Cachorro.new("Beltrano", "Lhasa Apso")

puts cachorro1.nome
puts cachorro1.raca
puts cachorro1.latir("Bark!!")

puts cachorro2.nome
puts cachorro2.raca
puts cachorro2.latir("Woof!!")