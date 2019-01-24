require_relative "Livro"

lista = []
contador = 0
opcao = 1

until opcao == 0
	
	puts "Selecione uma opção: "
	puts "1 - Cadastrar Livro"
	puts "2 - Exibir lista completa"
	puts "3 - Filtrar por categoria"
	puts "4 - Remover Livro"
	puts "0 - Sair"

	opcao = gets.chomp.to_i

	case opcao
		when 1
			puts "\n"
			puts "Digite o titulo do livro: "
			titulo = gets.chomp

			puts "\n"
			puts "Digite a isbn do livro #{titulo}: "
			isbn = gets.chomp

			opc_genero = 0

			until opc_genero <= 4 && opc_genero >= 1
				puts "\n"
				puts "Selecione a genero do livro #{titulo}: "
				puts "1 - Acao"
				puts "2 - Aventura"
				puts "3 - Romance"
				puts "4 - Ficcao Cientifica"
				opc_genero = gets.chomp.to_i

				genero = Livro.def_genero(opc_genero)
			end

			puts "\n"
			puts "Digite o numero de paginas do livro #{titulo}: "
			paginas = gets.chomp.to_i

			lista.push(Livro.new(titulo, isbn, genero, paginas))

			puts "\n"

		when 2
			if lista.length > 0
				lista.each do |livro|
					if livro.status == true
						puts "\n"
						puts "Titulo: #{livro.titulo}"
						puts "ISBN: #{livro.isbn}"
						puts "Genero: #{livro.genero}"
						puts "Numero de Paginas: #{livro.paginas}"
						puts "\n"
					end
				end
			else
				puts "\n"
				puts "Nenhum livro cadastrado"
				puts "\n"
			end

		when 3
			opc_genero = 0

			if lista.length > 0
				until opc_genero <= 4 && opc_genero >= 1
					puts "\n"
					puts "Selecione a genero do livro #{titulo}: "
					puts "1 - Acao"
					puts "2 - Aventura"
					puts "3 - Romance"
					puts "4 - Ficcao Cientifica"
					opc_genero = gets.chomp.to_i

					resultado = Livro.filtro(lista, opc_genero)

					if resultado == false
						puts "\n"
						puts "Nenhum livro encontrado!"
						puts "\n"
					else
						resultado.each do |livro|
							if livro.status == true
								puts "\n"
								puts "Titulo: #{livro.titulo}"
								puts "ISBN: #{livro.isbn}"
								puts "Genero: #{livro.genero}"
								puts "Numero de Paginas: #{livro.paginas}"
								puts "\n"
							end
						end
					end
				end
			else 
				puts "\n"
				puts "Nenhum livro cadastrado"
				puts "\n"
			end

		when 4
			
			puts "\n"
			puts "Digite a isbn do livro que deseja remover: "
			isbn = gets.chomp

			livro = Livro.remover(lista, isbn)

			if livro == false
				puts "\n"
				puts "Livro não encontrado"
				puts "\n"
			else
				puts "\n"
				puts "Livro removido: "
				puts "Titulo: #{livro.titulo}"
				puts "ISBN: #{livro.isbn}"
				puts "Genero: #{livro.genero}"
				puts "Numero de Paginas: #{livro.paginas}"
				puts "\n"
			end

		when 0
			puts "\n"
			puts "Saindo..."
		else
			puts "\n"
			puts "Opção Inválida"
		
	end
end