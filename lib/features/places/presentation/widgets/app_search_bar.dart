import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  static const double _searchBarHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);
    final searchController = TextEditingController();

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: _searchBarHeight,
            child: TextFormField(
              controller: searchController,
              onFieldSubmitted: (value) {},
              cursorColor: colorTheme.textPrimary,
              style: textTheme.text.copyWith(color: colorTheme.textPrimary),
              decoration: InputDecoration(
                filled: true,
                fillColor: colorTheme.surface,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: EdgeInsets.all(0),
                hintText: 'Поиск',
                hintStyle: textTheme.text.copyWith(color: colorTheme.inactive),
                prefixIcon: SvgPictureWidget(
                  'assets/icons/search.svg',
                  fit: BoxFit.scaleDown,
                  color: colorTheme.inactive,
                ),
                suffixIcon: searchController.text.isEmpty || searchController.text == ''
                    ? GestureDetector(
                        onTap: () {},
                        child: SvgPictureWidget(
                          AppSvgIcons.icFilter,
                          fit: BoxFit.scaleDown,
                          color: colorTheme.accent,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {},
                        child: SvgPictureWidget(
                          AppSvgIcons.icClear,
                          fit: BoxFit.scaleDown,
                          color: colorTheme.textPrimary,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
