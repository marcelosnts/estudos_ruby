=begin

puts "Digite um número: "
x = gets.chomp.to_i

=end

#Condição SE

=begin

if x > 10 then
	puts "O valor #{x} é maior que 10"
elsif x == 10 then
	puts "O valor #{x} é igual a 10"
else
	puts "O valaor #{x} é menor que 10"
end

=end

#Condição contrária a SE

=begin

unless x > 10 then
	puts "#{x} é menor que 10"
else
	puts "#{x} é maior que 10"
end

=end

puts "Escolha um número entre 1 e 3"
x = gets.chomp.to_i

case x
	when 1
		puts "Opção 1"
	when 2
		puts "Opção 2"
	when 3 
		puts "Opção 3"
	else
		puts "Opção Inválida!"
end