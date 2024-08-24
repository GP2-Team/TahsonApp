import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var isAdmin = false.obs;
  var totalEmployees = 0.obs;
  var activatedRFIDCards = 0.obs;
  var deactivatedRFIDCards = 0.obs;
  var entryLogsToday = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserRole();
    fetchDashboardData();
  }

  // Method to fetch user role from SharedPreferences
  void fetchUserRole() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? role = prefs.getString('user_role');
      if (role != null) {
        isAdmin.value = role == 'admin'; // Assuming 'admin' is the role for admin users
      }
    } catch (e) {
      print('Error fetching user role: $e');
    }
  }

  // Method to fetch dashboard data
  void fetchDashboardData() async {
    try {
      var firestore = FirebaseFirestore.instance;

      // Fetch data for total employees
      var employeesSnapshot = await firestore.collection('employees').get();
      totalEmployees.value = employeesSnapshot.docs.length;

      // Fetch data for activated RFID cards
      var activatedRFIDSnapshot = await firestore
          .collection('rfid_cards')
          .where('status', isEqualTo: 'activated')
          .get();
      activatedRFIDCards.value = activatedRFIDSnapshot.docs.length;

      // Fetch data for deactivated RFID cards
      var deactivatedRFIDSnapshot = await firestore
          .collection('rfid_cards')
          .where('status', isEqualTo: 'deactivated')
          .get();
      deactivatedRFIDCards.value = deactivatedRFIDSnapshot.docs.length;

      // Fetch entry logs for today
      var today = DateTime.now();
      var startOfDay = DateTime(today.year, today.month, today.day);
      var endOfDay = DateTime(today.year, today.month, today.day, 23, 59, 59, 999);

      var entryLogsTodaySnapshot = await firestore
        .collection('entryLogs')
        .where('timeStamp', isGreaterThanOrEqualTo: startOfDay)
        .where('timeStamp', isLessThanOrEqualTo: endOfDay)
        .get();
      
      entryLogsToday.value = entryLogsTodaySnapshot.docs.length;
      
    } catch (e) {
      print('Error fetching dashboard data: $e');
    }
  }

  // Methods for employee actions
  void requestNewRFIDCard() {
    // Implement action
  }

  void activateRFIDCard() {
    // Implement action
  }

  void deactivateRFIDCard() {
    // Implement action
  }
}
