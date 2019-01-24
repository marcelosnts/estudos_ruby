w = 20
x = 30
y = 40
z = 50

if (y < x) && (y < z) then # and &&
	puts "Condição atendida em ambos casos"
else
	puts "Condição não atendida em um ou mais casos"
end

if (y > x) || (y < z) then # or ||
	puts "Pelo menos uma condição atendida"
else
	puts "Condição não atendida nos dois casos"
end

if !(y < x) then # not !
	puts "Negação atendida"
else
	puts "Condição não atendida"
end