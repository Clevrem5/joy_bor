mixin UseCase<Type,Param>{
  Future<Type> call(Param params);
}

class NoParam{}