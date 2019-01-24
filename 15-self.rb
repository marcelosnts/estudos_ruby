class Teste
	def meu_self
		puts "Este é meu self: #{self}"
	end
end

class Teste1
	def meu_self
		puts "Este é meu self: #{self}"
	end
end

t = Teste.new
t.meu_self

puts "---------"

t2 = Teste1.new
t2.meu_self

puts "---------"

############################################

class Teste3
	def metodo_instancia									# Método de Instancia
		puts "Este é meu self: #{self}"
	end

	def self.metodo_classe									# Método de Classe - Pode ser chamado sem necessidade de instanciar a classe
		puts "Este é meu self: #{self}"
	end
end

t3 = Teste3.new
t3.metodo_instancia

puts "---------"

Teste3.metodo_classe

