import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350, // Ширина желтого квадрата
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.yellow[100], // Желтый фон
            borderRadius: BorderRadius.circular(12), // Закругленные углы
            border: Border.all(
              color: Colors.yellow[300]!,
              width: 2,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Заголовок
              _buildHeader(),
              const SizedBox(height: 30),

              // Основной контент
              _buildContent(),
              const SizedBox(height: 30),

              // Кнопка "GET STARTED"
              _buildGetStartedButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Smartr",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          "Fresh look, same login.",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Первый пункт
        _buildNumberedPoint(
          1,
          "SmartRecruiters\ncandidate portal\nis now Smartr.",
        ),
        const SizedBox(height: 16),

        // Второй пункт
        _buildNumberedPoint(
          2,
          "Enter the same login\ninfo used for your\nSmartrProfile",
        ),
        const SizedBox(height: 16),

        // Третий пункт
        _buildNumberedPoint(
          3,
          "If login details were\nsaved, you may\nneed to re-save.",
        ),
        const SizedBox(height: 20),

        // Ссылка
        _buildWhySmartrLink(),
      ],
    );
  }

  Widget _buildNumberedPoint(int number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$number.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWhySmartrLink() {
    return GestureDetector(
      onTap: () {
        print("Why Smartr? link pressed");
      },
      child: Text(
        "Why Smartr? Read here",
        style: TextStyle(
          fontSize: 16,
          color: Colors.blue[700],
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget _buildGetStartedButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: const Text(
          "GET STARTED",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}