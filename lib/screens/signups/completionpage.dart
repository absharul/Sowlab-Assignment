import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CompletionPage extends ConsumerStatefulWidget {
  const CompletionPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CompletionPage> createState() => _CompletionPageState();
}

class _CompletionPageState extends ConsumerState<CompletionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Green checkmark icon
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            const SizedBox(height: 30.0),

            // 'You’re all done!' heading
            const Text(
              "You’re all done!",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),

            // Instruction text
            const Text(
              "Hang tight! We are currently reviewing your account and "
                  "will follow up with you in 2-3 business days. In the "
                  "meantime, you can setup your inventory.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),

            // 'Got it!' button
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                 context.go('/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  'Got it!',
                  style: TextStyle(fontSize: 18.0,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: CompletionPage(),
      ),
    ),
  );
}
