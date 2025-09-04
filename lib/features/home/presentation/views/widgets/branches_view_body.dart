import 'package:flutter/material.dart';
import 'package:trining/features/home/presentation/views/widgets/expandable_branch_item.dart';

class BranchesViewBody extends StatefulWidget {
  const BranchesViewBody({super.key});

  @override
  State<BranchesViewBody> createState() => _BranchesViewBodyState();
}

class _BranchesViewBodyState extends State<BranchesViewBody> {
  List<bool> isExpandedItems = [];
  @override
  void initState() {
    super.initState();
    isExpandedItems = List.generate(5, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsetsDirectional.only(top: 95),
          padding: EdgeInsetsDirectional.only(top: 20, start: 16, end: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
              topEnd: Radius.circular(20),
            ),
            border: Border.all(color: Colors.transparent),
          ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ExpandableBranchItem(
                branchName: 'تو بوب تيك',
                branchNameEnglish: 'Too pop Tech',
                landline: '0594600244',
                contactNumber: '0594600244',
                isExpanded: isExpandedItems[index],
                onExpandTap: () {
                  setState(
                    () => isExpandedItems[index] = !isExpandedItems[index],
                  );
                },
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
            itemCount: isExpandedItems.length,
          ),
        ),
      ],
    );
  }
}
