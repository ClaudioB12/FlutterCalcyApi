class Usuario {
  String? id;
  String? nombre;
  String? apellidos;
  String? dni;
  String? idPerfil;
  String? nombrePerfil;
  String? estadoPerfil;

  Usuario({
    this.id,
    this.nombre,
    this.apellidos,
    this.dni,
    this.idPerfil,
    this.nombrePerfil,
    this.estadoPerfil,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['ID']?.toString();
    nombre = json['NOMBRE']?.toString();
    apellidos = json['APELLIDOS']?.toString();
    dni = json['DNI']?.toString();
    idPerfil = json['ID_PERFIL']?.toString();
    nombrePerfil = json['NOMBRE_PERFIL']?.toString();
    estadoPerfil = json['ESTADO_PERFIL']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['ID'] = id;
    data['NOMBRE'] = nombre;
    data['APELLIDOS'] = apellidos;
    data['DNI'] = dni;
    data['ID_PERFIL'] = idPerfil;
    data['NOMBRE_PERFIL'] = nombrePerfil;
    data['ESTADO_PERFIL'] = estadoPerfil;
    return data;
  }
}
