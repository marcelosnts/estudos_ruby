cont = 0
while cont < 50 				#Enquanto a condição for verdadeira
	cont += 1
	puts "Contador #{cont}"
end

until cont <= 0					#Enquanto a condição for falsa
	puts "Contador #{cont}"
	cont -= 1
end