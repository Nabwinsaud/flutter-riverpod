import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_state/main.dart';

// ConsumerStatefulWidget
// ConsumerState
class ProviderStateFulWidget extends ConsumerStatefulWidget {
  const ProviderStateFulWidget({super.key});

  @override
  ConsumerState<ProviderStateFulWidget> createState() =>
      _ProviderStateFulWidgetState();
}

class _ProviderStateFulWidgetState
    extends ConsumerState<ProviderStateFulWidget> {
  // watch create a listener that continiously watch and that not the good approach
  // @override
  // void initState() {
  //   // * implement initState
  //   super.initState();
  //   ref.read(nameProvider);
  // }

  // @override
  // void dispose() {
  //   // * implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // we easily get access to ref
    final titleRef = ref.read(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(titleRef),
      ),
    );
  }
}
