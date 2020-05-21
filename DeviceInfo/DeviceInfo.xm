#import <UIKit/UIKit.h>
#import "BHUtilities.h"
#import "headers.h"

%config(generator=internal)

@interface PSTableCell : UITableViewCell
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2 specifier:(id)arg3;
@end

@interface PSGAboutController : PSListController
@end

//NSArray<PSSpecifier *> *Specifier;

%hook PSGAboutController
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 9;
    } else {
        return %orig;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 5) {
            PSTableCell *cell = [[%c(PSTableCell) alloc] initWithStyle:1 reuseIdentifier:@"udid" specifier:nil];
            cell.textLabel.text = @"UDID";
            cell.detailTextLabel.text = [BHUtilities getUDID];
            return cell;
        }
        if (indexPath.row == 6) {
            PSTableCell *cell = [[%c(PSTableCell) alloc] initWithStyle:1 reuseIdentifier:@"macAdd" specifier:nil];
            cell.textLabel.text = @"wifi MacAddress";
            cell.detailTextLabel.text = [BHUtilities getMacAddress];
            return cell;
        }
        if (indexPath.row == 7) {
            PSTableCell *cell = [[%c(PSTableCell) alloc] initWithStyle:1 reuseIdentifier:@"BlomacAdd" specifier:nil];
            cell.textLabel.text = @"bluetooth MacAddress";
            cell.detailTextLabel.text = [BHUtilities getbluetoothMacAddress];
            return cell;
        }
        if (indexPath.row == 8) {
            PSTableCell *cell = [[%c(PSTableCell) alloc] initWithStyle:1 reuseIdentifier:@"devicetype" specifier:nil];
            cell.textLabel.text = @"Device Type";
            cell.detailTextLabel.text = [BHUtilities getProductType];
            return cell;
        }
        return %orig;
    } else {
        return %orig;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
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
        return %orig;
    } else {
        return %orig;
    }
}
//- (void)viewDidAppear:(_Bool)arg1 {
//    %orig;
//    PSSpecifier *udid = [objc_getClass("PSSpecifier") preferenceSpecifierNamed:@"UDID" target:self set:@selector(testSEL) get:nil detail:@"hi" cell:PSTitleValueCell edit:nil];
//    PSSpecifier *test = [objc_getClass("PSSpecifier") preferenceSpecifierNamed:@"Test" target:self set:nil get:nil detail:nil cell:PSButtonCell edit:nil];
//    test.buttonAction = @selector(testSEL);
//    Specifier = @[udid, test];
//    [self insertContiguousSpecifiers:Specifier afterSpecifierID:@"NAME_CELL_ID"];
//}
//%new - (void)testSEL {
//    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert"
//                               message:@"This is an alert."
//                               preferredStyle:UIAlertControllerStyleAlert];
//
//    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
//                                   handler:^(UIAlertAction * action) {}];
//
//    [alert addAction:defaultAction];
//    [self presentViewController:alert animated:YES completion:nil];
//}
%end
