import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_styles.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, this.onSubmit});

  final VoidCallback? onSubmit;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  InputDecoration _inputDecoration({required String hint, Widget? suffix}) {
    final whiteBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28.r),
      borderSide: BorderSide(color: Colors.white, width: 1),
    );

    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.white, fontSize: 10.sp),
      suffixIcon: suffix,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      enabledBorder: whiteBorder,
      focusedBorder: whiteBorder.copyWith(
        borderSide: BorderSide(color: Colors.white, width: 1.6),
      ),
      errorBorder: whiteBorder.copyWith(
        borderSide: BorderSide(color: Colors.redAccent),
      ),
      focusedErrorBorder: whiteBorder.copyWith(
        borderSide: BorderSide(color: Colors.redAccent),
      ),
      fillColor: Colors.transparent,
      filled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 16.h),
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.r)),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'تسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: AppStyles.textStyleBold9.copyWith(fontSize: 20),
                ),
                SizedBox(height: 20.h),

                Text(
                  'رقم المشتغل أو الهوية',
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                ),
                SizedBox(height: 6.h),

                TextFormField(
                  controller: _idController,
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),

                  decoration: _inputDecoration(
                    hint: 'أدخل رقم المشتغل أو الهوية',
                  ),
                  validator: (v) => (v == null || v.trim().isEmpty)
                      ? 'هذا الحقل مطلوب'
                      : null,
                ),

                SizedBox(height: 14.h),

                // كلمة المرور
                Text(
                  'كلمة المرور',
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                ),
                SizedBox(height: 6.h),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscure,
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  decoration: _inputDecoration(
                    hint: 'كلمة المرور',

                    suffix: IconButton(
                      onPressed: () => setState(() => _obscure = !_obscure),
                      icon: Icon(
                        _obscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  validator: (v) =>
                      (v == null || v.isEmpty) ? 'أدخل كلمة المرور' : null,
                ),

                SizedBox(height: 10.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(color: Colors.white, fontSize: 11.sp),
                    ),
                  ),
                ),

                SizedBox(height: 8.h),

                // زر الدخول
                SizedBox(
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home_view');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                    ),
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
