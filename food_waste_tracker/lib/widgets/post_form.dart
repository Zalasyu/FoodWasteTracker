import 'package:flutter/material.dart';
import 'package:food_waste_tracker/models/post.dart';

class PostEntryForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostEntryFormState();
}

class _PostEntryFormState extends State<PostEntryForm> {
  final _formKey = GlobalKey<FormState>();
  final _post = Post(
    quantity: 0,
    photoUrl: '',
    latitude: 0.0,
    longitude: 0.0,
    date: DateTime.now(),
  );

  // Text Fields
  final _quantityController = TextEditingController();
  final _photoUrlController = TextEditingController();
  final _dateController = TextEditingController();

  // Focus Nodes
  final _photoUrlFocusNode = FocusNode();
  final _quantityFocusNode = FocusNode();
  DateTime _selectedDate = DateTime.now();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.pop(context, _post);
    }
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  void _presentTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((pickedTime) {
      if (pickedTime == null) {
        return;
      }
      setState(() {
        _selectedDate = DateTime(
          _selectedDate.year,
          _selectedDate.month,
          _selectedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );
      });
    });
  }

  @override
  void dispose() {
    _quantityController.dispose();
    _photoUrlController.dispose();
    _dateController.dispose();
    _photoUrlFocusNode.dispose();
    _quantityFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('New Post'),
    ));
  }
}
