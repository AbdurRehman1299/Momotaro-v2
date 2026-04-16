import 'package:flutter/material.dart';

class WeightReminderBottomSheet extends StatefulWidget {
  const WeightReminderBottomSheet({super.key});

  static void showWeightReminder(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const WeightReminderBottomSheet(),
    );
  }

  @override
  State<WeightReminderBottomSheet> createState() =>
      _WeightReminderBottomSheetState();
}

class _WeightReminderBottomSheetState extends State<WeightReminderBottomSheet> {
  final Set<String> _selectedDays = {'Thursday', 'Friday', 'Saturday'};

  void _toggleDay(String day) {
    setState(() {
      if (_selectedDays.contains(day)) {
        _selectedDays.remove(day);
      } else {
        _selectedDays.add(day);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 32,
                  color: Color(0xFF2D3142),
                ),
              ),

              Center(
                child: Image.asset(
                  'images/weight_reminder.png',
                  height: 120,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.notifications_active,
                    size: 80,
                    color: Color(0xFFE8E5FF),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Titles
              const Center(
                child: Text(
                  "Weight Reminder",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3142),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Choose a day to weigh yourself and we will send you the reminder",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF9FA2B4).withValues(alpha: 0.8),
                      height: 1.4,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              Text(
                "SELECTED DAY (${_selectedDays.length})",
                style: const TextStyle(
                  color: Color(0xFF7B61FF),
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),

              const SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildCustomCheckbox("Monday"),
                        _buildCustomCheckbox("Tuesday"),
                        _buildCustomCheckbox("Wednesday"),
                        _buildCustomCheckbox("Thursday"),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildCustomCheckbox("Friday"),
                        _buildCustomCheckbox("Saturday"),
                        _buildCustomCheckbox("Sunday"),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7B61FF),
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Set reminder",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomCheckbox(String day) {
    final bool isSelected = _selectedDays.contains(day);

    return GestureDetector(
      onTap: () => _toggleDay(day),
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? Color(0xFF7B61FF) : Color(0xFFE8E5FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
            const SizedBox(width: 12),
            Text(
              day,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF2D3142),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
