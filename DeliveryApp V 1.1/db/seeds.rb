Rol.create!([
  {nombre_rol: "Administrador", descripcion_rol: "El administrador gestiona todos los modulos", estado_rol: 1}
])
Usuario.create!([
  {nick_usuario: "Admin",nombre_usuario: "Admin",apellido_usuario: "Admin", documento_usuario: "2223332", estado_usuario: 1, rol_id: 1, email: "deliveryapp@gmail.com", password: "11111111", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-04-17 06:14:18", last_sign_in_at: "2016-04-17 06:14:18", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])