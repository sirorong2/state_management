import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

final _testProvider = Provider((ref) => 'Hello Code Generation');

@riverpod
String gState(GStateRef ref){
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref)async{
  await Future.delayed(Duration(seconds: 3));

  return 10;
}

@Riverpod(
  keepAlive: true,
)
Future<int> gStateFuture2(GStateFuture2Ref ref)async{
  await Future.delayed(Duration(seconds: 3));

  return 10;
}
