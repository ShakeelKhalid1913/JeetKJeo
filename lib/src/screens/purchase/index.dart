import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:jeet_ke_jeo/src/config/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class PurchaseLottery extends StatefulWidget {
  const PurchaseLottery({super.key});

  @override
  State<PurchaseLottery> createState() => _PurchaseLotteryState();
}

class _PurchaseLotteryState extends State<PurchaseLottery> {
  final TextEditingController phoneController = TextEditingController();

  String initialCountry = 'PK';
  PhoneNumber number = PhoneNumber(isoCode: 'PK');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Lottery'),
      ),
      body: [
        "Purchase\nLottery".text.color(Colors.white).xl6.make().box.make(),
        const SizedBox(height: 20),
        "Only 500/Rs"
            .text
            .color(Colors.white)
            .xl3
            .textStyle(GoogleFonts.robotoMono())
            .make()
            .box
            .make(),
        const SizedBox(height: 20),
        VxTextField(
          style: const TextStyle(color: Colors.black),
          hint: "Enter Username",
          hintStyle: const TextStyle(color: Colors.black),
          fillColor: Colors.grey.shade100,
          borderRadius: 10,
          borderType: VxTextFieldBorderType.roundLine,
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        VxTextField(
          maxLine: 3,
          style: const TextStyle(color: Colors.black),
          hint: "Enter Address",
          hintStyle: const TextStyle(color: Colors.black),
          fillColor: Colors.grey.shade100,
          borderRadius: 10,
          borderType: VxTextFieldBorderType.roundLine,
          prefixIcon: const Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        InternationalPhoneNumberInput(
          countries: const ['PK', 'US'],
          onInputChanged: (PhoneNumber number) {
            print(number.phoneNumber);
          },
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          ),
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.disabled,
          selectorTextStyle: const TextStyle(color: Colors.black),
          initialValue: number,
          textFieldController: phoneController,
          formatInput: true,
          keyboardType: const TextInputType.numberWithOptions(
              signed: true, decimal: true),
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ).box.white.rounded.make().p4(),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: ["Purchase".text.xl4.make(), const Icon(Icons.arrow_forward)]
              .row(alignment: MainAxisAlignment.center)
              .wFull(context),
        )
      ]
          .column()
          .scrollVertical()
          .hFull(context)
          .box
          .withDecoration(
            const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.9],
                colors: [
                  Colors.black,
                  AppColors.goldColor,
                ],
              ),
            ),
          )
          .padding(const EdgeInsets.fromLTRB(20, 20, 20, 0))
          .color(Colors.black87)
          .make(),
    );
  }
}
