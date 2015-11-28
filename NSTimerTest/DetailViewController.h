//
//  DetailViewController.h
//  NSTimerTest
//
//  Created by pgpb.padilla on 11/28/15.
//  Copyright © 2015 pgpb.padilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

