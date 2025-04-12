/**
 *  ColorSupport.h
 *  Velvet
 *
 *  Created by NoisyFlake
 *  Copyright (c) 2023 NoisyFlake & ubik. All rights reserved.
 */
#include <UIKit/UIKit.h>

@interface RGBPixel : NSObject
    @property int r, g, b, d;
@end

@interface UIImage (VelvetColorSupport)
    - (UIColor *)velvetAverageColor;
    - (UIColor *)velvetDominantColor;
    - (int)colourDistance:(RGBPixel *)a andB:(RGBPixel *)b;
@end

@interface UIColor (VelvetColorSupport)
    - (BOOL)velvetIsDarkColor;
    - (CGFloat)velvetColorBrightness;

    + (UIColor *)velvetColorFromHexString:(NSString *)hexString;
@end
