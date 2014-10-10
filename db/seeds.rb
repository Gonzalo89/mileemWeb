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
  
TipoPropiedad.create([{nombre: 'Casa'},{nombre: 'Departamento'},{nombre: 'PH'},
  {nombre: 'Countries y Barrios Cerrados'},{nombre: 'Terrenos y Lotes'},{nombre: 'Quinta'},{nombre: 'Campos y Chacras'},
  {nombre: 'Galpones, Depositos y Edificios Ind.'},{nombre: 'Cocheras'},{nombre: 'Negocios y Fondos de Comercio'},{nombre: 'Oficinas'},
  {nombre: 'Consultorios'},{nombre: 'Bovedas, Nichos y Parcelas'},{nombre: 'Locales Comerciales'},])

Moneda.create([{nombre: 'Pesos'}, {nombre: 'Dolares'}])

Operacion.create([{tipo: 'Venta'}, {tipo: 'Alquiler'}, {tipo: 'Alquiler temporal'}])

amenities = Amenity.create([{nombre: 'Balcón'}, {nombre: 'Comedor'}, {nombre: 'Dormitorio en suite'}, {nombre: 'Baulera'},
  {nombre: 'Comedor diario'}, {nombre: 'Escritorio'}, {nombre: 'Cocina'}, {nombre: 'Dependencia servicio'},
  {nombre: 'Hall'}, {nombre: 'Jardín'}, {nombre: 'Lavadero'}, {nombre: 'Living'},{nombre: 'Living Comedor'},
  {nombre: 'Patio'}, {nombre: 'Terraza'}, {nombre: 'Agua corriente'}, {nombre: 'Desague cloacal'},
  {nombre: 'Video cable'}, {nombre: 'Gas natural'}, {nombre: 'Internet'}, {nombre: 'Pavimento'}]) 
 
usuarios = User.create([{email: 'rodrif89@gmail.com', password: '123456789', password_confirmation: '123456789',
  nombre: 'Facundo', apellido: 'Rodriguez', telefono: '46523215', confirmed_at: '2014-09-26 15:04:35'},
  {email: 'gonzalo@gmail.com', password: '123456789', password_confirmation: '123456789',
  nombre: 'Gonzalo', apellido: 'Rodriguez', telefono: '46573211', confirmed_at: '2014-09-26 16:05:35'},
  {email: 'elian1985@gmail.com', password: '123456789', password_confirmation: '123456789',
  nombre: 'Elian', apellido: 'Pinzas', telefono: '44444444', confirmed_at: '2014-09-26 17:05:35'} ])
  
Estado.create([{nombre: 'Activa'}, {nombre: 'Pausada'}, {nombre: 'Finalizada'}])

tipoPublicaciones = TipoPublicacion.create([{nombre: 'Gratuita', maxFotos: 3, maxVideos: 0, mesesDuracion: 1},
  {nombre: 'Básica', maxFotos: 5, maxVideos: 1, mesesDuracion: 3},
  {nombre: 'Premium', maxFotos: 10, maxVideos: 3, mesesDuracion: 12} ])
  
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero: 4100, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id: 2, precio: 150000, moneda_id: 2, superficie: 100, ambientes: 2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-10-02 16:05:35', fecha_finalizacion: '2014-11-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Av Corrientes', piso: '', numero: 4666, departamento: '', descripcion: 'descripcio2', antiguedad: 0, operacion_id: 2, barrio: Barrio.find_by_nombre('Flores'), precio: 100000, moneda_id: 1, superficie: 60, ambientes: 1, dormitorios: 1, expensas: 200, tipo_propiedad_id: 1, user: usuarios.first, superficie_nc: 100, tipo_publicacion_id: 2, fecha_publicacion: '2014-09-22 16:05:35', fecha_finalizacion: '2014-12-22 16:05:35', estado_id: 1, latitude: -34.6021, longitude: -58.4313}).save(validate: false)
Propiedad.new({direccion: 'Murguiondo', piso: '2', numero: 449, departamento: '', descripcion: 'descripcio3', antiguedad: 5, operacion_id: 3, barrio: Barrio.find_by_nombre('Liniers'), precio: 120000, moneda_id: 1, superficie: 80, ambientes: 3, dormitorios: 3, expensas: 1500, tipo_propiedad_id: 6, user: usuarios.first, tipo_publicacion_id: 3, fecha_publicacion: '2014-08-26 12:15:10', fecha_finalizacion: '2015-08-26 12:15:10', estado_id: 1, latitude: -34.6439, longitude: -58.5181}).save(validate: false)
Propiedad.new({direccion: 'Av Paseo Colon', piso: '', numero: 850, departamento: '', descripcion: 'descripcio4', antiguedad: 10, operacion_id: 1, barrio_id: 35, precio: 115000, moneda_id: 1, superficie: 75, ambientes: 3, dormitorios: 4, expensas: 1200, tipo_propiedad_id: 1, user: usuarios.second, superficie_nc: 20, tipo_publicacion_id: 1, fecha_publicacion: '2014-10-06 10:26:45', fecha_finalizacion: '2014-11-06 10:26:45', estado_id: 1, latitude: -34.6177, longitude: -58.3679}).save(validate: false)