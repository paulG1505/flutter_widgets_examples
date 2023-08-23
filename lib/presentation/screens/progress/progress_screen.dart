import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress-screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text('Circular Progress Indicator'),
          SizedBox(
            height: 30,
          ),
          CircularProgressIndicator(strokeWidth: 2),
          SizedBox(
            height: 20,
          ),
          Text('Complete Progress Indicator'),
          SizedBox(
            height: 20,
          ),
          _CompleteProgressIndicator(),
        ],
      ),
    );
  }
}

class _CompleteProgressIndicator extends StatelessWidget {
  const _CompleteProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        // se usa stream para que se construya en tiempo de ejecución

        stream: Stream.periodic(const Duration(milliseconds: 200), (value) {
          return (value * 2) / 100;
        }),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 2,
                  value: progressValue,
                  backgroundColor: Colors.black26,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            ),
          );
        });
  }
}
