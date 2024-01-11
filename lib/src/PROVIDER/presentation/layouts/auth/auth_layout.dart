import 'package:flutter/material.dart';

import 'widgets/custom_background.dart';
import 'widgets/custom_title.dart';
import 'widgets/links_bar.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({
    Key? key,
    required this.child
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Scrollbar(
          thumbVisibility: true,
          child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [

          (size.width > 1000)
          ? _DesktopBody(child: child,)
          : _MobileBody(  child: child,),
          //links bar
          const LinksBar(),
              ],
            ),
          )
        );
      }
    }

/// Mobile
class _MobileBody extends StatelessWidget {
  final Widget child;

  const _MobileBody({
    Key? key,
    required this.child
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const CustomTitle(),
          Container(
            width: double.infinity,
            height: 700, //tamaño del formulario de registro
            color: Colors.black,
            child: child,
            ),

          const SizedBox(
            width: double.infinity,
            height: 200,
            child:  CustomBackground(),

          )
        ],
      )
    );
  }
}

/// Desktop
class _DesktopBody extends StatelessWidget {
  final Widget child;

  const _DesktopBody({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.95,
      color: Colors.black,
      child: Row(
        children: [
          //img background
          const CustomBackground(),
          //view container
          Container(
            width: 400,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 30),
                const CustomTitle(),
               // const SizedBox(height: 50),
                Expanded(child: child)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
