import 'package:advice/core/components/circular_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBackMap extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBackMap({
    super.key,
    required this.onFilter,
    required this.onSearch,
  });

  final Function() onFilter;
  final Function() onSearch;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      // Remove the shadow for a flat look
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      // White background
      leading: null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircularBackButton(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: onSearch,
                  child: Container(
                    width: 50,
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFC9C9C9)),
                        borderRadius: BorderRadius.circular(34),
                      ),
                    ),
                    child: SvgPicture.asset('assets/svg/search.svg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: onFilter,
                  child: Container(
                    width: 50,
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFC9C9C9)),
                        borderRadius: BorderRadius.circular(34),
                      ),
                    ),
                    child: SvgPicture.asset('assets/svg/setting-map.svg'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),

      centerTitle: true,
    );
  }
}
