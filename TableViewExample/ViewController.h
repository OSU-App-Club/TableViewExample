//
//  ViewController.h
//  TableViewExample
//
//  Created by Chris Vanderschuere on 10/19/12.
//  Copyright (c) 2012 Chris Vanderschuere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

//Create a UITableView property that we will connect up in IB
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
