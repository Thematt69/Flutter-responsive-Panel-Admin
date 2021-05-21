import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
        Visibility(
          visible: !Responsive.isDesktop(context),
          child: IconButton(
            onPressed: context.read<MenuController>().controlMenu,
            icon: Icon(
              Icons.menu,
            ),
          ),
        ),
        Visibility(
          visible: _size.width >= 650,
          child: Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Visibility(
          visible: !Responsive.isMobile(context),
          child: const Expanded(child: SizedBox()),
        ),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryDarkColor,
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          Visibility(
            visible: _size.width >= 650,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              child: Text('Angelina Joli'),
            ),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: defaultPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          fillColor: secondaryDarkColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(defaultRadius),
            child: Container(
              padding: const EdgeInsets.all(defaultPadding * 0.75),
              margin:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
          ),
        ),
      ),
    );
  }
}
