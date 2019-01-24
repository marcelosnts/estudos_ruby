require_relative "a"
require_relative "b"

class Mixin
	include A
	include B

	def ex1
		"Classe Mixin - Metodo ex1"
	end
end