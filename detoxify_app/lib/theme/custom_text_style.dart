import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeABeeZeeBlack90001 =>
      theme.textTheme.bodyLarge!.aBeeZee.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeBalooChettanBlack90001 =>
      theme.textTheme.bodyLarge!.balooChettan.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeBalooChettanBlack9000118 =>
      theme.textTheme.bodyLarge!.balooChettan.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get bodyLargeBalooChettanGray90004 =>
      theme.textTheme.bodyLarge!.balooChettan.copyWith(
        color: appTheme.gray90004,
        fontSize: 18.fSize,
      );
  static get bodyLargeBalooChettanOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.balooChettan.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeDMSansBlue700 =>
      theme.textTheme.bodyLarge!.dMSans.copyWith(
        color: appTheme.blue700,
      );
  static get bodyLargeDMSansBluegray90002 =>
      theme.textTheme.bodyLarge!.dMSans.copyWith(
        color: appTheme.blueGray90002,
      );
  static get bodyLargeDMSansGray60001 =>
      theme.textTheme.bodyLarge!.dMSans.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeDMSansGray900 =>
      theme.textTheme.bodyLarge!.dMSans.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeGray50002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyLargeGray60002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyLargeGray90005 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90005,
      );
  static get bodyLargeGray9000518 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90005,
        fontSize: 18.fSize,
      );
  static get bodyLargeInterGray600 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get bodyLargeNunitoGray400 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeOverpassGray90001 =>
      theme.textTheme.bodyLarge!.overpass.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargePoppinsGray50001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumABeeZee => theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumABeeZee15 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBalooChettan =>
      theme.textTheme.bodyMedium!.balooChettan.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBalooChettanGray90004 =>
      theme.textTheme.bodyMedium!.balooChettan.copyWith(
        color: appTheme.gray90004,
        fontSize: 14.fSize,
      );
  static get bodyMediumBarlowCondensedGray70002 =>
      theme.textTheme.bodyMedium!.barlowCondensed.copyWith(
        color: appTheme.gray70002,
      );
  static get bodyMediumBarlowCondensedGray90004 =>
      theme.textTheme.bodyMedium!.barlowCondensed.copyWith(
        color: appTheme.gray90004,
        fontSize: 14.fSize,
      );
  static get bodyMediumBarlowCondensedGray90004_1 =>
      theme.textTheme.bodyMedium!.barlowCondensed.copyWith(
        color: appTheme.gray90004,
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 15.fSize,
      );
  static get bodyMediumDMSansGray900 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumNunitoSans72090f47 =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: Color(0X72090F47),
        fontSize: 14.fSize,
      );
  static get bodyMediumNunitoSansOnErrorContainer =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.45),
        fontSize: 14.fSize,
      );
  static get bodyMediumNunitoSansffffc618 =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: Color(0XFFFFC618),
        fontSize: 14.fSize,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.45),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnErrorContainer15 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.67),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumOnPrimaryContainer14 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRubikGray50002 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.gray50002,
        fontSize: 14.fSize,
      );
  static get bodyMediumRubikGray90005 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.gray90005,
        fontSize: 14.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallABeeZeeBlack90001 =>
      theme.textTheme.bodySmall!.aBeeZee.copyWith(
        color: appTheme.black90001.withOpacity(0.4),
        fontSize: 10.fSize,
      );
  static get bodySmallABeeZeeBlack9000110 =>
      theme.textTheme.bodySmall!.aBeeZee.copyWith(
        color: appTheme.black90001.withOpacity(0.45),
        fontSize: 10.fSize,
      );
  static get bodySmallABeeZeeOnPrimaryContainer =>
      theme.textTheme.bodySmall!.aBeeZee.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallGreen50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green50001,
        fontSize: 10.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.45),
        fontSize: 11.fSize,
      );
  static get bodySmallOverpassOnErrorContainer =>
      theme.textTheme.bodySmall!.overpass.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.45),
        fontSize: 11.fSize,
      );
  static get bodySmallPink800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pink800,
      );
  // Headline text style
  static get headlineSmallInterBlack90001 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRubikBluegray90003 =>
      theme.textTheme.headlineSmall!.rubik.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlueA100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA100,
      );
  static get labelLargeDMSansGray60001 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeDeeppurpleA100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA100,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargeInterCyan90099 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.cyan90099,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterLightblue40001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.lightBlue40001,
        fontSize: 12.fSize,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryContainerMedium =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeffffffffMedium => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumDeeppurpleA100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepPurpleA100,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRoboto => theme.textTheme.labelMedium!.roboto.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSansationOnPrimaryContainer =>
      theme.textTheme.labelMedium!.sansation.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeABeeZeeBlack90001 =>
      theme.textTheme.titleLarge!.aBeeZee.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBalooChettanGray90004 =>
      theme.textTheme.titleLarge!.balooChettan.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeBlack90001Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGreen800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green800,
      );
  static get titleLargePoppinsBlack90001 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsGray90002 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsLightblue400 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.lightBlue400,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePurple500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.purple500,
      );
  static get titleLargePurple500Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.purple500,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRed500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red500,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
      );
  static get titleMediumDMSansBlack900 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansBlue700 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.blue700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansGray900 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray60005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60005,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray9000216 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
      );
  static get titleMediumInterBlack90001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
      );
  static get titleMediumInterBlack90001Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnError =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleMediumInterTeal900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.teal900,
        fontSize: 16.fSize,
      );
  static get titleMediumManropeOnPrimaryContainer =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimaryContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumRobotoBlack90001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallAmber600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amber600,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallDMSansGreen800 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.green800,
      );
  static get titleSmallDMSansOnPrimary =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallDMSansOrange900 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.orange900,
      );
  static get titleSmallDMSansPurple500 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.purple500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 15.fSize,
      );
  static get titleSmallIndigoA100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA100,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterOnPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoOnPrimaryContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get barlowCondensed {
    return copyWith(
      fontFamily: 'Barlow Condensed',
    );
  }

  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }

  TextStyle get sansation {
    return copyWith(
      fontFamily: 'Sansation',
    );
  }

  TextStyle get balooChettan {
    return copyWith(
      fontFamily: 'Baloo Chettan',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
