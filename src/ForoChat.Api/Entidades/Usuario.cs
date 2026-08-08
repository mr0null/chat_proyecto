namespace ForoChat.Api.Entidades;

public class Usuario
{
    public int Id { get; set; }

    public string Nombre { get; set; } = "";

    public string Apodo { get; set; } = "";

    public string PasswordHash { get; set; } = "";

    public string Mail { get; set; } = "";

    public string? Avatar { get; set; }

    public DateTime FechaRegistro { get; set; }

    public DateTime? FechaUltimaConexion { get; set; }
}