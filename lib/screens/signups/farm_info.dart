import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sowlab/constants/utils.dart';

class FarmInfo extends ConsumerStatefulWidget {
  const FarmInfo({super.key});

  @override
  ConsumerState<FarmInfo> createState() => _FarmInfoState();
}

class _FarmInfoState extends ConsumerState<FarmInfo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _informalname;
  String? _businessname;
  String? _streetaddress;
  String? _city;
  String? _selectedState;
  String? _zipcode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Farmereats')),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Farm Info',
                    style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10.0),
                _buildTextField(
                  label: 'Business name',
                  hint: 'Enter business name',
                  icon: Icons.business,
                  validator: (value) => value == null || value.isEmpty ? 'Please enter your business name' : null,
                  onSaved: (value) => _businessname = value,
                ),
                _buildTextField(
                  label: 'Informal name',
                  hint: 'Enter informal name',
                  icon: Icons.emoji_emotions_outlined,
                  validator: (value) => value == null || value.isEmpty ? 'Please enter your informal name' : null,
                  onSaved: (value) => _informalname = value,
                ),
                _buildTextField(
                  label: 'Street Address',
                  hint: 'Enter street address',
                  icon: Icons.home_outlined,
                  validator: (value) => value == null || value.isEmpty ? 'Please enter your street address' : null,
                  onSaved: (value) => _streetaddress = value,
                ),
                _buildTextField(
                  label: 'City',
                  hint: 'Enter city name',
                  icon: Icons.location_on_outlined,
                  validator: (value) => value == null || value.isEmpty ? 'Please enter city name' : null,
                  onSaved: (value) => _city = value,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'State',
                            filled: true,
                            fillColor: const Color(0x6ecbc5c5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          value: _selectedState,
                          items: indianStates.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,style: const TextStyle(fontSize: 12),),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedState = newValue;
                            });
                          },
                          validator: (value) => value == null || value == 'Select State' ? 'Please select a state' : null,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildTextField(
                          label: 'Zip Code',
                          hint: 'zip code',
                          keyboardType: TextInputType.number,
                          validator: (value) => value == null || value.isEmpty ? 'Please enter zip code' : null,
                          onSaved: (value) => _zipcode = value,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(Icons.arrow_back,size: 30,),
                    ),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus(); // Dismiss keyboard
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            // Handle collected data
                            print('Business Name: $_businessname');
                            print('Informal Name: $_informalname');
                            print('Street Address: $_streetaddress');
                            print('City: $_city');
                            print('State: $_selectedState');
                            print('Zip Code: $_zipcode');
                          }
                        },
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
                          maximumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
                          foregroundColor: MaterialStatePropertyAll(Colors.white),
                          backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
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
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    IconData? icon,
    FormFieldValidator<String>? validator,
    FormFieldSetter<String>? onSaved,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: const Color(0x6ecbc5c5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
