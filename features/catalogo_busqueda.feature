# language: es
Característica: Búsqueda y exploración del catálogo de objetos hallados (EP01)
  Como estudiante de la UPC
  Quiero explorar el catálogo digital mediante filtros, palabras clave y fichas de detalle
  Para localizar mis pertenencias perdidas de forma remota y rápida

  # Relacionado con US01: Búsqueda por filtros en catálogo
  Escenario: Filtrar objetos del catálogo por sede, categoría y fecha
    Dado que el estudiante ha iniciado sesión y se encuentra en el catálogo principal
    Cuando selecciona la sede "Monterrico", la categoría "Tecnología" y el rango de fecha de la semana actual
    Entonces el sistema muestra únicamente los objetos hallados que cumplen con los tres filtros aplicados

  # Relacionado con US02: Consulta de detalle del objeto
  Escenario: Visualizar ficha de detalle público sin exponer datos sensibles
    Dado que el estudiante observa una lista de resultados en el catálogo
    Cuando hace clic sobre un objeto registrado en el listado
    Entonces el sistema despliega la ficha con fotografía referencial, fecha, pabellón del hallazgo y oculta los detalles secretos de validación

  # Relacionado con US19: Búsqueda por palabra clave
  Escenario: Buscar pertenencias mediante palabras clave en la barra de búsqueda
    Dado que el estudiante se encuentra en la vista del catálogo de hallazgos
    Cuando escribe "cargador Lenovo" en la barra de búsqueda y presiona buscar
    Entonces el sistema filtra y presenta únicamente los registros cuyo título o descripción coinciden con "cargador Lenovo"
