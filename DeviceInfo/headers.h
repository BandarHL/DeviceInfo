//
//  headers.h
//  DeviceInfo

typedef NS_ENUM(NSInteger, PSCellType) {
    PSGroupCell,
    PSLinkCell,
    PSLinkListCell,
    PSListItemCell,
    PSTitleValueCell,
    PSSliderCell,
    PSSwitchCell,
    PSStaticTextCell,
    PSEditTextCell,
    PSSegmentCell,
    PSGiantIconCell,
    PSGiantCell,
    PSSecureEditTextCell,
    PSButtonCell,
    PSEditTextViewCell
};

@interface PSSpecifier : NSObject {
@public
    SEL action;
}
+ (instancetype)preferenceSpecifierNamed:(NSString *)identifier target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(PSCellType)cellType edit:(Class)edit;
+ (instancetype)emptyGroupSpecifier;
+ (instancetype)groupSpecifierWithName:(NSString *)name;
@property (nonatomic) SEL buttonAction;
@property (nonatomic) SEL confirmationAction;
@property (nonatomic) SEL confirmationCancelAction;
@property (nonatomic) SEL controllerLoadAction;
@end

@interface PSListController : UIViewController
{
    NSMutableArray *_specifiers;
}
- (NSMutableArray *)loadSpecifiersFromPlistName:(NSString *)name target:(PSListController *)target;
- (NSMutableArray *)loadSpecifiersFromPlistName:(NSString *)name target:(PSListController *)target bundle:(NSBundle *)bundle;

- (NSInteger)indexForIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)indexForRow:(NSInteger)row inGroup:(NSInteger)group;

- (NSInteger)indexOfGroup:(NSInteger)group;
- (NSInteger)indexOfSpecifier:(PSSpecifier *)specifier;
- (NSInteger)indexOfSpecifierID:(NSString *)specifierID;

- (NSIndexPath *)indexPathForIndex:(NSInteger)index;
- (NSIndexPath *)indexPathForSpecifier:(PSSpecifier *)specifier;

- (void)addSpecifier:(PSSpecifier *)specifier;
- (void)addSpecifier:(PSSpecifier *)specifier animated:(BOOL)animated;
- (void)addSpecifiersFromArray:(NSArray *)specifiers;
- (void)addSpecifiersFromArray:(NSArray *)specifiers animated:(BOOL)animated;

- (void)insertSpecifier:(PSSpecifier *)specifier afterSpecifier:(PSSpecifier *)afterSpecifier;
- (void)insertSpecifier:(PSSpecifier *)specifier afterSpecifier:(PSSpecifier *)afterSpecifier animated:(BOOL)animated;
- (void)insertSpecifier:(PSSpecifier *)specifier afterSpecifierID:(NSString *)specifierID;
- (void)insertSpecifier:(PSSpecifier *)specifier afterSpecifierID:(NSString *)specifierID animated:(BOOL)animated;
- (void)insertSpecifier:(PSSpecifier *)specifier atEndOfGroup:(NSInteger)groupIndex;
- (void)insertSpecifier:(PSSpecifier *)specifier atEndOfGroup:(NSInteger)groupIndex animated:(BOOL)animated;
- (void)insertSpecifier:(PSSpecifier *)specifier atIndex:(NSInteger)index;
- (void)insertSpecifier:(PSSpecifier *)specifier atIndex:(NSInteger)index animated:(BOOL)animated;

- (void)insertContiguousSpecifiers:(NSArray *)specifiers afterSpecifier:(PSSpecifier *)specifier;
- (void)insertContiguousSpecifiers:(NSArray *)specifiers afterSpecifier:(PSSpecifier *)specifier animated:(BOOL)animated;
- (void)insertContiguousSpecifiers:(NSArray *)specifiers afterSpecifierID:(NSString *)specifierID;
- (void)insertContiguousSpecifiers:(NSArray *)specifiers afterSpecifierID:(NSString *)specifierID animated:(BOOL)animated;
- (void)insertContiguousSpecifiers:(NSArray *)specifiers atEndOfGroup:(NSInteger)groupIndex;
- (void)insertContiguousSpecifiers:(NSArray *)specifiers atEndOfGroup:(NSInteger)groupIndex animated:(BOOL)animated;
- (void)insertContiguousSpecifiers:(NSArray *)specifiers atIndex:(NSInteger)index;
- (void)insertContiguousSpecifiers:(NSArray *)specifiers atIndex:(NSInteger)index animated:(BOOL)animated;
@end
