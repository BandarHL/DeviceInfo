//
//  BHUtilities.h
//  DeviceInfo
//
//  Created by BandarHelal on 28/09/1441 AH.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface BHUtilities : NSObject
+ (NSString *)getUDID;
+ (id)getMacAddress;
+ (id)getbluetoothMacAddress;
+ (id)getProductType;
@end
