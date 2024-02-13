import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod.dart';

class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('Easy Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ref.watch(riverpodEasyLevel).toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
                onPressed: (){
                  ref.read(riverpodEasyLevel.notifier).state++;
                },
                icon: const Icon(Icons.add),
                label: const Text('Add')
            ),
            ElevatedButton.icon(
                onPressed: (){
                  ref.read(riverpodEasyLevel.notifier).state--;
                },
                icon: const Icon(Icons.remove),
                label: const Text('Remove')
            ),

          ],
        ),
      ),
    );
  }
}
