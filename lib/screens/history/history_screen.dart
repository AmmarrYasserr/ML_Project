import 'package:flutter/material.dart';
import 'package:ml_project/constants.dart';
import 'package:ml_project/history_box.dart';
import 'package:ml_project/models/history_item.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<HistoryItem> _history = [];

  @override
  void initState() {
    super.initState();

    HistoryManager.getHistory().then((history) {
      setState(() {
        _history.clear();
        _history.addAll(history);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_history.isEmpty) {
      return const Center(
        child: Text("No history yet"),
      );
    }
    return ListView.builder(
      itemCount: _history.length,
      itemBuilder: (context, index) {
        final item = _history[index];
        return InkWell(
          onTap: () {
            //bottom sheet with details
            showModalBottomSheet(
              context: context,
              constraints: const BoxConstraints(
                minWidth: double.infinity,
              ),
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prediction Details",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Prediction: ${item.prediction == 0 ? "Customer will not churn" : "Customer will churn"}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "At: ${Constants.dateFormat.format(item.timestamp)}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Request Details",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Gender: ${item.request.gender}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Senior Citizen: ${item.request.seniorCitizen}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Partner: ${item.request.partner}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Dependents: ${item.request.dependents}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Tenure: ${item.request.tenure}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Phone Service: ${item.request.phoneService}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Multiple Lines: ${item.request.multipleLines}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Internet Service: ${item.request.internetService}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Online Security: ${item.request.onlineSecurity}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Online Backup: ${item.request.onlineBackup}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Device Protection: ${item.request.deviceProtection}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Tech Support: ${item.request.techSupport}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Streaming TV: ${item.request.streamingTV}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Streaming Movies: ${item.request.streamingMovies}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Contract: ${item.request.contract}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Paperless Billing: ${item.request.paperlessBilling}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Payment Method: ${item.request.paymentMethod}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Monthly Charges: ${item.request.monthlyCharges}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Total Charges: ${item.request.totalCharges}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: ListTile(
            isThreeLine: true,
            title: Text(
                "Prediction: ${item.prediction == 0 ? "Customer will not churn" : "Customer will churn"}"),
            subtitle: Text(
                "At: ${Constants.dateFormat.format(item.timestamp)}\nPress for more details"),
            trailing: IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {
                HistoryManager.deleteHistory(item.id).then((_) {
                  setState(() {
                    _history.removeAt(index);
                  });
                });
              },
            ),
          ),
        );
      },
    );
  }
}
