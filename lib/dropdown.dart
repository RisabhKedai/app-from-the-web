import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

var _currencies = [
  '--Please Select Course--',
  "Engineering",
  "Pharmacy",
  "Hotel Management",
  "Animation",
  "Paramedical Courses",
  "Other Diploma Courses",
  "MBBS",
  "BDS",
  "Ayush",
  "Mass Communication",
  "Physiotherapy",
  "Nursing",
  "Management",
  "Biotech",
  "Agriculture",
  "Education",
  "Law",
  "Humanities",
  "B.Sc",
  "Other",
];

String _currentSelectedValue = _currencies[0];

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8.0),
              icon: Icon(Icons.book),
              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 8.0),
              hintText: 'Please select course',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35)))),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _currentSelectedValue,
              isDense: true,
              onChanged: (String newValue) {
                setState(() {
                  _currentSelectedValue = newValue;
                  state.didChange(newValue);
                });
              },
              items: _currencies.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
