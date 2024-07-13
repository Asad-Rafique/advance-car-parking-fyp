import 'package:flutter/material.dart';

class CustomPopupMenu extends StatelessWidget {
  final Function(String) onItemSelected;

  const CustomPopupMenu({required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert, color: Colors.white),
      onSelected: onItemSelected,
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'add',
            child: Text('Add'),
          ),
          PopupMenuItem<String>(
            value: 'delete',
            child: Text('Delete'),
          ),
          PopupMenuItem<String>(
            value: 'update',
            child: Text('Update'),
          ),
        ];
      },
    );
  }
}

class SubscriptionAdmin extends StatelessWidget {
  void handleMenuSelection(String value) {
    // Handle the selected option
    if (value == 'add') {
      // Perform action for 'Add'
      print('Add selected');
    } else if (value == 'delete') {
      // Perform action for 'Delete'
      print('Delete selected');
    } else if (value == 'update') {
      // Perform action for 'Update'
      print('Update selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Set app bar to null to remove it
      body: Container(
        // Your body content here
      ),
      floatingActionButton: CustomPopupMenu(
        onItemSelected: handleMenuSelection,
      ),
    );
  }
}
