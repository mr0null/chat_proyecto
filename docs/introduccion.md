# Objetivo general

Diseñar y desarrollar una aplicación web que permita a los usuarios interactuar mediante conversaciones, facilitando su creación, persistencia y reorganización.

# Objetivos específicos
## General
- Permitir a los usuarios enviar y recibir mensajes.
- Persistir conversaciones y mensajes.
- Permitir reorganizar las conversaciones mediante referencias, recortes y diferentes formas de visualización.
- Permitir que una conversación evolucione entre distintos formatos de interacción sin perder su contexto.

## Tipo de conversación n°1: Post (Descripción)
Un usuario puede crear una conversación del tipo post. La conversación parte 
de n mensajes raiz siendo n > 0. Los mensajes pueden ser o no de su autoría.
Este, convierte al usuario en el dueño de la conversación, denominada "post".
El usuario puede modificar el título y agregar mensajes raíces. No podrá
eliminarlos, debe solicitar acción de un mod.
Este tipo de conversación permite activar el modo lento*.

### Mecánica n°1: Modo lento
Permite la asignación de una cantidad n de tiempo entre respuestas del mismo
usuario.
Permite mostrar los nuevos mensajes a voluntad (se agregan a una cola para
mostrarlos cuando el usuario lo desee)

### Mecánica n°2: Liberar post
Permite al autor del post liberar su autoría y que pase a ser un chat.
Los mensajes originales tendrán una distinción de OG y OP.

## Tipo de conversación n°2: Chat (Descripción)
Un chat puede originarse como el chat predeterminado de una categoría, 
ser creado directamente por un usuario o surgir a partir de la liberación 
de un post. Es un bosque de árboles.

# Tipo de conversación n°3: Arca (Descripción)
El Arca es una conversación destinada a preservar y consultar contenido histórico.
Puede originarse de dos formas:
A partir de un post existente que se archiva.
Como una conversación creada directamente para el Arca, destinada exclusivamente a conservar contenido histórico.
Cada conversación pertenecerá a una categoría para preservar distinto tipo de contenido.

# Objetivos de seguridad
- Se otorgaran maximo 4 tokens por ip.

