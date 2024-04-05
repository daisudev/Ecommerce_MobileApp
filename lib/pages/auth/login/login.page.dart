import 'package:flutter/material.dart';
import 'package:my_app/gen/assets.gen.dart';
import 'package:my_app/pages/splash/widget/button.widget.dart';
import 'package:my_app/routes/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Stack(
              children: [
                Container(color: const Color(0xFF6342E8)),
                Positioned(
                    top: 20,
                    right: 0,
                    child: Image.asset(Assets.images.vLg.path)),
                Positioned(
                    right: 10, child: Image.asset(Assets.images.fashion.path)),
                const Positioned(
                    top: 120,
                    left: 20,
                    right: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome Back!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                            "Yay! Bạn quay trở lại rồi! Cảm ơn vì đã mua sắm cùng chúng tôi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            )),
                        Text(
                            "Chúng tôi đang có nhiều ưu đãi và khuyến mãi hấp dẫn, hãy chọn ngay!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            )),
                      ],
                    )),
                Positioned(
                    left: 20,
                    bottom: 30,
                    child: Text("Đăng nhập".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ))),
                Positioned(
                  left: 20,
                  top: MediaQuery.of(context).padding.top,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(Assets.images.backArrow.path),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Địa chỉ email",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      prefixIcon:
                          Image.asset(Assets.images.envelopeSimple.path),
                      suffixIcon: const Icon(
                        Icons.error,
                        color: Color(0xFF6342E8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Mật khẩu",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        prefixIcon: Image.asset(Assets.images.lock.path)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (e) {},
                          ),
                          const Text("Nhớ mật khẩu")
                        ],
                      ),
                      const Text(
                        "Quên mật khẩu ?",
                        style: TextStyle(color: Color(0xFF6342E8)),
                      )
                    ],
                  ),
                  ButtonWidget(
                    height: 65,
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.home, (route) => true);
                    },
                    title: 'Đăng nhập',
                    isFilled: true,
                    filledColor: const Color(0xFF6342E8),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Chưa có tài khoản?"),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.register);
                        },
                        child: const Text(
                          "Đăng ký",
                          style: TextStyle(color: Color(0xFF6342E8)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
