module Pagamento
	DESCONTO = 10																							#Definição de constantes através de caixa alta
	
	attr_writer :numero
	attr_accessor :bandeira, :valor

	class Cartao
		def initialize(bandeira, numero)
			@bandeira = bandeira
			@numero = numero
		end

		def valor_descontado(valor)																			#Método para calculo do valor descontado
			(valor.to_i / 100) * DESCONTO
		end

		def pagar(valor)
			valor_total = valor - valor_descontado(valor)
			"Pagando com o cartao #{@bandeira} #{@numero} o valor de R$ #{valor_total}"
		end
	end
end