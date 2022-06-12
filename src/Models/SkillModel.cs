using System.ComponentModel.DataAnnotations.Schema;

namespace Trackii.Models;

[Table("Skill")]
public class SkillModel
{
  public long Id { get; set; }
  public string Description { get; set; } = "";
  public string Name { get; set; } = "";
  public long? SkillGroupId { get; set; }
}
