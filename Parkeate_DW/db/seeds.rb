# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
parkingOwner = Usertype.create(descripcion: 'Dueño de estacionamiento')
client = Usertype.create(descripcion: 'Cliente')

infladoLlanta = Servicetype.create(descripcion: 'Inflado de llantas')
lavadoAuto = Servicetype.create(descripcion: 'Lavado de auto')

dni = Doctype.create(descripcion: 'DNI')
pasaporte = Doctype.create(descripcion: 'Pasaporte')
