using Grpc.Core;

namespace Trackii.Services;

public class ProtoInfoService : InfoService.InfoServiceBase
{
  private readonly ILogger<ProtoInfoService> _logger;
  public ProtoInfoService(ILogger<ProtoInfoService> logger)
  {
    _logger = logger;
  }

  public override Task<VersionResponse> Version(VersionRequest request, ServerCallContext context)
  {
    return Task.FromResult(new VersionResponse
    {
      Current = "0.0.0",
      IsValid = true,
      Message = "Valid version",
    });
  }
}
