//
//  MasterViewController.h
//  ObjC Exercises
//
//  Created by Pablo Padilla on 5/11/14.
//
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
