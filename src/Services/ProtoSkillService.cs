using Grpc.Core;

namespace Trackii.Services;

public class ProtoSkillService : SkillService.SkillServiceBase
{
  private readonly ILogger<ProtoSkillService> _logger;
  public ProtoSkillService(ILogger<ProtoSkillService> logger)
  {
    _logger = logger;
  }

  public override Task<SkillReply> GetSkill(SkillRequest request, ServerCallContext context)
  {
    return Task.FromResult(new SkillReply
    {
      Message = "Hello " + request.Name
    });
  }
}
