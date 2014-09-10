# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Barrio.create([{nombre: 'Agronomía'},{nombre: 'Almagro'}, {nombre: 'Balvanera'},{nombre: 'Barracas'},
  {nombre: 'Belgrano'},{nombre: 'Boedo'},{nombre: 'Caballito'},{nombre: 'Chacarita'},
  {nombre: 'Coghlan'},{nombre: 'Colegiales'},{nombre: 'Constitución'},{nombre: 'Flores'},
  {nombre: 'Floresta'},{nombre: 'La Boca'},{nombre: 'La Paternal'},{nombre: 'Liniers'},
  {nombre: 'Mataderos'},{nombre: 'Monte Castro'},{nombre: 'Monserrat'},{nombre: 'Nueva Pompeya'},
  {nombre: 'Núñez'},{nombre: 'Palermo'},{nombre: 'Parque Avellaneda'},{nombre: 'Parque Chacabuco'},
  {nombre: 'Parque Chas'},{nombre: 'Parque Patricios'},{nombre: 'Puerto Madero'},{nombre: 'Recoleta'},
  {nombre: 'Retiro'},{nombre: 'Saavedra'},{nombre: 'San Cristóbal'},{nombre: 'San Nicolás'},
  {nombre: 'San Telmo'},{nombre: 'Vélez Sársfield'},{nombre: 'Versalles'},{nombre: 'Villa Crespo'},
  {nombre: 'Villa del Parque'},{nombre: 'Villa Devoto'},{nombre: 'Villa General Mitre'},{nombre: 'Villa Lugano'},
  {nombre: 'Villa Luro'},{nombre: 'Villa Ortúzar'},{nombre: 'Villa Pueyrredón'},{nombre: 'Villa Real'},
  {nombre: 'Villa Riachuelo'},{nombre: 'Villa Santa Rita'},{nombre: 'Villa Soldati'},{nombre: 'Villa Urquiza'},])
  
Propiedad.create([{direccion: 'PEDRO LOZANO al 4100', barrio_id: 2, precio: 150000, superficie: 100, ambientes: 2, tipo_propiedad_id: 2}, 
  {direccion: 'Av Corrientes 4666', barrio: Barrio.find_by_nombre('Flores'), precio: 100000, superficie: 60, ambientes: 1, tipo_propiedad_id: 1},
  {direccion: 'Murguiondo 449', barrio: Barrio.find_by_nombre('Liniers'), precio: 120000, superficie: 80, ambientes: 3, tipo_propiedad_id: 1},
  {direccion: 'Av Paseo Colon 850', barrio_id: 35, precio: 115000, superficie: 75, ambientes: 3, tipo_propiedad_id: 1}])
  
TipoPropiedad.create([{nombre: 'Casa'},{nombre: 'Departamento'},{nombre: 'PH'},
  {nombre: 'Countries y Barrios Cerrados'},{nombre: 'Terrenos y Lotes'},{nombre: 'Quinta'},{nombre: 'Campos y Chacras'},
  {nombre: 'Galpones, Depositos y Edificios Ind.'},{nombre: 'Cocheras'},{nombre: 'Negocios y Fondos de Comercio'},{nombre: 'Oficinas'},
  {nombre: 'Consultorios'},{nombre: 'Bovedas, Nichos y Parcelas'},{nombre: 'Locales Comerciales'},])
