import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/shared/app_app_bar.dart';
import 'package:quick_grocery/presentation/shared/app_button.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

import 'widget/address_list_tile.dart';

class EditAddressScreen extends StatelessWidget {
  const EditAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 50.h),
            child: AppAppBar(
                title:
                    AppLocalizations.of(context)!.translate('edit_address')!)),
        floatingActionButton: AppButton(
          onPressed: () {},
          text: AppLocalizations.of(context)!.translate('add_new_address')!,
          icon: Icons.add,
          color: ColorManager.btnPrimary,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            AddressListTile(
              titleAdress: 'Home Address',
              subTitleAdress:
                  'Address 1, 123 Street, City, Country, 123456789, 123456789',
              onDelete: () {},
              onEdit: () {},
            ),
            AddressListTile(
              titleAdress: 'Home Address',
              subTitleAdress:
                  'Address 1, 123 Street, City, Country, 123456789, 123456789',
              onDelete: () {},
              onEdit: () {},
            ),
            AddressListTile(
              titleAdress: 'Home Address',
              subTitleAdress:
                  'Address 1, 123 Street, City, Country, 123456789, 123456789',
              onDelete: () {},
              onEdit: () {},
            ),
          ]),
        ));
  }
}
