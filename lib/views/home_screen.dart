import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tahson/customStyle/appcolors.dart';
import 'package:tahson/controller/home_controller.dart';
import 'package:tahson/customStyle/fonts.dart';
import 'package:tahson/customStyle/images.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Dashboard', style: robotoHugeWhite,),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColors.bondiBlue,
      ),
      body: Column(
        children: [
ListTile(
  title: Obx(() => Text(controller.isAdmin.value ? "Welcome, Admin" : "Welcome, Employee", style: robotoHugeBlack,)) ,
),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Obx(() {
                if (controller.isAdmin.value) {
                  return _buildAdminDashboard();
                } else {
                  return _buildEmployeeDashboard();
                }
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAdminDashboard() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _buildDashboardCard(
          icon: Icons.people,
          title: 'Employees',
          subtitle: '${controller.totalEmployees.value} Employees',
          color: AppColors.portGore,
        ),
        _buildDashboardCard(
          icon: Icons.check_circle,
          title: 'Activated RFID Cards',
          subtitle: '${controller.activatedRFIDCards.value} Cards',
          color: AppColors.deepSeaGreen,
        ),
        _buildDashboardCard(
          icon: Icons.cancel,
          title: 'Deactivated RFID Cards',
          subtitle: '${controller.deactivatedRFIDCards.value} Cards',
          color: AppColors.martinique,
        ),
          _buildDashboardCard(
          icon: Icons.cancel,
          title: 'Entry Tries (Today)',
          subtitle: '${controller.entryLogsToday.value} Tries',
          color: AppColors.atoll,
        ),
      ],
    );
  }

  Widget _buildEmployeeDashboard() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _buildEmployeeActionCard(
          title: 'Request New RFID Card',
          imageUrl: Images.rfid,
          onTap: () => controller.requestNewRFIDCard(),
          color: AppColors.deepSeaGreen,
        ),
        _buildEmployeeActionCard(
          title: 'Activate RFID Card',
          icon: Icons.check_circle,
          onTap: () => controller.activateRFIDCard(),
          color: AppColors.martinique,
        ),
        _buildEmployeeActionCard(
          title: 'Deactivate RFID Card',
          icon: Icons.cancel,
          onTap: () => controller.deactivateRFIDCard(),
          color: AppColors.martinique,
        ),
      ],
    );
  }

  Widget _buildDashboardCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36, color: Colors.white),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmployeeActionCard({
    required String title,
    IconData? icon, // Optional icon
    String? imageUrl, // Optional image URL
    required VoidCallback onTap,
    required Color color,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imageUrl != null)
                Image.asset(
                  imageUrl,
                  height: 36, // Adjust size as needed
                  color: Colors.white, // Optional: add color overlay
                )
              else if (icon != null)
                Icon(icon, size: 36, color: Colors.white),
              SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
