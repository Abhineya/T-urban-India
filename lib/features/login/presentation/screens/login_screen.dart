import 'package:flutter/material.dart';
import 'package:t_urban_india/core/constants/constant_colors.dart';
import 'package:t_urban_india/features/common/presentation/widgets/common_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ScrollController _scrollController = ScrollController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() => _scrollToField(_emailFocusNode));
    _passwordFocusNode.addListener(() => _scrollToField(_passwordFocusNode));
  }

  void _scrollToField(final FocusNode focusNode) {
    if (focusNode.hasFocus) {
      Future.delayed(const Duration(milliseconds: 300), () {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.bounceIn,
        );
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              stretch: true,
              expandedHeight: 300,
              backgroundColor: ConstantColors.primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'T-urban India',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 20),
                ),
                background: const Align(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/turban.png'),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(45),
                    topLeft: Radius.circular(45),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Sign up',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: ConstantColors.black,
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Center(
                          child: Text(
                            'Log in',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                    color: ConstantColors.black, fontSize: 40,),
                          ),
                        ),
                        const SizedBox(height: 40),
                        CommonTextFieldWidget(
                          maxLines: 1,
                          hintText: 'Email',
                          focusNode: _emailFocusNode,
                        ),
                        const SizedBox(height: 40),
                        CommonTextFieldWidget(
                          maxLines: 1,
                          hintText: 'Password',
                          focusNode: _passwordFocusNode,
                        ),
                        const SizedBox(height: 40),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Center(
                          child: Text(
                            'Forgot Password ?',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ConstantColors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
