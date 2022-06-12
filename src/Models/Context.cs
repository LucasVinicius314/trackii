using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Trackii.Models;

public class MainContext : DbContext
{
  public DbSet<SkillModel>? Skills { get; set; }

  protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
      => optionsBuilder.UseNpgsql(Env.DatabaseUrl);
}