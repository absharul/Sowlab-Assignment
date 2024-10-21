import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> _images = [
    "assets/ob9.jpg",
    "assets/ob7.jpg",
    "assets/ob4.jpg",
  ];

  final List<String> _dsText = [
    "Sell your fresh product directly to consumers, cutting out the middleman and reducing the emission of the global supply chain.",
    "Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.",
    "We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time.",
  ];

  final List<String> _headText = ["Quality", "Convenient", "Local"];

  Color _getButtonColor() {
    switch (_currentIndex) {
      case 0:
        return Colors.green;
      case 1:
        return Colors.redAccent;
      case 2:
        return Colors.orange;
      default:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image with PageView
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Positioned.fill(
                child: Image(
                  image: AssetImage(_images[index]),
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(child: Text('Image not found'));
                  },
                ),
              );
            },
          ),
          // Bottom container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 10.0, right: 10.0),
                    child: Text(
                      _headText[_currentIndex],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _dsText[
                          _currentIndex],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_images.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        width: _currentIndex == index ? 15.0 : 10.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10.0),
                          color: _currentIndex == index
                              ? Colors.black
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/main');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _getButtonColor(),
                      minimumSize: const Size(250, 50),
                      maximumSize: const Size(250, 50),
                    ),
                    child: const Text(
                      'Join the movement!',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextButton(
                      onPressed: () {
                        context.go('/login');
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
