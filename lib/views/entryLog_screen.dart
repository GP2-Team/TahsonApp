import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class EntryLogsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entry Logs'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildFilteringSection(),
            SizedBox(height: 16),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: _buildEntryTable(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilteringSection() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildTextField('Search', Icons.search),
            ),
            SizedBox(width: 16),
            Expanded(
              child: _buildDatePickerField('Select Date'),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildTimePickerField('Select Time'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: _buildTextField(
                  'Number of Attempts', Icons.confirmation_number),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTextField(String labelText, IconData icon) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: Icon(icon),
      ),
    );
  }

  Widget _buildDatePickerField(String labelText) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: Get.context!,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );
        // Handle the selected date here
      },
    );
  }

  Widget _buildTimePickerField(String labelText) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: Icon(Icons.access_time),
      ),
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          context: Get.context!,
          initialTime: TimeOfDay.now(),
        );
        // Handle the selected time here
      },
    );
  }

  Widget _buildEntryTable() {
    List<Map<String, String>> employees = [
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},   {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},{'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
      {'id': '98376', 'date': '4/4/2024', 'time': '03:40:45', 'attempts': '5'},
      {'id': '34682', 'date': '1/5/2024', 'time': '12:18:25', 'attempts': '3'},
      {'id': '11392', 'date': '9/5/2024', 'time': '06:20:15', 'attempts': '2'},
      {'id': '47922', 'date': '2/3/2024', 'time': '08:10:34', 'attempts': '1'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 400, // Adjust the width as needed
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(color: Colors.grey),
            columnWidths: const {
              0: FixedColumnWidth(10), // Further reduced width for Employee ID
              1: FixedColumnWidth(30), // Further reduced width for Entry Date
              2: FixedColumnWidth(40), // Further reduced width for Entry Time
              3: FixedColumnWidth(
                  50), // Further reduced width for Number of Attempts
            },
            children: [
              _buildTableHeader(),
              ...employees.map((employee) => _buildTableRow(employee)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableHeader() {
    return TableRow(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),
      children: [
        _buildTableCell('Employee ID', isHeader: true),
        _buildTableCell('Entry Date', isHeader: true),
        _buildTableCell('Entry Time', isHeader: true),
        _buildTableCell('Number of Attempts', isHeader: true),
      ],
    );
  }

  TableRow _buildTableRow(Map<String, String> employee) {
    return TableRow(
      children: [
        _buildTableCell(employee['id']!),
        _buildTableCell(employee['date']!),
        _buildTableCell(employee['time']!),
        _buildTableCell(employee['attempts']!),
      ],
    );
  }

  Widget _buildTableCell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize:
              isHeader ? 10 : 10, // Adjust font size for header and non-header
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          color: isHeader ? Colors.black : Colors.black54,
        ),
      ),
    );
  }
}
