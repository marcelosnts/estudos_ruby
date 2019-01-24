class Pato
	def quack
		"QUACK! QUACK!"
	end
end

class PatoDoente
	def quack
		"quaaaack.."
	end
end

class Pessoa
	def apertar_pato(pato)
		pato.quack
	end
end

pato = Pato.new
patoDoente = PatoDoente.new
pessoa = Pessoa.new

puts pessoa.apertar_pato(pato)
puts pessoa.apertar_pato(patoDoente)