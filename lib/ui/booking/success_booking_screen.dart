part of 'package:heaven_canceller_hospital/ui/ui.dart';

class SuccessBookingScreen extends StatelessWidget {
  static String routeName = "/success_booking_screen";

  @override
  Widget build(BuildContext context) {
    final Doctor doctor = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: accentColor,
          ),
          SafeArea(
            child: Stack(
              children: [
                Container(
                  color: accentColor,
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 105 - statusBarHeight(context),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(
                            bottom: 24,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/image/check_success.png",
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Booking Sukses!",
                          style: semiBoldBaseFont.copyWith(
                            color: baseColor,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Kode Booking Anda",
                          style: regularBaseFont.copyWith(
                            color: baseColor,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "B123840",
                          style: boldBaseFont.copyWith(
                            color: baseColor,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Custumer Service kami akan menghubungi\nanda untuk konfirmasi selanjutnya",
                          textAlign: TextAlign.center,
                          style: regularBaseFont.copyWith(
                            color: baseColor,
                            fontSize: 12,
                            height: 1.7,
                          ),
                        ),
                        SizedBox(
                          height: 122,
                        ),
                        AccentRaisedButton(
                          width: defaultWidth(context),
                          height: 44,
                          borderRadius: 8,
                          color: baseColor,
                          fontColor: accentColor,
                          fontSize: 14,
                          text: "Lihat History",
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, MainScreen.routeName);
                          },
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        GestureDetector(
                          child: Text(
                            "Tidak, Kembali Ke Home",
                            style: regularBaseFont.copyWith(
                              color: baseColor,
                              fontSize: 12,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}