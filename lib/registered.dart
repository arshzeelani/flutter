import 'package:csc_picker_plus/csc_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisteredPage extends StatefulWidget {
  const RegisteredPage({super.key, required this.title});

  final String title;

  @override
  State<RegisteredPage> createState() => _RegisteredPageState();
}

class _RegisteredPageState extends State<RegisteredPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  String country = "";
  String state = "";
  String city = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hospital Registrations Form")),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Go to previous Page',
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/placeholder');
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PlaceholderScreen()),
              // );
            },
            icon: const Icon(Icons.arrow_circle_right),
            tooltip: 'Go to Next Page',
            color: Colors.red,
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FormBuilder(
          key: _formKey,

          child: SingleChildScrollView(
            child: Column(
              children: [
                CSCPickerPlus(
                  countryStateLanguage: CountryStateLanguage.englishOrNative,
                  onCountryChanged: (value) {
                    setState(() {
                      country = value;
                    });
                  },
                  onStateChanged: (value) {
                    setState(() {
                      state = value ?? "this is state ";
                    });
                  },
                  onCityChanged: (value) {
                    setState(() {
                      state = value ?? "this is dis  change ";
                    });
                  },
                ),
                SizedBox(height: 20),
                FormBuilderDropdown<String>(
                  name: 'Organizations',
                  decoration: InputDecoration(
                    labelText: 'Organizations Type * ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  items: ['HOSPITAL', 'CLINIC']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                ),
                SizedBox(height: 20),
                // textfields
                FormBuilderTextField(
                  name: 'Organizations Name',
                  decoration: InputDecoration(
                    labelText: "Organizations Legal Name *",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: "Organizations Legal Name",
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'Registrations Number',
                  decoration: InputDecoration(
                    labelText: "Registrations Number   ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: "Registrations Number (Govt) is required",
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderDateTimePicker(
                  name: 'Establishment',
                  decoration: InputDecoration(
                    labelText: "Establishment Year",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  inputType: InputType.date,
                  // validator: FormBuilderValidators.required(),
                ),
                SizedBox(height: 20),
                FormBuilderDropdown<String>(
                  name: 'Ownership',
                  decoration: InputDecoration(
                    labelText: 'Ownership Type * ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  items: ['private', 'Goverment', 'Trust', 'NGO']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                ),

                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'Parent Organizations',
                  decoration: InputDecoration(
                    labelText:
                        "Parent Organizations (Optional if chain of hospitals)  ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: "Parent Organizations",
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderDropdown<String>(
                  name: 'website',
                  decoration: InputDecoration(
                    labelText: 'Category * ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  items: ['Multipseciality', 'ENT', 'Dental', 'cardiology']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                ),
                SizedBox(height: 20),
                Text(
                  "Contact Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                FormBuilderTextField(
                  name: 'email',
                  decoration: InputDecoration(
                    labelText: "email * ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: "Email is Requared",
                    ),
                    FormBuilderValidators.email(errorText: "enter valid email"),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'Mobile Number',
                  decoration: InputDecoration(
                    labelText: "Mobile Number * ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: "Mobile Number is Requared",
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'Landline Number',
                  decoration: InputDecoration(
                    labelText: "Landline Number * ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: "Landline Number is Requared",
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'Billing Email',
                  decoration: InputDecoration(
                    labelText: "Billing Emai * ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: "Billing Emai is Requared",
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'Emergency Contact Number',
                  decoration: InputDecoration(
                    labelText: "Emergency Contact Number * ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    // FormBuilderValidators.required(
                    //   errorText: "Emergency Contact Number is Requared",
                    // ),
                  ]),
                ),
                SizedBox(height: 20),
                Text(
                  "Location",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'Address',
                  decoration: InputDecoration(
                    labelText: 'Address*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Address is requared',
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: "Country",
                  decoration: InputDecoration(
                    labelText: 'Country*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Country is Requared',
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: "State",
                  decoration: InputDecoration(
                    labelText: 'State*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'State is Requared',
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: "City",
                  decoration: InputDecoration(
                    labelText: 'City*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'City is Requared',
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: "Pincode",
                  decoration: InputDecoration(
                    labelText: 'Pincode*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Pincode is Requared',
                    ),
                  ]),
                ),

                SizedBox(height: 20),
                // FormBuilderDropdown<String>(
                //   name: 'gender',
                //   decoration: InputDecoration(labelText: 'gender'),
                //   items: ['male', 'female', 'other']
                //       .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                //       .toList(),
                // ),
                SizedBox(height: 20),

                // FormBuilderDateTimePicker(
                //   name: 'DOB',
                //   decoration: InputDecoration(labelText: "Date of birth"),
                //   inputType: InputType.date,
                //   validator: FormBuilderValidators.required(),
                // ),
                // SizedBox(height: 20),
                // FormBuilderTextField(
                //   name: 'password',
                //   obscureText: true,
                //   decoration: InputDecoration(labelText: "password"),
                //   validator: FormBuilderValidators.compose([
                //     FormBuilderValidators.required(),
                //     FormBuilderValidators.minLength(
                //       6,
                //       errorText: 'Minimum 6 characters',
                //     ),
                //   ]),
                // ),
                FormBuilderCheckbox(
                  name: 'term',
                  title: const Text("I Agree To Term"),
                  validator: FormBuilderValidators.equal(
                    true,
                    errorText: 'please Accept term ',
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.saveAndValidate()) {
                      final formData = _formKey.currentState!.value;
                      print(formData);
                    } else {
                      print("Validation Failed");
                    }
                  },
                  child: const Text("submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
