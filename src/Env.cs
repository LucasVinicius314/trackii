namespace Trackii;

static class Env
{
  public static String DatabaseUrl => Environment.GetEnvironmentVariable("DATABASE_URL") ?? "";
}