import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_state/main.dart';

class ProviderStateLess extends ConsumerWidget {
  const ProviderStateLess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valueRef = ref.read(nameProvider);
    // final titleRef = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(valueRef),
      ),
      body: Center(
        child: Text(valueRef),
      ),
    );
  }
}
// 2nd method to use riverPod

class ProviderStateLessMethod2 extends StatelessWidget {
  const ProviderStateLessMethod2({super.key});
  @override
  // we need to wrap with Consumer widget and with builder
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final titleRef = ref.read(nameProvider);
        return Scaffold(
          appBar: AppBar(
            title: Text(titleRef),
          ),
          body: Center(
            child: Text(titleRef),
          ),
        );
      },
    );
  }
}
