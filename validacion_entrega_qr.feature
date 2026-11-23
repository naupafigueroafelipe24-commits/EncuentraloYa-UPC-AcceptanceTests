# language: es
Característica: Sistema de validación de propiedad y entrega segura mediante QR (EP03)
  Como estudiante y personal de custodia de la UPC
  Quiero gestionar solicitudes de reclamo, validaciones y códigos QR de retiro
  Para asegurar que cada pertenencia sea entregada estrictamente a su dueño legítimo

  # Relacionado con US05: Formulario de reclamo de propiedad
  Escenario: Enviar solicitud de reclamo respondiendo pregunta de seguridad
    Dado que el estudiante identifica su pertenencia en el catálogo y presiona "Reclamar"
    Cuando responde la pregunta sobre una característica no visible del objeto y envía el formulario
    Entonces el sistema registra la solicitud con estado "En revisión"

  # Relacionado con US24: Evidencia al reclamar
  Escenario: Adjuntar comprobante o fotografía de respaldo en el reclamo
    Dado que el estudiante está completando el formulario de reclamo de un artículo genérico
    Cuando adjunta una imagen de comprobante en formato JPG o PNG y envía la solicitud
    Entonces el sistema almacena la evidencia y la habilita en el panel de revisión de custodia

  # Relacionado con US06: Revisión de solicitud de reclamo
  Escenario: Personal de custodia aprueba solicitud tras verificar respuestas
    Dado que existe una solicitud de reclamo en estado "En revisión"
    Cuando el personal de custodia verifica que las respuestas coinciden con el objeto físico y selecciona "Aprobar"
    Entonces el sistema cambia el estado del reclamo a "Aprobado" y genera el código QR de entrega

  # Relacionado con US17: Apelación tras rechazo
  Escenario: Recibir motivo de rechazo y enviar segunda validación
    Dado que el personal de custodia rechaza un reclamo registrando un motivo específico
    Cuando el estudiante abre la notificación de rechazo en la aplicación
    Entonces el sistema le permite enviar una segunda respuesta de validación complementaria

  # Relacionado con US18: Estado de mis reclamos
  Escenario: Consultar el estado actualizado de solicitudes en Mis Reclamos
    Dado que el estudiante ha enviado una o más solicitudes de reclamo
    Cuando ingresa a la sección "Mis Reclamos"
    Entonces visualiza el listado de sus trámites con su estado actual, fecha y el código QR en caso de estar aprobado

  # Relacionado con US27: Recojo por tercero autorizado
  Escenario: Autorizar a un compañero con correo institucional para recoger el objeto
    Dado que el estudiante cuenta con una solicitud de reclamo en estado "Aprobado"
    Cuando registra el correo institucional "@upc.edu.pe" de un compañero autorizado
    Entonces el sistema genera un código QR delegado vinculado a la identidad de ambos estudiantes

  # Relacionado con US07: Escaneo de código QR para entrega
  Escenario: Confirmar entrega física mediante escaneo de código QR en caseta
    Dado que el estudiante o tercero autorizado presenta su código QR vigente en el módulo de custodia
    Cuando el personal de custodia escanea el código con el lector de la aplicación
    Entonces el sistema valida el código y actualiza el estado del objeto a "Cerrado y Devuelto"
