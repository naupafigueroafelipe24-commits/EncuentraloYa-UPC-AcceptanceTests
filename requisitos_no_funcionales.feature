# language: es
Característica: Requisitos no funcionales de seguridad, privacidad, expiración y control de acceso
  Como comunidad universitaria y administración de la UPC
  Quiero que la plataforma garantice autenticación institucional, expiración de tokens QR, control de permisos y privacidad de datos
  Para proteger la seguridad de la información y la integridad operativa del servicio

  # Relacionado con US08 (No Funcional - Seguridad de Autenticación): Autenticación con correo institucional
  Escenario: Restringir el acceso exclusivamente a correos del dominio @upc.edu.pe
    Dado que un usuario intenta iniciar sesión en la plataforma EncuéntraloYa UPC
    Cuando ingresa un correo electrónico ajeno al dominio institucional (ej. "usuario@gmail.com")
    Entonces el sistema bloquea el ingreso y muestra el mensaje "Acceso denegado: use su correo @upc.edu.pe"

  # Relacionado con US25 (No Funcional - Seguridad y Vigencia de Tokens): Vigencia y renovación de QR
  Escenario: Bloquear código QR expirado después de 48 horas y permitir renovación
    Dado que un reclamo fue aprobado hace más de 48 horas sin haberse retirado el objeto
    Cuando el estudiante intenta visualizar o presentar el código QR vencido
    Entonces el sistema invalida el código anterior por seguridad y habilita la opción "Renovar código de recojo"

  # Relacionado con US28 (No Funcional - Control de Acceso y Auditoría de Roles): Gestión de cuentas de custodia
  Escenario: Aplicar permisos y restricción por sede al personal de custodia
    Dado que el administrador asigna a un agente de seguridad únicamente la sede "San Isidro"
    Cuando dicho agente inicia sesión en el panel administrativo
    Entonces el sistema restringe sus permisos de aprobación y edición exclusivamente a los registros de la sede "San Isidro"

  # Relacionado con US30 (No Funcional - Privacidad y Protección de Datos Personales): Chat interno protegido
  Escenario: Proteger datos personales en la mensajería interna de un reclamo
    Dado que un estudiante y el personal de custodia intercambian mensajes en el chat vinculado a un reclamo
    Cuando se envía un mensaje dentro del hilo del caso
    Entonces la plataforma transmite la comunicación sin exponer números telefónicos, correos personales ni redes sociales de los participantes
