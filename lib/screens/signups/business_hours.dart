import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BusinessHours extends ConsumerStatefulWidget {
  const BusinessHours({super.key});

  @override
  ConsumerState<BusinessHours> createState() => _BusinessHoursState();
}

class _BusinessHoursState extends ConsumerState<BusinessHours> {
  String selectedDay = 'M';
  List<String> selectedTimeSlots = ['8:00am - 10:00am', '4:00pm - 7:00pm'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Farmereats'),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Business Hours',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Choose the hours your farm is open for pickups.',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),

              // Days of the week selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: ['M', 'T', 'W', 'Th', 'F', 'S', 'Su'].map((day) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDay = day;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: selectedDay == day ? Colors.orange : Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        day,
                        style: TextStyle(
                          color: selectedDay == day ? Colors.white : Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),

              const SizedBox(height: 20.0),

              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  '8:00am - 10:00am',
                  '10:00am - 1:00pm',
                  '1:00pm - 4:00pm',
                  '4:00pm - 7:00pm',
                  '7:00pm - 10:00pm',
                ].map((timeSlot) {
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
                      width: 180.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 25.0),
                      decoration: BoxDecoration(
                        color: selectedTimeSlots.contains(timeSlot)
                            ? Colors.green
                            : Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        timeSlot,
                        style: TextStyle(
                          color: selectedTimeSlots.contains(timeSlot)
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        maximumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Continue'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
