using System.ComponentModel.DataAnnotations.Schema;

namespace Trackii.Models;

[Table("SkillGroup")]
public class SkillGroupModel
{
  public long Id { get; set; }
  public string Name { get; set; } = "";
  public int Priority { get; set; }
  public long? SkillGroupId { get; set; }
  public long UserId { get; set; }
}
