// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:ml_project/api.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});
  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  String? gender;
  String? seniorCitizen;
  String? partner;
  String? dependents;
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
  final tenure = TextEditingController();
  final monthlyCharges = TextEditingController();
  final totalCharges = TextEditingController();

  String error = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
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
          const Text("Tenure",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
              contentPadding:
                  EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
              hintText: "Number of months at the company.",
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
                  if (phoneService == 'No') {
                    multipleLines = 'No phone service';
                  }
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
          const Text("Monthly Charges",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
              contentPadding:
                  EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
              hintText: "The amount charged to the customer monthly.",
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
          const SizedBox(
            height: 30,
          ),
          const Text("Total Charges",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          TextField(
              keyboardType: TextInputType.number,
              controller: totalCharges,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  contentPadding:
                      EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
                  hintText: "The total amount charged to the customer.",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ))),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (error.isNotEmpty)
                Text(
                  error,
                  style: const TextStyle(color: Colors.red),
                ),
              if (error.isNotEmpty)
                const SizedBox(
                  height: 10,
                ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    final List<String> checkResults = checkFields();
                    if (checkResults.isNotEmpty) {
                      setState(() {
                        error = "Please check missing fields.";
                      });
                    } else {
                      showDialog(
                        context: context,
                        builder: (final BuildContext context) => AlertDialog(
                            contentPadding: EdgeInsets.zero,
                            content: SizedBox(
                              width: 300.0,
                              height: 150.0,
                              child: Center(
                                child: FutureBuilder<int>(
                                    future: ApiService.predict({
                                      "gender": gender,
                                      "seniorCitizen":
                                          seniorCitizen == "Yes" ? 1 : 0,
                                      "partner": partner,
                                      "dependents": dependents,
                                      "tenure": int.parse(tenure.text),
                                      "phoneService": phoneService,
                                      "multipleLines": multipleLines,
                                      "internetService": internetService,
                                      "onlineSecurity": onlineSecurity,
                                      "onlineBackup": onlineBackup,
                                      "deviceProtection": deviceProtection,
                                      "techSupport": techSupport,
                                      "streamingTV": streamingTV,
                                      "streamingMovies": streamingMovies,
                                      "contract": contract,
                                      "paperlessBilling": paperlessBilling,
                                      "paymentMethod": paymentMethod,
                                      "monthlyCharges":
                                          double.parse(monthlyCharges.text),
                                      "totalCharges":
                                          double.parse(totalCharges.text)
                                    })
                                      ..catchError((e) {
                                        print(e);
                                        return -1;
                                      }),
                                    builder: (context, snapshot) {
                                      // print(snapshot.data);
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return const CircularProgressIndicator();
                                      } else if (snapshot.hasData)
                                        return Text(
                                          "The customer will ${snapshot.data == 0 ? "not" : ''} churn.",
                                          style:
                                              const TextStyle(fontSize: 18.0),
                                          textAlign: TextAlign.center,
                                        );
                                      else
                                        return const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Icon(Icons
                                                .signal_wifi_connected_no_internet_4),
                                            Text(
                                              "An error happened\nCheck your internet connection.",
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        );
                                    }),
                              ),
                            )),
                      );
                    }
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  List<String> checkFields() {
    List<String> messages = <String>[];
    if (gender == null) messages.add("Gender field isn't selected!");
    if (seniorCitizen == null) {
      messages.add("Senior citizen field isn't selected!");
    }
    if (partner == null) messages.add("Partner field isn't selected!");
    if (dependents == null) messages.add("Dependents field isn't selected!");
    if (!RegExp(r"^\d+$").hasMatch(tenure.text)) {
      messages.add("Tenure field value isn't valid!");
    }
    if (phoneService == null) {
      messages.add("Phone service field isn't selected!");
    }
    if (multipleLines == null) {
      messages.add("Multiple lines field isn't selected!");
    }
    if (internetService == null) {
      messages.add("Internet Service field isn't selected!");
    }
    if (onlineSecurity == null) {
      messages.add("Online security field isn't selected!");
    }
    if (onlineBackup == null) {
      messages.add("Online backup field isn't selected!");
    }
    if (deviceProtection == null) {
      messages.add("Device protection field isn't selected!");
    }
    if (techSupport == null) messages.add("Tech support field isn't selected!");
    if (streamingTV == null) messages.add("Streaming TV field isn't selected!");
    if (streamingMovies == null) {
      messages.add("Streaming movies field isn't selected!");
    }
    if (contract == null) messages.add("Contract field isn't selected!");
    if (paperlessBilling == null) {
      messages.add("Paperless billing field isn't selected!");
    }
    if (paymentMethod == null) {
      messages.add("Payment method field isn't selected!");
    }
    if (!RegExp(r"^\d+.?\d*$").hasMatch(monthlyCharges.text)) {
      messages.add("Monthly charges field value isn't valid!");
    }
    if (!RegExp(r"^\d+.?\d*$").hasMatch(totalCharges.text)) {
      messages.add("Total charges field value isn't valid!");
    }
    return messages;
  }
}
