import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressListTile extends StatelessWidget {
  final String titleAdress;
  final String subTitleAdress;

  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const AddressListTile({
    Key? key,
    required this.titleAdress,
    required this.subTitleAdress,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleAdress,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
      subtitle: Text(
        subTitleAdress,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundColor: const Color.fromRGBO(243, 122, 32, 1),
            child: IconButton(
              iconSize: 28.r,
              onPressed: onEdit,
              icon: const Icon(Icons.edit),
              color: Colors.white,
            ),
          ),
          SizedBox(width: 16.w),
          CircleAvatar(
            radius: 24.r,
            backgroundColor: Colors.red,
            child: IconButton(
              iconSize: 28.r,
              onPressed: onDelete,
              icon: const Icon(Icons.delete),
              color: Colors.white,
            ),
          ),
          const Divider(
            thickness: 10,
            height: double.infinity,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
