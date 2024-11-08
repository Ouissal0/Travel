import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';

class UpdateEmail extends StatelessWidget {
  const UpdateEmail({super.key});

  @override
  Widget build(BuildContext context) {
    // If you’re using a controller, make sure it's declared properly.
    // final controller = Get.put(UpdateNameController());
    return Scaffold(
      // Custom AppBar
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Change Email',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              'Please choose a valid email that is easy to recall.',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: MySizes.spaceBtwSections),

            // Text field and Button
            Form(
              // If using a key, uncomment the next line
              // key: controller.updateUserNameFormKey,
              child: Column(
                children: [
                  TextFormField(
                    // Uncomment and set controller if needed
                    // controller: controller.firstName,
                    validator: (value) => MyValidator.validateEmail(value),
                    decoration: const InputDecoration(
                      labelText: MyTexts.email,
                      prefixIcon: Icon(Iconsax.message),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwSections),

            // Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality here or uncomment the next line if using a controller
                  // controller.updateUserName();
                },
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
