import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sowlab/constants/utils.dart';
import 'package:sowlab/provider/user_register_provider.dart';

import '../../model/registeration/user_register.dart';

class FarmInfo extends ConsumerStatefulWidget {

  FarmInfo({super.key});

  @override
  ConsumerState<FarmInfo> createState() => _FarmInfoState();
}

class _FarmInfoState extends ConsumerState<FarmInfo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _informalname;
  String? _businessname;
  String? _streetaddress;
  String? _city;
  String? _zipcode;
  String? _selectedState;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _businessnameController = TextEditingController();
  TextEditingController _streetaddressController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _zipcodeController = TextEditingController();

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
                      controller: _businessnameController,
                      label: 'Business name',
                      hint: 'Enter business name',
                      icon: Icons.business,
                      validator: (value) => value == null || value.isEmpty ? 'Please enter your business name' : null,
                      onSaved: (value) => _businessname = value,
                    ),
                    _buildTextField(
                      controller: _nameController,
                      label: 'Informal name',
                      hint: 'Enter informal name',
                      icon: Icons.emoji_emotions_outlined,
                      validator: (value) => value == null || value.isEmpty ? 'Please enter your informal name' : null,
                      onSaved: (value) => _informalname = value,
                    ),
                    _buildTextField(
                      controller: _streetaddressController,
                      label: 'Street Address',
                      hint: 'Enter street address',
                      icon: Icons.home_outlined,
                      validator: (value) => value == null || value.isEmpty ? 'Please enter your street address' : null,
                      onSaved: (value) => _streetaddress = value,
                    ),
                    _buildTextField(
                      controller: _cityController,
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
                              controller: _zipcodeController,
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
                                final userModel = UserModel(
                                  businessName: _businessnameController.text,
                                  informalName: _nameController.text,
                                  address: _streetaddressController.text,
                                  city: _cityController.text,
                                  zipCode: _zipcodeController.hashCode,
                                  state: _selectedState.toString(),
                                );
                                try{
                                  ref.read(userRegistrationProvider(userModel));
                                  context.go('/verification');
                                } catch (e){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Registration failed: $e')),
                                  );
                                }

                              }
                            },
                            style: const ButtonStyle(
                              minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                              maximumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                              foregroundColor: WidgetStatePropertyAll(Colors.white),
                              backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
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
    controller,
    FormFieldValidator<String>? validator,
    FormFieldSetter<String>? onSaved,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
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
