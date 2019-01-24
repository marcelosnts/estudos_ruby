require_relative 'pagamento'

include Pagamento

puts "Digite a bandeira do cartao:"
bandeira = gets.chomp

puts "Digite o numero do cartao: "
numero = gets.chomp

cartao = Cartao.new(bandeira, numero)

puts "Digite o valor do pagamento: "
valor = gets.chomp.to_f

puts cartao.pagar(valor)

