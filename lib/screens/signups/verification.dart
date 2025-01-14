import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sowlab/provider/user_register_provider.dart';
import '../../model/registeration/user_register.dart';

class Verification extends ConsumerStatefulWidget {
  const Verification({super.key});

  @override
  ConsumerState<Verification> createState() => _VerificationState();
}

class _VerificationState extends ConsumerState<Verification> {

  String? _imagePath;

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
                    child: Text('Farmereats')),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Verification',
                    style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding:  const EdgeInsets.all(8.0),
                  child: Text(
                    'Attach a proof of Department of agriculture',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Attach a proof of registration'),
                      const Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () async {
                          final ImagePicker picker = ImagePicker();
                          final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                          if (image != null) {
                            setState(() {
                              _imagePath = image.path;
                            });
                          }
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent
                          ),
                          child: const Icon(Icons.camera_enhance_outlined,color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                if (_imagePath != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Image.file(
                      File(_imagePath!),
                      height: 200, // Adjust height as needed
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.5),
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
                        onPressed: () async {
                            if(_imagePath != null){
                              UserModel userModel  = UserModel(
                                registrationProof: _imagePath,
                              );
                             final result = await ref.read(userRegistrationProvider(userModel));
                             context.go('/business');
                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result.toString())));
                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Please select an image before continuing.')),
                              );
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
    );
  }

}
