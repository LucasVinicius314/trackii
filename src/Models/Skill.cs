using Microsoft.EntityFrameworkCore;

namespace Trackii.Models;

public class SkillContext : DbContext
{
  public DbSet<Skill>? Skills { get; set; }

  protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
      => optionsBuilder.UseNpgsql(Env.DatabaseUrl);
}

public class Skill
{
  public int Id { get; set; }
  public string Name { get; set; } = "";
}
