
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_premiere/riverpod_model.dart';

final riverpodEasyLevel = StateProvider<int>((ref){
  return 0;
});


final riverpodHardLevel = ChangeNotifierProvider<RiverpodModel>(
        (ref) => RiverpodModel(counter :0));