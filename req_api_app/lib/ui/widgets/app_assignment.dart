import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:req_api_app/ui/theme/app_color.dart';

enum AssignmentType { assigned, missed }

class Assignment extends StatelessWidget {
  final int count;
  final List<String> subject;
  final AssignmentType type;

  const Assignment(
      {Key? key,
      required this.count,
      required this.subject,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: AppColor.black.withOpacity(0.05),
      highlightColor: AppColor.black.withOpacity(0.15),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.dark,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  count.toString(),
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  Type == AssignmentType.assigned ? "Assigned" : "Missed",
                  style: TextStyle(
                    color: AppColor.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              subject.join(","),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColor.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
