using Grpc.Core;

namespace Trackii.Services;

public class ProtoAuthService : AuthService.AuthServiceBase
{
  private readonly ILogger<ProtoAuthService> _logger;
  public ProtoAuthService(ILogger<ProtoAuthService> logger)
  {
    _logger = logger;
  }

  public override Task<LoginResponse> Login(LoginRequest request, ServerCallContext context)
  {
    return Task.FromResult(new LoginResponse
    {
      User = new User { AccountId = request.AccountId, DisplayName = request.DisplayName, Email = request.Email, Id = 0 }
    });
  }
}
