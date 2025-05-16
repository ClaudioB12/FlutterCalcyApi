class JwtRequest {
  final String correo;
  final String clave;

  JwtRequest({required this.correo, required this.clave});

  Map<String, dynamic> toJson() => {
    'correo': correo,
    'clave': clave,
  };
}
