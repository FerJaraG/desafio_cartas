class Carta
	attr_reader :pinta, :numero
	def initialize(pinta,numero)
		@pinta = pinta
		@numero = numero
	end

end

def menu
	puts ''
	puts '1.- Jugar'
	puts '2.- Mostrar'
	puts '3.- Salir'
	puts ''
end

menu

while opcion = gets.chomp
	case opcion
	when 'jugar'
		pintas = ['Corazon','Trebol','Pica','Diamante']
		numeros = ['As',2,3,4,5,6,7,8,9,10,'J','Q','K']
		arreglo_cartas = []

		5.times do 
			arreglo_cartas.push(Carta.new(pintas.sample,numeros.sample))
		end

		menu
		
	when 'mostrar'
		if arreglo_cartas.nil?
			puts 'Debe jugar antes de ver sus cartas'
		else
			arreglo_cartas.each do |carta|
				puts "#{carta.numero} #{carta.pinta}"
			end
		end

		menu

	when 'salir'
		puts 'Saliendo'
		break
	else
		puts 'Ingrese opcion valida'
		menu
	end
end
