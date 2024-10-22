import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../model/registeration/user_register.dart';
import '../../provider/user_register_provider.dart';

class BusinessHoursSelection extends ConsumerStatefulWidget {
  const BusinessHoursSelection({super.key});

  @override
  ConsumerState<BusinessHoursSelection> createState() => _BusinessHoursSelectionState();
}

class _BusinessHoursSelectionState extends ConsumerState<BusinessHoursSelection> {
  String selectedDay = 'M';
  List<String> selectedTimeSlots = [];

  List<String> getTimeSlots() {
    return [
      '8:00am - 10:00am',
      '10:00am - 1:00pm',
      '1:00pm - 4:00pm',
      '4:00pm - 7:00pm',
      '7:00pm - 10:00pm',
    ];
  }

  Future<void> updateBusinessHours() async {
    final businessHours = BusinessHours(
      openTime: selectedTimeSlots.first,
      closeTime: selectedTimeSlots.last,
    );

    UserModel userModel = UserModel(businessHours: businessHours);
    await ref.read(userRegistrationProvider(userModel).future);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Business Hours')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Choose the hours your farm is open for pickups.', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 20),

              // Days of the week selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: ['M', 'T', 'W', 'Th', 'F', 'S', 'Su'].map((day) {
                  return GestureDetector(
                    onTap: () => setState(() => selectedDay = day),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: selectedDay == day ? Colors.orange : Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(day, style: TextStyle(color: selectedDay == day ? Colors.white : Colors.black)),
                    ),
                  );
                }).toList(),
              ),

              const SizedBox(height: 20),

              Wrap(
                spacing: 10,
                runSpacing: 10.0,
                children: getTimeSlots().map((timeSlot) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedTimeSlots.contains(timeSlot)) {
                          selectedTimeSlots.remove(timeSlot);
                        } else {
                          selectedTimeSlots.add(timeSlot);
                        }
                      });
                    },
                    child: Container(
                      width: 180,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      decoration: BoxDecoration(
                        color: selectedTimeSlots.contains(timeSlot) ? Colors.green : Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(timeSlot, style: TextStyle(color: selectedTimeSlots.contains(timeSlot) ? Colors.white : Colors.black)),
                    ),
                  );
                }).toList(),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => context.pop(),
                    icon: const Icon(Icons.arrow_back, size: 30),
                  ),
                  Expanded(child: SizedBox()),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (selectedTimeSlots.isNotEmpty) {
                          try {
                            await updateBusinessHours();
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Business hours updated successfully.')));
                            context.go('/completionpage');
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: ${e.toString()}')));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please select at least one time slot.')));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Continue'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
