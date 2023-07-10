import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/screen/chat/widget/send_text_field.dart';
import 'package:quick_grocery/presentation/screen/chat/widget/ticket_banner.dart';
import 'package:quick_grocery/presentation/shared/app_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50.h),
          child: AppAppBar(
              title: AppLocalizations.of(context)!.translate('chat')!),
        ),
        floatingActionButton: const SendTextField(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TicketBanner(
                orderDate: '12/12/2021',
                orderNumber: '123456',
                orderStatus: 'Pending',
                orderTotal: '123456',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
