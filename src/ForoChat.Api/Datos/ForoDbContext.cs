using Microsoft.EntityFrameworkCore;

namespace ForoChat.Api.Datos;

public class ForoDbContext : DbContext
{
    public DbSet<Usuario> Usuarios { get; set; }
}