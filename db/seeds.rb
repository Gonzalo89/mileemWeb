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
  {nombre: 'Countries y barrios cerrados'},{nombre: 'Terrenos y lotes'},{nombre: 'Quinta'},{nombre: 'Campos y chacras'},
  {nombre: 'Galpones, depósitos y edificios ind.'},{nombre: 'Cocheras'},{nombre: 'Negocios y fondos de comercio'},{nombre: 'Oficinas'},
  {nombre: 'Consultorios'},{nombre: 'Bóvedas, nichos y parcelas'},{nombre: 'Locales comerciales'},])

Moneda.create([{nombre: 'Pesos'}, {nombre: 'Dólares'}])

Operacion.create([{tipo: 'Venta'}, {tipo: 'Alquiler'}, {tipo: 'Alquiler temporal'}])

amenities = Amenity.create([{nombre: 'Balcón'}, {nombre: 'Comedor'}, {nombre: 'Dormitorio en suite'}, {nombre: 'Baulera'},
  {nombre: 'Comedor diario'}, {nombre: 'Escritorio'}, {nombre: 'Cocina'}, {nombre: 'Dependencia servicio'},
  {nombre: 'Hall'}, {nombre: 'Jardín'}, {nombre: 'Lavadero'}, {nombre: 'Living'},{nombre: 'Living Comedor'},
  {nombre: 'Patio'}, {nombre: 'Terraza'}, {nombre: 'Agua corriente'}, {nombre: 'Desagüe cloacal'},
  {nombre: 'Video cable'}, {nombre: 'Gas natural'}, {nombre: 'Internet'}, {nombre: 'Pavimento'}]) 
 
usuarios = User.create([{email: 'rodrif89@gmail.com', password: '123456789', password_confirmation: '123456789',
  nombre: 'Facundo', apellido: 'Rodriguez', telefono: '46523215', confirmed_at: '2014-09-26 15:04:35'},
  {email: 'gonzalo@gmail.com', password: '123456789', password_confirmation: '123456789',
  nombre: 'Gonzalo', apellido: 'Rodriguez', telefono: '46573211', confirmed_at: '2014-09-26 16:05:35'},
  {email: 'elian1985@gmail.com', password: '123456789', password_confirmation: '123456789',
  nombre: 'Elian', apellido: 'Pinzas', telefono: '44444444', confirmed_at: '2014-09-26 17:05:35'} ])
  
Estado.create([{nombre: 'Activa'}, {nombre: 'Pausada'}, {nombre: 'Finalizada'}])

tipoPublicaciones = TipoPublicacion.create([{nombre: 'Gratuita', maxFotos: 3, maxVideos: 0, mesesDuracion: 1, importe: 0, importePromo: 0},
  {nombre: 'Básica', maxFotos: 5, maxVideos: 1, mesesDuracion: 3, importe: 100, importePromo: 80},
  {nombre: 'Premium', maxFotos: 10, maxVideos: 3, mesesDuracion: 12, importe: 300, importePromo: 200} ])
  
Video.create([{url: 'https://www.youtube.com/watch?v=ZK0kbq6UUwM', propiedad_id: 2 } ])
  
# Tabla tomada de 
# https://docs.google.com/spreadsheets/d/1W5VvL8f8zlbbup8i8pfOfTfo7U7efQGetbZnPIZxe1k



Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:10, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:1449896, moneda_id:1, superficie:47, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:110, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:1549896, moneda_id:1, superficie:57, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:210, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:1649896, moneda_id:1, superficie:67, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:310, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:1749896, moneda_id:1, superficie:77, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:410, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:895567, moneda_id:2, superficie:87, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:510, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:905567, moneda_id:2, superficie:97, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:610, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:915567, moneda_id:2, superficie:107, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'PEDRO LOZANO', piso: 2, numero:710, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:1, precio:925567, moneda_id:2, superficie:117, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'WARNES', piso: 2, numero:20, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:4164288, moneda_id:1, superficie:100, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'WARNES', piso: 2, numero:120, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:4264288, moneda_id:1, superficie:110, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'WARNES', piso: 2, numero:220, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:4364288, moneda_id:1, superficie:120, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'WARNES', piso: 2, numero:320, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:4464288, moneda_id:1, superficie:130, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'WARNES', piso: 2, numero:420, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:382980, moneda_id:2, superficie:140, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'WARNES', piso: 2, numero:520, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:392980, moneda_id:2, superficie:150, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'WARNES', piso: 2, numero:620, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:402980, moneda_id:2, superficie:160, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'WARNES', piso: 2, numero:720, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:2, precio:412980, moneda_id:2, superficie:170, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:30, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:1683648, moneda_id:1, superficie:43, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:130, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:1783648, moneda_id:1, superficie:53, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:230, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:1883648, moneda_id:1, superficie:63, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:330, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:1983648, moneda_id:1, superficie:73, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:430, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:505564, moneda_id:2, superficie:83, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:530, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:515564, moneda_id:2, superficie:93, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:630, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:525564, moneda_id:2, superficie:103, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Rivadavia', piso: 2, numero:730, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:3, precio:535564, moneda_id:2, superficie:113, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:40, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:5889829, moneda_id:1, superficie:58, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:140, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:5989829, moneda_id:1, superficie:68, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:240, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:6089829, moneda_id:1, superficie:78, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:340, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:6189829, moneda_id:1, superficie:88, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:440, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:861501, moneda_id:2, superficie:98, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:540, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:871501, moneda_id:2, superficie:108, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:640, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:881501, moneda_id:2, superficie:118, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Pueyrredon', piso: 2, numero:740, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:4, precio:891501, moneda_id:2, superficie:128, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'San Martín', piso: 2, numero:50, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:1106967, moneda_id:1, superficie:58, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'San Martín', piso: 2, numero:150, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:1206967, moneda_id:1, superficie:68, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'San Martín', piso: 2, numero:250, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:1306967, moneda_id:1, superficie:78, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'San Martín', piso: 2, numero:350, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:1406967, moneda_id:1, superficie:88, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'San Martín', piso: 2, numero:450, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:452037, moneda_id:2, superficie:98, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'San Martín', piso: 2, numero:550, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:462037, moneda_id:2, superficie:108, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'San Martín', piso: 2, numero:650, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:472037, moneda_id:2, superficie:118, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'San Martín', piso: 2, numero:750, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:5, precio:482037, moneda_id:2, superficie:128, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:60, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:903617, moneda_id:1, superficie:75, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:160, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:1003617, moneda_id:1, superficie:85, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:260, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:1103617, moneda_id:1, superficie:95, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:360, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:1203617, moneda_id:1, superficie:105, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:460, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:955729, moneda_id:2, superficie:115, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:560, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:965729, moneda_id:2, superficie:125, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:660, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:975729, moneda_id:2, superficie:135, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Sarmiento', piso: 2, numero:760, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:6, precio:985729, moneda_id:2, superficie:145, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Moises', piso: 2, numero:70, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:3861376, moneda_id:1, superficie:83, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Moises', piso: 2, numero:170, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:3961376, moneda_id:1, superficie:93, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Moises', piso: 2, numero:270, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:4061376, moneda_id:1, superficie:103, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Moises', piso: 2, numero:370, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:4161376, moneda_id:1, superficie:113, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Moises', piso: 2, numero:470, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:789669, moneda_id:2, superficie:123, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Moises', piso: 2, numero:570, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:799669, moneda_id:2, superficie:133, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Moises', piso: 2, numero:670, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:809669, moneda_id:2, superficie:143, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Moises', piso: 2, numero:770, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:7, precio:819669, moneda_id:2, superficie:153, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Alvear', piso: 2, numero:80, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:2890709, moneda_id:1, superficie:69, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Alvear', piso: 2, numero:180, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:2990709, moneda_id:1, superficie:79, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Alvear', piso: 2, numero:280, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:3090709, moneda_id:1, superficie:89, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Alvear', piso: 2, numero:380, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:3190709, moneda_id:1, superficie:99, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Alvear', piso: 2, numero:480, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:117924, moneda_id:2, superficie:109, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Alvear', piso: 2, numero:580, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:127924, moneda_id:2, superficie:119, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Alvear', piso: 2, numero:680, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:137924, moneda_id:2, superficie:129, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Alvear', piso: 2, numero:780, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:8, precio:147924, moneda_id:2, superficie:139, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Libertador', piso: 2, numero:90, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:1663886, moneda_id:1, superficie:56, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Libertador', piso: 2, numero:190, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:1763886, moneda_id:1, superficie:66, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Libertador', piso: 2, numero:290, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:1863886, moneda_id:1, superficie:76, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Libertador', piso: 2, numero:390, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:1963886, moneda_id:1, superficie:86, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Libertador', piso: 2, numero:490, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:441153, moneda_id:2, superficie:96, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Libertador', piso: 2, numero:590, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:451153, moneda_id:2, superficie:106, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Libertador', piso: 2, numero:690, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:461153, moneda_id:2, superficie:116, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Libertador', piso: 2, numero:790, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:9, precio:471153, moneda_id:2, superficie:126, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Cabildo', piso: 2, numero:11, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:3655447, moneda_id:1, superficie:91, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cabildo', piso: 2, numero:111, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:3755447, moneda_id:1, superficie:101, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cabildo', piso: 2, numero:211, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:3855447, moneda_id:1, superficie:111, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cabildo', piso: 2, numero:311, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:3955447, moneda_id:1, superficie:121, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cabildo', piso: 2, numero:411, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:839077, moneda_id:2, superficie:131, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cabildo', piso: 2, numero:511, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:849077, moneda_id:2, superficie:141, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cabildo', piso: 2, numero:611, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:859077, moneda_id:2, superficie:151, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cabildo', piso: 2, numero:711, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:10, precio:869077, moneda_id:2, superficie:161, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Cramer', piso: 2, numero:111, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:2305573, moneda_id:1, superficie:86, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cramer', piso: 2, numero:211, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:2405573, moneda_id:1, superficie:96, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cramer', piso: 2, numero:311, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:2505573, moneda_id:1, superficie:106, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cramer', piso: 2, numero:411, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:2605573, moneda_id:1, superficie:116, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cramer', piso: 2, numero:511, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:724536, moneda_id:2, superficie:126, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cramer', piso: 2, numero:611, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:734536, moneda_id:2, superficie:136, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cramer', piso: 2, numero:711, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:744536, moneda_id:2, superficie:146, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Cramer', piso: 2, numero:811, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:11, precio:754536, moneda_id:2, superficie:156, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Congreso', piso: 2, numero:112, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:6753860, moneda_id:1, superficie:72, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Congreso', piso: 2, numero:212, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:6853860, moneda_id:1, superficie:82, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Congreso', piso: 2, numero:312, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:6953860, moneda_id:1, superficie:92, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Congreso', piso: 2, numero:412, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:7053860, moneda_id:1, superficie:102, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Congreso', piso: 2, numero:512, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:251578, moneda_id:2, superficie:112, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Congreso', piso: 2, numero:612, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:261578, moneda_id:2, superficie:122, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Congreso', piso: 2, numero:712, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:271578, moneda_id:2, superficie:132, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Congreso', piso: 2, numero:812, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:12, precio:281578, moneda_id:2, superficie:142, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Conde', piso: 2, numero:113, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:4315115, moneda_id:1, superficie:45, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Conde', piso: 2, numero:213, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:4415115, moneda_id:1, superficie:55, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Conde', piso: 2, numero:313, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:4515115, moneda_id:1, superficie:65, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Conde', piso: 2, numero:413, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:4615115, moneda_id:1, superficie:75, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Conde', piso: 2, numero:513, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:744939, moneda_id:2, superficie:85, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Conde', piso: 2, numero:613, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:754939, moneda_id:2, superficie:95, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Conde', piso: 2, numero:713, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:764939, moneda_id:2, superficie:105, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Conde', piso: 2, numero:813, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:13, precio:774939, moneda_id:2, superficie:115, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:114, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:6701854, moneda_id:1, superficie:65, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:214, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:6801854, moneda_id:1, superficie:75, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:314, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:6901854, moneda_id:1, superficie:85, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:414, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:7001854, moneda_id:1, superficie:95, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:514, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:602042, moneda_id:2, superficie:105, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:614, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:612042, moneda_id:2, superficie:115, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:714, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:622042, moneda_id:2, superficie:125, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Lavalleja', piso: 2, numero:814, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:14, precio:632042, moneda_id:2, superficie:135, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Araoz', piso: 2, numero:115, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:7661906, moneda_id:1, superficie:64, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Araoz', piso: 2, numero:215, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:7761906, moneda_id:1, superficie:74, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Araoz', piso: 2, numero:315, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:7861906, moneda_id:1, superficie:84, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Araoz', piso: 2, numero:415, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:7961906, moneda_id:1, superficie:94, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Araoz', piso: 2, numero:515, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:390085, moneda_id:2, superficie:104, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Araoz', piso: 2, numero:615, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:400085, moneda_id:2, superficie:114, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Araoz', piso: 2, numero:715, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:410085, moneda_id:2, superficie:124, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Araoz', piso: 2, numero:815, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:15, precio:420085, moneda_id:2, superficie:134, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:6298854, moneda_id:1, superficie:90, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:6398854, moneda_id:1, superficie:100, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:6498854, moneda_id:1, superficie:110, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:6598854, moneda_id:1, superficie:120, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:375807, moneda_id:2, superficie:130, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:385807, moneda_id:2, superficie:140, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:395807, moneda_id:2, superficie:150, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:16, precio:405807, moneda_id:2, superficie:160, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:5578589, moneda_id:1, superficie:42, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:5678589, moneda_id:1, superficie:52, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:5778589, moneda_id:1, superficie:62, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:5878589, moneda_id:1, superficie:72, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:88664, moneda_id:2, superficie:82, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:98664, moneda_id:2, superficie:92, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:108664, moneda_id:2, superficie:102, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:17, precio:118664, moneda_id:2, superficie:112, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:6716247, moneda_id:1, superficie:70, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:6816247, moneda_id:1, superficie:80, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:6916247, moneda_id:1, superficie:90, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:7016247, moneda_id:1, superficie:100, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:800647, moneda_id:2, superficie:110, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:810647, moneda_id:2, superficie:120, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:820647, moneda_id:2, superficie:130, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:18, precio:830647, moneda_id:2, superficie:140, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:6059571, moneda_id:1, superficie:96, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:6159571, moneda_id:1, superficie:106, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:6259571, moneda_id:1, superficie:116, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:6359571, moneda_id:1, superficie:126, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:411770, moneda_id:2, superficie:136, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:421770, moneda_id:2, superficie:146, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:431770, moneda_id:2, superficie:156, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:19, precio:441770, moneda_id:2, superficie:166, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:7545774, moneda_id:1, superficie:49, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:7645774, moneda_id:1, superficie:59, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:7745774, moneda_id:1, superficie:69, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:7845774, moneda_id:1, superficie:79, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:374576, moneda_id:2, superficie:89, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:384576, moneda_id:2, superficie:99, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:394576, moneda_id:2, superficie:109, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:20, precio:404576, moneda_id:2, superficie:119, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:3427436, moneda_id:1, superficie:60, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:3527436, moneda_id:1, superficie:70, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:3627436, moneda_id:1, superficie:80, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:3727436, moneda_id:1, superficie:90, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:448317, moneda_id:2, superficie:100, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:458317, moneda_id:2, superficie:110, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:468317, moneda_id:2, superficie:120, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:21, precio:478317, moneda_id:2, superficie:130, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:9806968, moneda_id:1, superficie:51, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:9906968, moneda_id:1, superficie:61, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:10006968, moneda_id:1, superficie:71, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:10106968, moneda_id:1, superficie:81, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:905046, moneda_id:2, superficie:91, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:915046, moneda_id:2, superficie:101, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:925046, moneda_id:2, superficie:111, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:22, precio:935046, moneda_id:2, superficie:121, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:6547762, moneda_id:1, superficie:72, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:6647762, moneda_id:1, superficie:82, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:6747762, moneda_id:1, superficie:92, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:6847762, moneda_id:1, superficie:102, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:605396, moneda_id:2, superficie:112, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:615396, moneda_id:2, superficie:122, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:625396, moneda_id:2, superficie:132, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:23, precio:635396, moneda_id:2, superficie:142, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:4924593, moneda_id:1, superficie:47, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:5024593, moneda_id:1, superficie:57, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:5124593, moneda_id:1, superficie:67, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:5224593, moneda_id:1, superficie:77, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:434755, moneda_id:2, superficie:87, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:444755, moneda_id:2, superficie:97, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:454755, moneda_id:2, superficie:107, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:24, precio:464755, moneda_id:2, superficie:117, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:8566865, moneda_id:1, superficie:72, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:8666865, moneda_id:1, superficie:82, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:8766865, moneda_id:1, superficie:92, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:8866865, moneda_id:1, superficie:102, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:927347, moneda_id:2, superficie:112, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:937347, moneda_id:2, superficie:122, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:947347, moneda_id:2, superficie:132, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:25, precio:957347, moneda_id:2, superficie:142, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:5130797, moneda_id:1, superficie:72, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:5230797, moneda_id:1, superficie:82, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:5330797, moneda_id:1, superficie:92, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:5430797, moneda_id:1, superficie:102, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:894031, moneda_id:2, superficie:112, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:904031, moneda_id:2, superficie:122, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:914031, moneda_id:2, superficie:132, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:26, precio:924031, moneda_id:2, superficie:142, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:8643337, moneda_id:1, superficie:69, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:8743337, moneda_id:1, superficie:79, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:8843337, moneda_id:1, superficie:89, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:8943337, moneda_id:1, superficie:99, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:236539, moneda_id:2, superficie:109, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:246539, moneda_id:2, superficie:119, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:256539, moneda_id:2, superficie:129, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:27, precio:266539, moneda_id:2, superficie:139, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:3333655, moneda_id:1, superficie:51, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:3433655, moneda_id:1, superficie:61, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:3533655, moneda_id:1, superficie:71, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:3633655, moneda_id:1, superficie:81, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:802832, moneda_id:2, superficie:91, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:812832, moneda_id:2, superficie:101, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:822832, moneda_id:2, superficie:111, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:28, precio:832832, moneda_id:2, superficie:121, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:4613341, moneda_id:1, superficie:78, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:4713341, moneda_id:1, superficie:88, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:4813341, moneda_id:1, superficie:98, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:4913341, moneda_id:1, superficie:108, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:511167, moneda_id:2, superficie:118, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:521167, moneda_id:2, superficie:128, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:531167, moneda_id:2, superficie:138, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:29, precio:541167, moneda_id:2, superficie:148, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:9707639, moneda_id:1, superficie:89, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:9807639, moneda_id:1, superficie:99, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:9907639, moneda_id:1, superficie:109, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:10007639, moneda_id:1, superficie:119, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:863923, moneda_id:2, superficie:129, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:873923, moneda_id:2, superficie:139, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:883923, moneda_id:2, superficie:149, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:30, precio:893923, moneda_id:2, superficie:159, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:8375523, moneda_id:1, superficie:100, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:8475523, moneda_id:1, superficie:110, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:8575523, moneda_id:1, superficie:120, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:8675523, moneda_id:1, superficie:130, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:163861, moneda_id:2, superficie:140, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:173861, moneda_id:2, superficie:150, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:183861, moneda_id:2, superficie:160, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:31, precio:193861, moneda_id:2, superficie:170, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:4964005, moneda_id:1, superficie:85, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:5064005, moneda_id:1, superficie:95, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:5164005, moneda_id:1, superficie:105, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:5264005, moneda_id:1, superficie:115, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:718097, moneda_id:2, superficie:125, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:728097, moneda_id:2, superficie:135, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:738097, moneda_id:2, superficie:145, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:32, precio:748097, moneda_id:2, superficie:155, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:8814346, moneda_id:1, superficie:98, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:8914346, moneda_id:1, superficie:108, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:9014346, moneda_id:1, superficie:118, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:9114346, moneda_id:1, superficie:128, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:668861, moneda_id:2, superficie:138, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:678861, moneda_id:2, superficie:148, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:688861, moneda_id:2, superficie:158, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:33, precio:698861, moneda_id:2, superficie:168, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:8876918, moneda_id:1, superficie:83, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:8976918, moneda_id:1, superficie:93, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:9076918, moneda_id:1, superficie:103, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:9176918, moneda_id:1, superficie:113, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:197032, moneda_id:2, superficie:123, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:207032, moneda_id:2, superficie:133, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:217032, moneda_id:2, superficie:143, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:34, precio:227032, moneda_id:2, superficie:153, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:5035453, moneda_id:1, superficie:56, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:5135453, moneda_id:1, superficie:66, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:5235453, moneda_id:1, superficie:76, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:5335453, moneda_id:1, superficie:86, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:257892, moneda_id:2, superficie:96, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:267892, moneda_id:2, superficie:106, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:277892, moneda_id:2, superficie:116, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:35, precio:287892, moneda_id:2, superficie:126, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:7879016, moneda_id:1, superficie:62, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:7979016, moneda_id:1, superficie:72, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:8079016, moneda_id:1, superficie:82, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:8179016, moneda_id:1, superficie:92, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:457949, moneda_id:2, superficie:102, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:467949, moneda_id:2, superficie:112, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:477949, moneda_id:2, superficie:122, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:36, precio:487949, moneda_id:2, superficie:132, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:6291381, moneda_id:1, superficie:57, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:6391381, moneda_id:1, superficie:67, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:6491381, moneda_id:1, superficie:77, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:6591381, moneda_id:1, superficie:87, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:489351, moneda_id:2, superficie:97, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:499351, moneda_id:2, superficie:107, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:509351, moneda_id:2, superficie:117, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:37, precio:519351, moneda_id:2, superficie:127, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:7142698, moneda_id:1, superficie:92, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:7242698, moneda_id:1, superficie:102, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:7342698, moneda_id:1, superficie:112, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:7442698, moneda_id:1, superficie:122, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:342655, moneda_id:2, superficie:132, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:352655, moneda_id:2, superficie:142, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:362655, moneda_id:2, superficie:152, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:38, precio:372655, moneda_id:2, superficie:162, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:2127829, moneda_id:1, superficie:51, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:2227829, moneda_id:1, superficie:61, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:2327829, moneda_id:1, superficie:71, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:2427829, moneda_id:1, superficie:81, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:810595, moneda_id:2, superficie:91, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:820595, moneda_id:2, superficie:101, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:830595, moneda_id:2, superficie:111, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:39, precio:840595, moneda_id:2, superficie:121, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:5224581, moneda_id:1, superficie:89, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:5324581, moneda_id:1, superficie:99, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:5424581, moneda_id:1, superficie:109, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:5524581, moneda_id:1, superficie:119, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:561459, moneda_id:2, superficie:129, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:571459, moneda_id:2, superficie:139, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:581459, moneda_id:2, superficie:149, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:40, precio:591459, moneda_id:2, superficie:159, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:9302894, moneda_id:1, superficie:68, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:9402894, moneda_id:1, superficie:78, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:9502894, moneda_id:1, superficie:88, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:9602894, moneda_id:1, superficie:98, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:449162, moneda_id:2, superficie:108, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:459162, moneda_id:2, superficie:118, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:469162, moneda_id:2, superficie:128, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:41, precio:479162, moneda_id:2, superficie:138, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:2175507, moneda_id:1, superficie:96, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:2275507, moneda_id:1, superficie:106, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:2375507, moneda_id:1, superficie:116, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:2475507, moneda_id:1, superficie:126, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:611953, moneda_id:2, superficie:136, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:621953, moneda_id:2, superficie:146, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:631953, moneda_id:2, superficie:156, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:42, precio:641953, moneda_id:2, superficie:166, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:7870921, moneda_id:1, superficie:76, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:7970921, moneda_id:1, superficie:86, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:8070921, moneda_id:1, superficie:96, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:8170921, moneda_id:1, superficie:106, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:622246, moneda_id:2, superficie:116, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:632246, moneda_id:2, superficie:126, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:642246, moneda_id:2, superficie:136, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:43, precio:652246, moneda_id:2, superficie:146, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:6932847, moneda_id:1, superficie:96, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:7032847, moneda_id:1, superficie:106, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:7132847, moneda_id:1, superficie:116, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:7232847, moneda_id:1, superficie:126, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:279215, moneda_id:2, superficie:136, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:289215, moneda_id:2, superficie:146, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:299215, moneda_id:2, superficie:156, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:44, precio:309215, moneda_id:2, superficie:166, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:6695554, moneda_id:1, superficie:78, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:6795554, moneda_id:1, superficie:88, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:6895554, moneda_id:1, superficie:98, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:6995554, moneda_id:1, superficie:108, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:579362, moneda_id:2, superficie:118, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:589362, moneda_id:2, superficie:128, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:599362, moneda_id:2, superficie:138, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:45, precio:609362, moneda_id:2, superficie:148, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:2743297, moneda_id:1, superficie:46, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:2843297, moneda_id:1, superficie:56, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:2943297, moneda_id:1, superficie:66, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:3043297, moneda_id:1, superficie:76, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:785635, moneda_id:2, superficie:86, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:795635, moneda_id:2, superficie:96, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:805635, moneda_id:2, superficie:106, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:46, precio:815635, moneda_id:2, superficie:116, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:6992157, moneda_id:1, superficie:100, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:7092157, moneda_id:1, superficie:110, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:7192157, moneda_id:1, superficie:120, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:7292157, moneda_id:1, superficie:130, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:148075, moneda_id:2, superficie:140, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:158075, moneda_id:2, superficie:150, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:168075, moneda_id:2, superficie:160, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:47, precio:178075, moneda_id:2, superficie:170, ambientes:2, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)










Propiedad.new({direccion: 'Camargo', piso: 2, numero:116, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:2847174, moneda_id:1, superficie:48, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:216, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:2947174, moneda_id:1, superficie:58, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:316, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:3047174, moneda_id:1, superficie:68, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:416, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:3147174, moneda_id:1, superficie:78, ambientes:1, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.third, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:516, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:601897, moneda_id:2, superficie:88, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:616, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:611897, moneda_id:2, superficie:98, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.first, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:716, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:621897, moneda_id:2, superficie:108, ambientes:4, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)
Propiedad.new({direccion: 'Camargo', piso: 2, numero:816, departamento: 'A', descripcion: 'descripcio1', antiguedad: 1, operacion_id: 1, barrio_id:48, precio:631897, moneda_id:2, superficie:118, ambientes:3, dormitorios: 2, expensas: 1200, tipo_propiedad_id: 2, user: usuarios.second, amenities: [amenities.first, amenities.second], tipo_publicacion_id: 1, fecha_publicacion: '2014-11-02 16:05:35', fecha_finalizacion: '2014-12-02 16:05:35', estado_id: 1, latitude: -34.6073, longitude: -58.5051}).save(validate: false)


# Tabla tomada de 
# https://docs.google.com/spreadsheets/d/1LGmz99P9IWCiTBJ6_my0Q8yhFjCP-t5CRKbcBhGaATo/edit#gid=231539935
Vecino.create([{barrio_id: 1, vecino_id: 43},
{barrio_id: 1, vecino_id: 48},
{barrio_id: 1, vecino_id: 25},
{barrio_id: 1, vecino_id: 15},
{barrio_id: 1, vecino_id: 37},
{barrio_id: 1, vecino_id: 38},
{barrio_id: 2, vecino_id: 36},
{barrio_id: 2, vecino_id: 22},
{barrio_id: 2, vecino_id: 28},
{barrio_id: 2, vecino_id: 3},
{barrio_id: 2, vecino_id: 31},
{barrio_id: 2, vecino_id: 6},
{barrio_id: 2, vecino_id: 24},
{barrio_id: 2, vecino_id: 7},
{barrio_id: 3, vecino_id: 2},
{barrio_id: 3, vecino_id: 28},
{barrio_id: 3, vecino_id: 32},
{barrio_id: 3, vecino_id: 19},
{barrio_id: 3, vecino_id: 11},
{barrio_id: 3, vecino_id: 31},
{barrio_id: 3, vecino_id: 6},
{barrio_id: 4, vecino_id: 26},
{barrio_id: 4, vecino_id: 11},
{barrio_id: 4, vecino_id: 33},
{barrio_id: 4, vecino_id: 14},
{barrio_id: 4, vecino_id: 20},
{barrio_id: 5, vecino_id: 21},
{barrio_id: 5, vecino_id: 22},
{barrio_id: 5, vecino_id: 10},
{barrio_id: 5, vecino_id: 42},
{barrio_id: 5, vecino_id: 48},
{barrio_id: 5, vecino_id: 9},
{barrio_id: 6, vecino_id: 7},
{barrio_id: 6, vecino_id: 2},
{barrio_id: 6, vecino_id: 3},
{barrio_id: 6, vecino_id: 31},
{barrio_id: 6, vecino_id: 26},
{barrio_id: 6, vecino_id: 20},
{barrio_id: 6, vecino_id: 24},
{barrio_id: 7, vecino_id: 39},
{barrio_id: 7, vecino_id: 15},
{barrio_id: 7, vecino_id: 36},
{barrio_id: 7, vecino_id: 2},
{barrio_id: 7, vecino_id: 6},
{barrio_id: 7, vecino_id: 24},
{barrio_id: 7, vecino_id: 12},
{barrio_id: 8, vecino_id: 42},
{barrio_id: 8, vecino_id: 10},
{barrio_id: 8, vecino_id: 22},
{barrio_id: 8, vecino_id: 36},
{barrio_id: 8, vecino_id: 15},
{barrio_id: 9, vecino_id: 30},
{barrio_id: 9, vecino_id: 21},
{barrio_id: 9, vecino_id: 5},
{barrio_id: 9, vecino_id: 48},
{barrio_id: 10, vecino_id: 5},
{barrio_id: 10, vecino_id: 22},
{barrio_id: 10, vecino_id: 36},
{barrio_id: 10, vecino_id: 8},
{barrio_id: 10, vecino_id: 42},
{barrio_id: 11, vecino_id: 3},
{barrio_id: 11, vecino_id: 19},
{barrio_id: 11, vecino_id: 33},
{barrio_id: 11, vecino_id: 4},
{barrio_id: 11, vecino_id: 26},
{barrio_id: 11, vecino_id: 31},
{barrio_id: 12, vecino_id: 46},
{barrio_id: 12, vecino_id: 39},
{barrio_id: 12, vecino_id: 7},
{barrio_id: 12, vecino_id: 24},
{barrio_id: 12, vecino_id: 20},
{barrio_id: 12, vecino_id: 47},
{barrio_id: 12, vecino_id: 23},
{barrio_id: 12, vecino_id: 13},
{barrio_id: 13, vecino_id: 18},
{barrio_id: 13, vecino_id: 37},
{barrio_id: 13, vecino_id: 46},
{barrio_id: 13, vecino_id: 12},
{barrio_id: 13, vecino_id: 23},
{barrio_id: 13, vecino_id: 34},
{barrio_id: 14, vecino_id: 33},
{barrio_id: 14, vecino_id: 4},
{barrio_id: 15, vecino_id: 1},
{barrio_id: 15, vecino_id: 25},
{barrio_id: 15, vecino_id: 42},
{barrio_id: 15, vecino_id: 8},
{barrio_id: 15, vecino_id: 36},
{barrio_id: 15, vecino_id: 7},
{barrio_id: 15, vecino_id: 39},
{barrio_id: 15, vecino_id: 37},
{barrio_id: 16, vecino_id: 35},
{barrio_id: 16, vecino_id: 41},
{barrio_id: 16, vecino_id: 17},
{barrio_id: 17, vecino_id: 16},
{barrio_id: 17, vecino_id: 41},
{barrio_id: 17, vecino_id: 23},
{barrio_id: 17, vecino_id: 40},
{barrio_id: 18, vecino_id: 44},
{barrio_id: 18, vecino_id: 38},
{barrio_id: 18, vecino_id: 37},
{barrio_id: 18, vecino_id: 46},
{barrio_id: 18, vecino_id: 13},
{barrio_id: 18, vecino_id: 34},
{barrio_id: 18, vecino_id: 41},
{barrio_id: 18, vecino_id: 35},
{barrio_id: 19, vecino_id: 3},
{barrio_id: 19, vecino_id: 32},
{barrio_id: 19, vecino_id: 33},
{barrio_id: 19, vecino_id: 11},
{barrio_id: 19, vecino_id: 31},
{barrio_id: 20, vecino_id: 12},
{barrio_id: 20, vecino_id: 24},
{barrio_id: 20, vecino_id: 6},
{barrio_id: 20, vecino_id: 26},
{barrio_id: 20, vecino_id: 4},
{barrio_id: 20, vecino_id: 47},
{barrio_id: 21, vecino_id: 5},
{barrio_id: 21, vecino_id: 9},
{barrio_id: 21, vecino_id: 30},
{barrio_id: 22, vecino_id: 5},
{barrio_id: 22, vecino_id: 28},
{barrio_id: 22, vecino_id: 2},
{barrio_id: 22, vecino_id: 36},
{barrio_id: 22, vecino_id: 8},
{barrio_id: 22, vecino_id: 10},
{barrio_id: 23, vecino_id: 41},
{barrio_id: 23, vecino_id: 34},
{barrio_id: 23, vecino_id: 13},
{barrio_id: 23, vecino_id: 12},
{barrio_id: 23, vecino_id: 47},
{barrio_id: 23, vecino_id: 40},
{barrio_id: 23, vecino_id: 17},
{barrio_id: 24, vecino_id: 12},
{barrio_id: 24, vecino_id: 7},
{barrio_id: 24, vecino_id: 6},
{barrio_id: 24, vecino_id: 20},
{barrio_id: 25, vecino_id: 43},
{barrio_id: 25, vecino_id: 48},
{barrio_id: 25, vecino_id: 42},
{barrio_id: 25, vecino_id: 15},
{barrio_id: 25, vecino_id: 1},
{barrio_id: 26, vecino_id: 6},
{barrio_id: 26, vecino_id: 31},
{barrio_id: 26, vecino_id: 11},
{barrio_id: 26, vecino_id: 4},
{barrio_id: 26, vecino_id: 20},
{barrio_id: 27, vecino_id: 14},
{barrio_id: 27, vecino_id: 33},
{barrio_id: 27, vecino_id: 19},
{barrio_id: 27, vecino_id: 32},
{barrio_id: 27, vecino_id: 29},
{barrio_id: 28, vecino_id: 22},
{barrio_id: 28, vecino_id: 29},
{barrio_id: 28, vecino_id: 32},
{barrio_id: 28, vecino_id: 3},
{barrio_id: 28, vecino_id: 2},
{barrio_id: 29, vecino_id: 28},
{barrio_id: 29, vecino_id: 32},
{barrio_id: 30, vecino_id: 21},
{barrio_id: 30, vecino_id: 9},
{barrio_id: 30, vecino_id: 48},
{barrio_id: 30, vecino_id: 43},
{barrio_id: 31, vecino_id: 2},
{barrio_id: 31, vecino_id: 3},
{barrio_id: 31, vecino_id: 19},
{barrio_id: 31, vecino_id: 11},
{barrio_id: 31, vecino_id: 26},
{barrio_id: 31, vecino_id: 6},
{barrio_id: 32, vecino_id: 28},
{barrio_id: 32, vecino_id: 29},
{barrio_id: 32, vecino_id: 19},
{barrio_id: 32, vecino_id: 3},
{barrio_id: 33, vecino_id: 11},
{barrio_id: 33, vecino_id: 19},
{barrio_id: 33, vecino_id: 14},
{barrio_id: 33, vecino_id: 4},
{barrio_id: 34, vecino_id: 18},
{barrio_id: 34, vecino_id: 13},
{barrio_id: 34, vecino_id: 23},
{barrio_id: 34, vecino_id: 41},
{barrio_id: 35, vecino_id: 44},
{barrio_id: 35, vecino_id: 18},
{barrio_id: 35, vecino_id: 41},
{barrio_id: 35, vecino_id: 16},
{barrio_id: 36, vecino_id: 15},
{barrio_id: 36, vecino_id: 8},
{barrio_id: 36, vecino_id: 22},
{barrio_id: 36, vecino_id: 2},
{barrio_id: 36, vecino_id: 7},
{barrio_id: 36, vecino_id: 39},
{barrio_id: 37, vecino_id: 38},
{barrio_id: 37, vecino_id: 1},
{barrio_id: 37, vecino_id: 15},
{barrio_id: 37, vecino_id: 39},
{barrio_id: 37, vecino_id: 46},
{barrio_id: 37, vecino_id: 18},
{barrio_id: 38, vecino_id: 43},
{barrio_id: 38, vecino_id: 1},
{barrio_id: 38, vecino_id: 37},
{barrio_id: 38, vecino_id: 18},
{barrio_id: 38, vecino_id: 44},
{barrio_id: 39, vecino_id: 37},
{barrio_id: 39, vecino_id: 15},
{barrio_id: 39, vecino_id: 36},
{barrio_id: 39, vecino_id: 7},
{barrio_id: 39, vecino_id: 12},
{barrio_id: 39, vecino_id: 46},
{barrio_id: 40, vecino_id: 17},
{barrio_id: 40, vecino_id: 23},
{barrio_id: 40, vecino_id: 47},
{barrio_id: 40, vecino_id: 45},
{barrio_id: 41, vecino_id: 35},
{barrio_id: 41, vecino_id: 18},
{barrio_id: 41, vecino_id: 34},
{barrio_id: 41, vecino_id: 23},
{barrio_id: 41, vecino_id: 17},
{barrio_id: 41, vecino_id: 16},
{barrio_id: 42, vecino_id: 48},
{barrio_id: 42, vecino_id: 5},
{barrio_id: 42, vecino_id: 10},
{barrio_id: 42, vecino_id: 8},
{barrio_id: 42, vecino_id: 15},
{barrio_id: 42, vecino_id: 25},
{barrio_id: 43, vecino_id: 30},
{barrio_id: 43, vecino_id: 48},
{barrio_id: 43, vecino_id: 1},
{barrio_id: 43, vecino_id: 38},
{barrio_id: 44, vecino_id: 38},
{barrio_id: 44, vecino_id: 18},
{barrio_id: 44, vecino_id: 35},
{barrio_id: 45, vecino_id: 40},
{barrio_id: 45, vecino_id: 47},
{barrio_id: 46, vecino_id: 37},
{barrio_id: 46, vecino_id: 39},
{barrio_id: 46, vecino_id: 12},
{barrio_id: 46, vecino_id: 13},
{barrio_id: 46, vecino_id: 18},
{barrio_id: 47, vecino_id: 23},
{barrio_id: 47, vecino_id: 12},
{barrio_id: 47, vecino_id: 20},
{barrio_id: 47, vecino_id: 45},
{barrio_id: 47, vecino_id: 40},
{barrio_id: 48, vecino_id: 30},
{barrio_id: 48, vecino_id: 9},
{barrio_id: 48, vecino_id: 5},
{barrio_id: 48, vecino_id: 42},
{barrio_id: 48, vecino_id: 25},
{barrio_id: 48, vecino_id: 1},
{barrio_id: 48, vecino_id: 43}])

