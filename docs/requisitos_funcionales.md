# Requisitos funcionales

Actores: 
	Usuario
	Moderador
	Administrador
	Owner

# Requisitos funcionales

## Actor: Usuario

### Gestión de la cuenta

**RF-001 — Registrar una cuenta**
El sistema debe permitir al usuario registrar una cuenta.

**RF-002 — Iniciar sesión**
El sistema debe permitir al usuario ingresar al sistema utilizando sus credenciales.

---

### Gestión de conversaciones

**RF-003 — Ingresar a una categoría**
El sistema debe permitir al usuario visualizar e ingresar a las categorías existentes.

**RF-004 — Iniciar una conversación desde una categoría**
El sistema debe permitir al usuario iniciar una conversación desde una categoría existente.

**RF-005 — Seleccionar el tipo de conversación**
El sistema debe permitir al usuario seleccionar el tipo de conversación al iniciar una nueva conversación, de acuerdo con los tipos disponibles.

---

### Gestión de mensajes

**RF-006 — Enviar mensajes**
El sistema debe permitir al usuario enviar mensajes dentro de las conversaciones que permitan la participación de usuarios.

**RF-007 — Visualizar mensajes**
El sistema debe permitir al usuario visualizar los mensajes pertenecientes a una conversación.

**RF-008 — Crear mensajes raíz**
El sistema debe permitir al usuario crear mensajes raíz de acuerdo con las reglas correspondientes al tipo de conversación.

**RF-009 — Responder mensajes**
El sistema debe permitir al usuario responder mensajes existentes dentro de una conversación.

---

### Gestión de Posts

**RF-010 — Convertirse en autor original de un Post**
El sistema debe asignar automáticamente al usuario como autor original de un Post creado por él.

**RF-011 — Agregar mensajes raíz a un Post**
El sistema debe permitir al autor original de un Post agregar nuevos mensajes raíz.

**RF-012 — Liberar un Post**
El sistema debe permitir al autor original liberar un Post de su autoría. Al realizar esta acción, la conversación debe transformarse en una conversación de tipo Chat, conservando los mensajes y el contexto existentes.

## Actor: Moderador

**RF-013 — Archivar un Post en el Arca**
El sistema debe permitir al Moderador archivar un Post en el Arca cuando considere que posee valor histórico.

**RF-014 — Eliminar lógicamente un mensaje**
El sistema debe permitir al Moderador eliminar lógicamente un mensaje que incumpla las normas de la comunidad.

**RF-015 — Eliminar lógicamente una conversación**
El sistema debe permitir al Moderador eliminar lógicamente una conversación que incumpla las normas de la comunidad.

**RF-016 — Modificar el estado de una cuenta de usuario**
El sistema debe permitir al Moderador modificar el estado de una cuenta de usuario como medida disciplinaria, restringiendo las acciones que el usuario puede realizar dentro de la plataforma.

## Actor: Administrador

**RF-017 — Ejecutar las funciones del Moderador**
El sistema debe permitir al Administrador realizar todas las acciones disponibles para el Moderador.

**RF-018 — Aplicar sanciones a Moderadores**
El sistema debe permitir al Administrador modificar el estado de la cuenta de un Moderador como medida disciplinaria.

**RF-019 — Deshabilitar temporalmente el registro de usuarios**
El sistema debe permitir al Administrador deshabilitar temporalmente el registro de nuevos usuarios como medida de seguridad.

**RF-020 — Deshabilitar temporalmente la creación de conversaciones**
El sistema debe permitir al Administrador deshabilitar temporalmente la creación de nuevas conversaciones como medida de seguridad.

**RF-021 — Deshabilitar temporalmente el envío de mensajes**
El sistema debe permitir al Administrador deshabilitar temporalmente el envío de nuevos mensajes como medida de seguridad.

**RF-022 — Restablecer las funciones deshabilitadas**
El sistema debe permitir al Administrador volver a habilitar el registro de usuarios, la creación de conversaciones y el envío de mensajes.

**RF-023 — Fijar una conversación**
El sistema debe permitir al Administrador fijar una conversación en la parte superior de una categoría o de la página principal.

**RF-024 — Desfijar una conversación**
El sistema debe permitir al Administrador retirar una conversación de la posición fijada en una categoría o en la página principal.

## Actor: Owner

**RF-025 — Ejecutar las funciones del Administrador**
El sistema debe permitir al Owner realizar todas las acciones disponibles para el Administrador.

**RF-026 — Gestionar Administradores**
El sistema debe permitir al Owner asignar y revocar el rol de Administrador a los usuarios que correspondan.

**RF-027 — Aplicar sanciones a Administradores**
El sistema debe permitir al Owner modificar el estado de la cuenta de un Administrador como medida disciplinaria.

**RF-028 — Crear categorías**
El sistema debe permitir al Owner crear nuevas categorías.

**RF-029 — Modificar categorías**
El sistema debe permitir al Owner modificar categorías existentes.

**RF-030 — Eliminar categorías**
El sistema debe permitir al Owner eliminar categorías existentes.

