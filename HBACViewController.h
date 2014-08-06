#import <AddressBookUI/AddressBookUI.h>

@interface HBACViewController : UIViewController <ABNewPersonViewControllerDelegate> {
	UINavigationController *navigationController;
}

+ (void)eventTriggered;
+ (void)dismiss;
@end
