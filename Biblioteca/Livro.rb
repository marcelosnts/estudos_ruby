class Livro
	attr_accessor :titulo, :isbn, :genero, :paginas, :status

	def initialize(titulo, isbn, genero, paginas)
		@titulo = titulo
		@isbn = isbn
		@genero = genero
		@paginas = paginas
		@status = true
	end

	def self.def_genero(opc_genero)
		case opc_genero
			when 1
				return "Acao"
			when 2
				return "Aventura"
			when 3 
				return "Romance"
			when 4
				return "Ficcao Cientifica"
			else
				puts "Opcao Inválida"
		end
	end

	def self.filtro(lista = [], opc_genero)
		resultado = []

		lista.each do |livro|
			if(livro.genero == "Acao" && opc_genero == 1)
				resultado.push(livro)
			elsif(livro.genero == "Aventura" && opc_genero == 2)
				resultado.push(livro)
			elsif(livro.genero == "Romance" && opc_genero == 3)
				resultado.push(livro)
			elsif(livro.genero == "Ficcao Cientifica" && opc_genero == 4)
				resultado.push(livro)
			else
				resultado = false
			end
		end

		return resultado
	end

	def self.remover(lista = [], isbn)
		resultado = 0

		lista.each do |livro|
			if livro.isbn == isbn
				if livro.status == true
					livro.status = false
					resultado = livro
				else
					resultado = false
				end
			else
				resultado = false
			end
		end
		return resultado
	end
end
