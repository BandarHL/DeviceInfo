//
//  BHUtilities.m
//  DeviceInfo
//
//  Created by BandarHelal on 28/09/1441 AH.
//

#import "BHUtilities.h"

@implementation BHUtilities

// https://stackoverflow.com/a/7848772/9910699
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

+ (NSString *)getUDID {
    Class AADeviceInfo = NSClassFromString(@"AADeviceInfo");
    NSString *udid = [[AADeviceInfo valueForKey:@"udid"] stringByReplacingOccurrencesOfString:@"-" withString:@""];
    return udid;
}
+ (id)getMacAddress {
    Class AADeviceInfo = NSClassFromString(@"AADeviceInfo");
    return [[[AADeviceInfo alloc] init] valueForKey:@"wifiMacAddress"];
}
+ (id)getbluetoothMacAddress {
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"12.1")) {
        Class AADeviceInfo = NSClassFromString(@"AADeviceInfo");
        return [[[AADeviceInfo alloc] init] valueForKey:@"bluetoothMacAddress"];
    } else {
        return @"nil";
    }
}
+ (id)getProductType {
    Class AADeviceInfo = NSClassFromString(@"AADeviceInfo");
    return [[[AADeviceInfo alloc] init] valueForKey:@"productType"];
}
@end
