namespace ForoChat.Api.Entidades;

public class Mensaje
{
    public int Id { get; set; }
    // FK con Mensaje (MensajePadre)
    // FK con Usuario (Autor)
    // FK con Conversacion
    public string Contenido { get; set; } = "";
    public string? Multimedia { get; set; }
    public DateTime FechaEnvio { get; set; }
}