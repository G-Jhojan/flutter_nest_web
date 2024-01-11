import 'package:flutter/material.dart';
import 'package:flutter_nest/src/PROVIDER/config/ui/buttons/link_text.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Container(
      height: (size.width >1000) ? size.height * 0.07 : null,
       color: Colors.black,
      child:  Wrap(
        alignment: WrapAlignment.center,
        children: [
          LinkText(text: 'About', onPressed: ()=> print('about'),),
          const LinkText(text: 'Help Center'),
          const LinkText(text: 'Help  Center'),
          const LinkText(text: 'Help Center'),
          const LinkText(text: 'Privacy Policy'),
          const LinkText(text: 'Cookie Policy'),
          const LinkText(text: 'Blog'),
          const LinkText(text: 'Status'),
          const LinkText(text: 'Carrers'),
          const LinkText(text: 'Brands'),
          const LinkText(text: 'Advertiding'),
          const LinkText(text: 'Services'),
          const LinkText(text: 'About'),
          const LinkText(text: 'About'),
          const LinkText(text: 'About'),
          const LinkText(text: 'About'),
        ],
      )
    );
  }
}
