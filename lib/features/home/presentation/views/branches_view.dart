import 'package:flutter/material.dart';
import 'package:trining/features/home/presentation/views/widgets/branches_view_body.dart';

class BranchesView extends StatelessWidget {
  const BranchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: CustomAppBar(),
      body: BranchesViewBody(),
    );
  }
}
