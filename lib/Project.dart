import 'package:flutter/material.dart';

class MLprojectv2 extends StatefulWidget {
  const MLprojectv2({super.key});

  @override
  State<MLprojectv2> createState() => _MLprojectv2State();
}

class _MLprojectv2State extends State<MLprojectv2> {
  String? gender;
  String? seniorCitizen;
  String? partner;
  String? dependents;
  TextEditingController tenure = TextEditingController();
  String? phoneService;
  String? multipleLines;
  String? internetService;
  String? onlineSecurity;
  String? onlineBackup;
  String? deviceProtection;
  String? techSupport;
  String? streamingTV;
  String? streamingMovies;
  String? contract;
  String? paperlessBilling;
  String? paymentMethod;
  TextEditingController monthlyCharges = TextEditingController();
  TextEditingController totalCharges = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Collection",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Gender',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Female'),
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Senior Citizen',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: seniorCitizen,
                    onChanged: (val) {
                      setState(() {
                        seniorCitizen = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: seniorCitizen,
                    onChanged: (val) {
                      setState(() {
                        seniorCitizen = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Partner',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: partner,
                    onChanged: (val) {
                      setState(() {
                        partner = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: partner,
                    onChanged: (val) {
                      setState(() {
                        partner = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Dependents',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: dependents,
                    onChanged: (val) {
                      setState(() {
                        dependents = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: dependents,
                    onChanged: (val) {
                      setState(() {
                        dependents = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Tenure",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: tenure,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        contentPadding: EdgeInsets.only(
                            left: 8, bottom: 0, top: 0, right: 15),
                        hintText:
                            "Number of months you've stayed with the company",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Phone Service',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: phoneService,
                    onChanged: (val) {
                      setState(() {
                        phoneService = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: phoneService,
                    onChanged: (val) {
                      setState(() {
                        phoneService = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Multiple Lines',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: multipleLines,
                    onChanged: (val) {
                      setState(() {
                        multipleLines = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: multipleLines,
                    onChanged: (val) {
                      setState(() {
                        multipleLines = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No phone service'),
                    value: 'No phone service',
                    groupValue: multipleLines,
                    onChanged: (val) {
                      setState(() {
                        multipleLines = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Internet Service',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('DSL'),
                    value: 'DSL',
                    groupValue: internetService,
                    onChanged: (val) {
                      setState(() {
                        internetService = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Fiber optic'),
                    value: 'Fiber optic',
                    groupValue: internetService,
                    onChanged: (val) {
                      setState(() {
                        internetService = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: internetService,
                    onChanged: (val) {
                      setState(() {
                        internetService = val;
                        if (internetService == 'No') {
                          onlineSecurity = 'No internet service';
                          onlineBackup = 'No internet service';
                          deviceProtection = 'No internet service';
                          techSupport = 'No internet service';
                          streamingTV = 'No internet service';
                          streamingMovies = 'No internet service';
                        }
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Online Security',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: onlineSecurity,
                    onChanged: (val) {
                      setState(() {
                        onlineSecurity = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: onlineSecurity,
                    onChanged: (val) {
                      setState(() {
                        onlineSecurity = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No internet service'),
                    value: 'No internet service',
                    groupValue: onlineSecurity,
                    onChanged: (val) {
                      setState(() {
                        onlineSecurity = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Online Backup',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: onlineBackup,
                    onChanged: (val) {
                      setState(() {
                        onlineBackup = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: onlineBackup,
                    onChanged: (val) {
                      setState(() {
                        onlineBackup = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No internet service'),
                    value: 'No internet service',
                    groupValue: onlineBackup,
                    onChanged: (val) {
                      setState(() {
                        onlineBackup = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Device Protection',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: deviceProtection,
                    onChanged: (val) {
                      setState(() {
                        deviceProtection = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: deviceProtection,
                    onChanged: (val) {
                      setState(() {
                        deviceProtection = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No internet service'),
                    value: 'No internet service',
                    groupValue: deviceProtection,
                    onChanged: (val) {
                      setState(() {
                        deviceProtection = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Tech Support',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: techSupport,
                    onChanged: (val) {
                      setState(() {
                        techSupport = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: techSupport,
                    onChanged: (val) {
                      setState(() {
                        techSupport = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No internet service'),
                    value: 'No internet service',
                    groupValue: techSupport,
                    onChanged: (val) {
                      setState(() {
                        techSupport = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Streaming TV',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: streamingTV,
                    onChanged: (val) {
                      setState(() {
                        streamingTV = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: streamingTV,
                    onChanged: (val) {
                      setState(() {
                        streamingTV = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No internet service'),
                    value: 'No internet service',
                    groupValue: streamingTV,
                    onChanged: (val) {
                      setState(() {
                        streamingTV = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Streaming Movies',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: streamingMovies,
                    onChanged: (val) {
                      setState(() {
                        streamingMovies = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: streamingMovies,
                    onChanged: (val) {
                      setState(() {
                        streamingMovies = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No internet service'),
                    value: 'No internet service',
                    groupValue: streamingMovies,
                    onChanged: (val) {
                      setState(() {
                        streamingMovies = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Contract',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Month-to-month'),
                    value: 'Month-to-month',
                    groupValue: contract,
                    onChanged: (val) {
                      setState(() {
                        contract = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('One year'),
                    value: 'One year',
                    groupValue: contract,
                    onChanged: (val) {
                      setState(() {
                        contract = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Two year'),
                    value: 'Two year',
                    groupValue: contract,
                    onChanged: (val) {
                      setState(() {
                        contract = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Paperless Billing',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Yes'),
                    value: 'Yes',
                    groupValue: paperlessBilling,
                    onChanged: (val) {
                      setState(() {
                        paperlessBilling = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('No'),
                    value: 'No',
                    groupValue: paperlessBilling,
                    onChanged: (val) {
                      setState(() {
                        paperlessBilling = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Electronic check'),
                    value: 'Electronic check',
                    groupValue: paymentMethod,
                    onChanged: (val) {
                      setState(() {
                        paymentMethod = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Mailed check'),
                    value: 'Mailed check',
                    groupValue: paymentMethod,
                    onChanged: (val) {
                      setState(() {
                        paymentMethod = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Bank transfer (automatic)'),
                    value: 'Bank transfer (automatic)',
                    groupValue: paymentMethod,
                    onChanged: (val) {
                      setState(() {
                        paymentMethod = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.orangeAccent,
                    title: const Text('Credit card (automatic)'),
                    value: 'Credit card (automatic)',
                    groupValue: paymentMethod,
                    onChanged: (val) {
                      setState(() {
                        paymentMethod = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Monthly Charges",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: monthlyCharges,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        contentPadding: EdgeInsets.only(
                            left: 8, bottom: 0, top: 0, right: 15),
                        hintText: "The amount charged to the customer monthly",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Total Charges",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: totalCharges,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        contentPadding: EdgeInsets.only(
                            left: 8, bottom: 0, top: 0, right: 15),
                        hintText: "The total amount charged to the customer",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: MaterialButton(
                    minWidth: 200,
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.orangeAccent,
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
