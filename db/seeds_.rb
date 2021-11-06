# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Tarea 10: Crear 5 usuarios

t = User.new
t.first_name = "Usuario 1"
t.last_name = "Lobos"
t.email_address = "rita@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 2"
t.last_name = "Fuentes"
t.email_address = "marcela@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 3"
t.last_name = "Alanis"
t.email_address = "roberto@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 4"
t.last_name = "Bustos"
t.email_address = "juan@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 5"
t.last_name = "Uribe"
t.email_address = "milca@gmail.com"
t.save()

puts "Usuarios creados: #{User.all.count}"
puts "Tarea 10. Hecha"

#Tarea 11: Crear blog

t = Blog.new
t.name = "Blog 1"
t.description = "Descripcion blog 1"
t.save()

t = Blog.new
t.name = "Blog 2"
t.description = "Descripcion blog 2"
t.save()

t = Blog.new
t.name = "Blog 3"
t.description = "Descripcion blog 3"
t.save()

t = Blog.new
t.name = "Blog 4"
t.description = "Descripcion blog 4"
t.save()

t = Blog.new
t.name = "Blog 5"
t.description = "Descripcion blog 5"
t.save()

puts "Blogs creados: #{Blog.all.count}"
puts "Tarea 11. Hecha"

#Tarea 12: Esteblecer que los tres primeros blog pertenezcan al primer usuario.

ow = Owner.new
ow.blog = Blog.where(name: "Blog 1").first
ow.user = User.where(first_name: "Usuario 1").first
ow.save

ow = Owner.new
ow.blog = Blog.where(name: "Blog 2").first
ow.user = User.where(first_name: "Usuario 1").first
ow.save

ow = Owner.new
ow.blog = Blog.where(name: "Blog 3").first
ow.user = User.where(first_name: "Usuario 1").first
ow.save

puts "propiedades: #{Owner.all.count}"
puts "Tarea 12. Hecha"

#Tarea 13: Establecer que el blog 4, pertenezcan al segundo usuario

ow = Owner.new
ow.blog = Blog.where(name: "Blog 4").first
ow.user = User.where(first_name: "Usuario 2").first
ow.save

puts "npropiedades: #{Owner.where(user:User.where(first_name: "Usuario 2").first).count}"
puts "Tarea 13. Hecha"

#Tarea 14: Establecer que el blog 5, pertenezca al ultimo usuario.

ow = Owner.new
ow.blog = Blog.where(name: "Blog 5").first
ow.user = User.where(first_name: "Usuario 5").first
ow.save

#revisar
puts "npropiedades: #{Owner.where(user:User.where(first_name: "Usuario 5").first).count}"
puts "Tarea 14. Hecha"

#Tarea 15: Establecer que el tercer usuario sea propietario de todos los los Blogs.

