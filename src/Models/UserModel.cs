using System.ComponentModel.DataAnnotations.Schema;

namespace Trackii.Models;

[Table("User")]
public class UserModel
{
  public long Id { get; set; }
  public string AccountId { get; set; } = "";
  public string DisplayName { get; set; } = "";
  public string Email { get; set; } = "";
}
