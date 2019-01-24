class AdivinharNumero
	attr_reader :numero
	attr_reader :venceu
	attr_reader :chances

	def initialize
		@numero = Random.rand(1..10)
		@venceu = false
		@chances = 3
	end

	def tentar_adivinhar(numero = 0)
		@chances -= 1

		if numero == @numero
			@venceu = true
			return "Acertou mizeravi!"
		elsif numero < @numero
			return "O número é maior.. voce tem #{@chances} chances"
		elsif numero > @numero
			return "O número é menor.. voce tem #{@chances} chances"
		end
	end
end

##############################################

jogo = AdivinharNumero.new

until jogo.venceu || jogo.chances == 0 do
	puts "Digite um número de 1 a 10, voce tem #{jogo.chances} chances: "
	numero = gets.to_i

	puts jogo.tentar_adivinhar(numero)
end

if(jogo.chances == 0 && jogo.venceu == false)
	puts "Voce falhou.. o numero era #{jogo.numero}"
end