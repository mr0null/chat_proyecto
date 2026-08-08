namespace ForoChat.Api.Entidades;

public class Conversacion
{
    public int Id { get; set; }
    public string Titulo { get; set; } = "";
    public string? Miniatura { get; set; }

    // FK con EstadoConversacion
    // FK con TipoConversacion
    // FK con Categoria
    // FK con Usuario (AutorOriginal/Creador)
}