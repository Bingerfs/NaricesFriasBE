# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Calendario.create!([
    { titulo: 'Dejando Huellitas 2da Versión', descripcion: 'Participar de la 2da versión de la maratón canina', fecha: "12/10/2019",hora:"08:00", lugar:"Parque Excombatientes"},
    { titulo: 'Kermesse Solidaria', descripcion: 'Deliciosos platos, riquisimos postres y buena música', fecha: "15/10/2019",hora:"09:30", lugar:"Refugio Gamaliel"},
    { titulo: 'Marcha contra la venta de animales', descripcion: 'Digamos NO a la venta de animales', fecha: "20/10/2019",hora:"18:30", lugar:"Plaza 14 De Septiembre"},
    { titulo: 'Jornada de Adopción', descripcion: 'Dale un nuevo hogar a los pequeñines que lo perdieron', fecha:"27/10/2019",hora:"09:00", lugar:"Refugio Gamaliel"},
    { titulo: 'Marcha contra el maltrato animal', descripcion: 'Se parte del cambio y di NO al maltrado animal ', fecha: "30/10/2019",hora:"18:30", lugar:" Plaza 14 De Septiembre "},
  ])