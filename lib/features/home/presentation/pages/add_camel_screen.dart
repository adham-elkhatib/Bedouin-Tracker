import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../Data/Model/Camel/camel.model.dart';
import '../../../../Data/Model/Camel/gender.dart';
import '../../../../core/Services/Auth/auth.service.dart';
import '../../../../core/Services/Auth/src/Providers/auth_provider.dart';
import '../../../../core/widgets/primary_button.dart';

class AddCamelScreen extends StatefulWidget {
  const AddCamelScreen({super.key});

  @override
  _AddCamelScreenState createState() => _AddCamelScreenState();
}

class _AddCamelScreenState extends State<AddCamelScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _barcodeController = TextEditingController();
  Gender gender = Gender.male;

  Future<void> scanBarcode() async {
    var result = await BarcodeScanner.scan();
    setState(() {
      _barcodeController.text = result.rawContent;
    });
  }

  void _saveCamel() {
    if (_formKey.currentState!.validate()) {
      String? userId = AuthService(
        authProvider: FirebaseAuthProvider(
          firebaseAuth: FirebaseAuth.instance,
        ),
      ).getCurrentUserId();
      final newCamel = Camel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: _nameController.text,
        age: int.tryParse(_ageController.text)!,
        gender: gender,
        trackerBarCode: _barcodeController.text,
        userId: userId!,
      );
      Navigator.pop(context, newCamel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Camel',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: "name",
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                  hintText: "age",
                  labelText: "Age",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _barcodeController,
                decoration: const InputDecoration(
                  hintText: "Tracker barcode",
                  labelText: "Tracker barcode",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                readOnly: true,
                onTap: scanBarcode,
              ),
              const SizedBox(
                height: 16,
              ),
              DropdownButtonFormField<Gender>(
                value: gender,
                decoration: const InputDecoration(
                  hintText: "camel gender",
                  labelText: "Camel Gender",
                  border: OutlineInputBorder(),
                ),
                items: Gender.values.map((gender) {
                  return DropdownMenuItem(
                    value: gender,
                    child: Text(gender.toString().split('.').last),
                  );
                }).toList(),
                onChanged: (value) => setState(() => gender = value!),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  title: "Add Camel",
                  onPressed: _saveCamel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
