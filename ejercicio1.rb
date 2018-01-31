class Alumno
	attr_reader :nombre, :notas

	def initialize(nombre, notas)
		@nombre = nombre
		@notas = notas
	end

	def promedio
		@notas.sum / 5 #@notas.length.to_f
	end

end

arreglo_alumnos = []
arreglo_alumnos.push(Alumno.new('Ignacio',[6,7,5,4]))
arreglo_alumnos.push(Alumno.new('Fernanda',[2,5,4,3]))
arreglo_alumnos.push(Alumno.new('Juan',[7,5,6,7]))
arreglo_alumnos.push(Alumno.new('Pedro',[5,4,6,7]))


notas_curso = []
arreglo_alumnos.each do |alumno|
	notas_curso += alumno.notas
end

prom = notas_curso.sum / notas_curso.length.to_f

puts "El promedio del curso es #{prom}"


#promedio mas alto

prom = 0
nombre = ''
arreglo_alumnos.each do |alumno|
	if alumno.promedio > prom
		prom = alumno.promedio
		nombre = alumno.nombre
	end
end

puts "El promedio mas alto lo tiene #{nombre} con #{prom}"

# notas = [1,2,3,4,5,6,7]
# nombres = ['Pedro','Juan','Andres','Francisco']
# alumnos = []

# 10.times do 
# 	alumnos.push(Alumno.new(notas.sample(5), nombres.sample))
# end

# puts 

# notas_curso = []

# alumnos.each do |alumno|
# 	notas_curso += alumno.notas
# end




