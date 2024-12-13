import 'package:flutter/material.dart';
import 'package:gpa_calculator/features/home/components/course_input_details.dart';
import 'package:gpa_calculator/features/home/components/customDropDown.dart';
import 'package:gpa_calculator/features/home/components/customTextField.dart';
import 'package:gpa_calculator/utils/constants/colors.dart';
import 'package:gpa_calculator/utils/constants/sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GPA CALCULATOR'),
      ),
      backgroundColor: TColors.textFieldBG,
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
            color: TColors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                color: Colors.grey,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Semester 1',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Icon(Icons.cancel_outlined),
                ],
              ),
              const SizedBox(height: TSizes.defaultSpace),
              _courseDetailSection(context),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItemsSmall),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
            const SizedBox(width: TSizes.spaceBtwItems),
            ElevatedButton(
              onPressed: () {},
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                  backgroundColor:
                      const WidgetStatePropertyAll(TColors.secondary)),
              child: const Text('Add Semester'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _courseDetailSection(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Course Name', style: Theme.of(context).textTheme.titleLarge),
            Text('Grade', style: Theme.of(context).textTheme.titleLarge),
            Text('Credits', style: Theme.of(context).textTheme.titleLarge),
            const Opacity(opacity: 0, child: Icon(Icons.cancel)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        _courseInputDetails(context),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Icon(Icons.add_circle_outline, color: TColors.primary),
                Text(
                  'Add Course',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.cancel_outlined, color: TColors.textRed),
                Text(
                  'Clear All',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: TColors.textRed,
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _courseInputDetails(BuildContext context) {
    return const Column(
      children: [
        CourseInputDetails(),
        SizedBox(height: TSizes.spaceBtwItemsSmall),
        CourseInputDetails(),
        SizedBox(height: TSizes.spaceBtwItemsSmall),
        CourseInputDetails(),
        SizedBox(height: TSizes.spaceBtwItemsSmall),
        CourseInputDetails(),
      ],
    );
  }
}
