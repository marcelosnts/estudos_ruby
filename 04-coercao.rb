puts "Digite sua idade: "
idade = gets.chomp.to_i #Capturando a inserção, cortando a quebra de linha \n, realizando a coerção para inteiro
idade = idade + 1
puts "Sua idade no proximo ano será: #{idade}"