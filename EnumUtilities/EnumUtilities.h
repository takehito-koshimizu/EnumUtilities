//
//  EnumUtilities.h
//  EnumUtilities
//
//  Created by Takehito Koshimizu on 2018/04/21.
//

#import <TargetConditionals.h>

#if TARGET_OS_MAC && !TARGET_OS_IPHONE
    #import <AppKit/AppKit.h>
#else
    #import <UIKit/UIKit.h>
#endif

//! Project version number for EnumUtilities.
FOUNDATION_EXPORT double EnumUtilitiesVersionNumber;

//! Project version string for EnumUtilities.
FOUNDATION_EXPORT const unsigned char EnumUtilitiesVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EnumUtilities/PublicHeader.h>


