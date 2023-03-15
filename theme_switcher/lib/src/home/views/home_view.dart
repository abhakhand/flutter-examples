import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switcher/app/l10n/l10n.dart';
import 'package:theme_switcher/src/core/presentation/theme/colors.dart';
import 'package:theme_switcher/src/core/presentation/theme/themes.dart';
import 'package:theme_switcher/src/theme/cubit/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.homeAppBarTitle)),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select Theme Mode',
              style: Theme.of(context)
                  .bodyLargePrimary
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            BlocBuilder<ThemeCubit, ThemeMode>(
              builder: (context, themeMode) {
                return Row(
                  children: [
                    ThemeModeTile(
                      selected: themeMode == ThemeMode.system,
                      label: 'System',
                      onTap: () {
                        context
                            .read<ThemeCubit>()
                            .themeModeChanged(ThemeMode.system);
                      },
                    ),
                    const SizedBox(width: 20),
                    ThemeModeTile(
                      selected: themeMode == ThemeMode.light,
                      label: 'Light',
                      onTap: () {
                        context
                            .read<ThemeCubit>()
                            .themeModeChanged(ThemeMode.light);
                      },
                    ),
                    const SizedBox(width: 20),
                    ThemeModeTile(
                      selected: themeMode == ThemeMode.dark,
                      label: 'Dark',
                      onTap: () {
                        context
                            .read<ThemeCubit>()
                            .themeModeChanged(ThemeMode.dark);
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThemeModeTile extends StatelessWidget {
  const ThemeModeTile({
    required this.selected,
    required this.label,
    required this.onTap,
    super.key,
  });

  final bool selected;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: selected,
          activeColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          onChanged: (_) {
            HapticFeedback.lightImpact();
            onTap();
          },
        ),
        Text(
          label,
          style: Theme.of(context).bodySmallPrimary,
        ),
      ],
    );
  }
}
