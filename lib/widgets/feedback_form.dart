import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();

  // Tambahkan ini lagi:
  String? _feedback;

  void _submitFeedback() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Sekarang _feedback bisa dipakai di sini
      print('Feedback submitted: $_feedback');
      // Misalnya mau reset form:
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'We value your feedback!',
          style: Theme.of(context).textTheme.titleLarge, // pakai titleLarge ya
        ),
        const SizedBox(height: 12),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Your feedback',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some feedback';
            }
            return null;
          },
          onSaved: (value) {
            _feedback = value;
          },
        ),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: _submitFeedback,
            child: const Text('Submit'),
          ),
        )
      ],
    );
  }
}
