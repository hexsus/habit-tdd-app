abstract class Failure {
  Failure([List properties = const<dynamic>[]]);
}

// General failures

class ServerFailure implements Failure {}
class CachedFailure implements Failure {}