//
//  ViewController.m
//  TableViewExample
//
//  Created by Chris Vanderschuere on 10/19/12.
//  Copyright (c) 2012 Chris Vanderschuere. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tableView = _tableView; //This gives you the getter/setter needed for the "." notation

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
     We do everything in Interface Builder
     */
}


//TableViews DataSource Methods
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    /* Useful when you have complicated views with muliple tableviews
    if ([tableView isEqual:self.tableView]) {
        return 3;
    }
    */
        return 3;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Load in the cell from IB that you gave the identifier "exampleCell"
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"exampleCell"];
    
    //Customize Cell here...
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    cell.textLabel.text = [[NSArray arrayWithObjects:@"Test 1",@"Test 2",@"Test 3", nil] objectAtIndex:indexPath.row];
    
    return cell;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
