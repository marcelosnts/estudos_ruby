a = [1, 2, 3, 4, 5]				#Elementos organizados por indices
h = {"a" => 1, "b" => 2}		#Elementos organizados por keys
h_sym = {:c => 1, :d => 1} 		#Elementos organizados por simbolos. Simbolos representados pelo : antes do caractere. Ex: :a, :b

puts a
puts h
puts h_sym

#Intervalos .. & ...

(1..5).each do |el| 			#.. Do valor inicial até o valor final incluso.
	puts el
end

(1...5).each do |el|			#... Do valor inicial até o valor final excluso.
	puts el
end

5.times do |el| 					# Repete determinado número de vezes	
	puts "#{el} Vezes"
end