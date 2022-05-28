using Grpc.Core;

namespace Trackii.Services;

public class ProtoSkillService : SkillService.SkillServiceBase
{
  private readonly ILogger<ProtoSkillService> _logger;
  public ProtoSkillService(ILogger<ProtoSkillService> logger)
  {
    _logger = logger;
  }

  public override Task<CreateSkillResponse> CreateSkill(CreateSkillRequest request, ServerCallContext context)
  {
    return Task.FromResult(new CreateSkillResponse
    {
      Skill = new Skill
      {
        Name = "Test",
        Description = "Description",
        ElapsedTime = 0,
        SkillGroupId = 0,
      },
    });
  }
}
