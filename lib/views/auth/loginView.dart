import 'package:cnas/viewmodels/auth/login_viewmodel.dart';
import 'package:cnas/views/Component/button_widget.dart';
import 'package:cnas/views/Component/text_field_widget.dart';
import 'package:cnas/config/generale_vars.dart';
import '../../../config/const.dart';
import '../../../config/size_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Consumer<LoginViewModel>(
              builder: (context, value, child) => Container(
                margin: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight * 0.05),
                height: SizeConfig.screenHeight * 0.85,
                width: SizeConfig.screenWidth * 0.5,
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.1,
                  vertical: SizeConfig.screenHeight * 0.04,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(SizeConfig.screenWidth * 0.1),
                  color: Colors.white,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Connectez-vous',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: SizeConfig.blockSizeVertical * 3.6),
                      ),
                      CustomTextField(
                        label: 'Email/ Numéro de téléphone *',
                        controller: value.credentialController,
                        type: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null) return '';
                          if (value.isEmpty) {
                            return 'required field';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        label: 'Mot de passe *',
                        controller: value.passwordController,
                        type: TextInputType.visiblePassword,
                        isObscure: true,
                        validator: (value) {
                          if (value == null) return '';
                          if (value.isEmpty) {
                            return 'required field';
                          }
                          return null;
                        },
                      ),
                      CustomButton(
                          working: value.working,
                          text: 'Sign in',
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                            value.login(context);
                            // }
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
