#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface RootViewController : UITableViewController <NSFetchedResultsControllerDelegate>
{
	NSFetchedResultsController *fetchedResultsController;
}

- (IBAction)settings:(id)sender;
- (IBAction)needhelp:(id)sender;
- (IBAction)xxxxxxxx:(id)sender;

@end
