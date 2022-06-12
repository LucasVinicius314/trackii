using FirebaseAdmin.Auth;
using Grpc.Core;

namespace Trackii.Services;

public class ProtoAuthService : AuthService.AuthServiceBase
{
  private readonly ILogger<ProtoAuthService> _logger;
  public ProtoAuthService(ILogger<ProtoAuthService> logger)
  {
    _logger = logger;
  }

  public override async Task<LoginResponse> Login(LoginRequest request, ServerCallContext context)
  {
    var token = request.AccessToken;

    var instance = FirebaseAuth.DefaultInstance;

    var res = await instance.VerifyIdTokenAsync(token);

    var userId = res.Uid;

    return new LoginResponse
    {
      User = new User { AccountId = request.AccountId, DisplayName = request.DisplayName, Email = request.Email, Id = 0 }
    };
  }
}
