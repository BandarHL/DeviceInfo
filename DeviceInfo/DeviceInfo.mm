#line 1 "/Users/bandarhelal/Documents/DeviceInfo/DeviceInfo/DeviceInfo.xm"
#import <UIKit/UIKit.h>
#import "BHUtilities.h"
#import "headers.h"



@interface PSTableCell : UITableViewCell
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2 specifier:(id)arg3;
@end

@interface PSGAboutController : PSListController
@end




#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class PSTableCell; @class PSGAboutController; 
static Class _logos_superclass$_ungrouped$PSGAboutController; static NSInteger (*_logos_orig$_ungrouped$PSGAboutController$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL PSGAboutController* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger);static UITableViewCell * (*_logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL PSGAboutController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *);static void (*_logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL PSGAboutController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *);
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$PSTableCell(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("PSTableCell"); } return _klass; }
#line 16 "/Users/bandarhelal/Documents/DeviceInfo/DeviceInfo/DeviceInfo.xm"

static NSInteger _logos_method$_ungrouped$PSGAboutController$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL PSGAboutController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (section == 0) {
        return 9;
    } else {
        return (_logos_orig$_ungrouped$PSGAboutController$tableView$numberOfRowsInSection$ ? _logos_orig$_ungrouped$PSGAboutController$tableView$numberOfRowsInSection$ : (__typeof__(_logos_orig$_ungrouped$PSGAboutController$tableView$numberOfRowsInSection$))class_getMethodImplementation(_logos_superclass$_ungrouped$PSGAboutController, @selector(tableView:numberOfRowsInSection:)))(self, _cmd, tableView, section);
    }
}
static UITableViewCell * _logos_method$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PSGAboutController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (indexPath.section == 0) {
        if (indexPath.row == 5) {
            PSTableCell *cell = [[_logos_static_class_lookup$PSTableCell() alloc] initWithStyle:1 reuseIdentifier:@"udid" specifier:nil];
            cell.textLabel.text = @"UDID";
            cell.detailTextLabel.text = [BHUtilities getUDID];
            return cell;
        }
        if (indexPath.row == 6) {
            PSTableCell *cell = [[_logos_static_class_lookup$PSTableCell() alloc] initWithStyle:1 reuseIdentifier:@"macAdd" specifier:nil];
            cell.textLabel.text = @"wifi MacAddress";
            cell.detailTextLabel.text = [BHUtilities getMacAddress];
            return cell;
        }
        if (indexPath.row == 7) {
            PSTableCell *cell = [[_logos_static_class_lookup$PSTableCell() alloc] initWithStyle:1 reuseIdentifier:@"BlomacAdd" specifier:nil];
            cell.textLabel.text = @"bluetooth MacAddress";
            cell.detailTextLabel.text = [BHUtilities getbluetoothMacAddress];
            return cell;
        }
        if (indexPath.row == 8) {
            PSTableCell *cell = [[_logos_static_class_lookup$PSTableCell() alloc] initWithStyle:1 reuseIdentifier:@"devicetype" specifier:nil];
            cell.textLabel.text = @"Device Type";
            cell.detailTextLabel.text = [BHUtilities getProductType];
            return cell;
        }
        return (_logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$ ? _logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$PSGAboutController, @selector(tableView:cellForRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
    } else {
        return (_logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$ ? _logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$PSGAboutController, @selector(tableView:cellForRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
    }
}
static void _logos_method$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PSGAboutController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (indexPath.section == 0) {
        if (indexPath.row == 5) {
            UIPasteboard.generalPasteboard.string = [BHUtilities getUDID];
            [tableView deselectRowAtIndexPath:indexPath animated:true];
        }
        if (indexPath.row == 6) {
            UIPasteboard.generalPasteboard.string = [BHUtilities getMacAddress];
            [tableView deselectRowAtIndexPath:indexPath animated:true];
        }
        if (indexPath.row == 7) {
            UIPasteboard.generalPasteboard.string = [BHUtilities getbluetoothMacAddress];
            [tableView deselectRowAtIndexPath:indexPath animated:true];
        }
        if (indexPath.row == 8) {
            UIPasteboard.generalPasteboard.string = [BHUtilities getProductType];
            [tableView deselectRowAtIndexPath:indexPath animated:true];
        }
        return (_logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$ ? _logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$PSGAboutController, @selector(tableView:didSelectRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
    } else {
        return (_logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$ ? _logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$PSGAboutController, @selector(tableView:didSelectRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
    }
}




















static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PSGAboutController = objc_getClass("PSGAboutController"); _logos_superclass$_ungrouped$PSGAboutController = class_getSuperclass(_logos_class$_ungrouped$PSGAboutController); { _logos_register_hook$(_logos_class$_ungrouped$PSGAboutController, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$PSGAboutController$tableView$numberOfRowsInSection$, (IMP *)&_logos_orig$_ungrouped$PSGAboutController$tableView$numberOfRowsInSection$);}{ _logos_register_hook$(_logos_class$_ungrouped$PSGAboutController, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$, (IMP *)&_logos_orig$_ungrouped$PSGAboutController$tableView$cellForRowAtIndexPath$);}{ _logos_register_hook$(_logos_class$_ungrouped$PSGAboutController, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$, (IMP *)&_logos_orig$_ungrouped$PSGAboutController$tableView$didSelectRowAtIndexPath$);}} }
#line 98 "/Users/bandarhelal/Documents/DeviceInfo/DeviceInfo/DeviceInfo.xm"
