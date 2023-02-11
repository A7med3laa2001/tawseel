import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/bottomsheets/added_product.dart';
import 'package:tawseel/ui/bottomsheets/verification_code.dart';
import 'package:tawseel/ui/widgets/default_back_button.dart';
import 'package:tawseel/ui/widgets/default_scaffold.dart';
import 'package:tawseel/ui/widgets/filled_button.dart';
import 'package:tawseel/ui/widgets/notification_icon.dart';
import 'package:tawseel/ui/widgets/textfield.dart';

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      leading: const DefaultBackButton(),
      title: Text(
        "طلب جد يد",
        style: TText.headlineMedium,
      ),
      actions: [
        IconButton(
          onPressed: () => null,
          icon: const NotificationIcon(),
        ),
      ],
      body: ListView(
        children: [
          Container(
            color: TColors.card,
            padding: const EdgeInsets.all(kPadding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "المنـتجات",
                      style: TText.displayLarge,
                    ),
                    TextButton(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add,
                            color: TColors.mainLight,
                          ),
                          const SizedBox(
                            width: kPadding4,
                          ),
                          Text(
                            "إضافة منتح اخر",
                            style: TText.displaySmall.copyWith(
                              color: TColors.mainLight,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => null,
                    ),
                  ],
                ),
                const SizedBox(height: kPadding16),
                Text(
                  "بيتزا شيش طاووق - حار",
                  style: TText.displayLarge,
                ),
                const SizedBox(height: kPadding16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "السعر:",
                      style: TText.displayMedium,
                    ),
                    Text(
                      "250 ج.م",
                      style: TText.displayMedium,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.delete,
                            color: TColors.error,
                          ),
                          const SizedBox(
                            width: kPadding4,
                          ),
                          Text(
                            "حذف",
                            style: TText.displaySmall.copyWith(
                              color: TColors.error,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => null,
                    ),
                    TextButton(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit,
                            color: TColors.normal,
                          ),
                          const SizedBox(
                            width: kPadding4,
                          ),
                          Text(
                            "تعديل",
                            style: TText.displaySmall.copyWith(
                              color: TColors.normal,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => showVerificationCodeBottomSheet(),
                    ),
                  ],
                ),
                const Divider(
                  color: TColors.bg,
                ),
                const CustomTextField(
                  hintText: 'اسم المنتج',
                ),
                const CustomTextField(
                  hintText: 'سعر المنتج',
                  suffixText: 'ج.م',
                ),
                const SizedBox(
                  height: kPadding16,
                ),
                FilledButton(
                  color: TColors.success,
                  text: 'إضافة',
                  onTap: () => showAddedProductSuccessfullyBottomSheet(),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(kPadding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "تفاصيل الطلب",
                  style: TText.titleMedium,
                ),
                const SizedBox(
                  height: kPadding8,
                ),
                const CustomTextField(
                  hintText: 'اسم العميل',
                ),
                const CustomTextField(
                  hintText: 'عنوان العميل',
                  suffixIcon: Icons.map,
                ),
                const CustomTextField(
                  hintText: 'رقم العميل',
                ),
                const CustomTextField(
                  hintText: 'تكلفة التوصيل',
                ),
                const SizedBox(
                  height: kPadding16,
                ),
                FilledButton(
                  onTap: () => null,
                  text: 'إضافة',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
