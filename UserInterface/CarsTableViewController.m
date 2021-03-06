//
//  CarsTableViewController.m
//  iBurn
//
//  Created by Jeffrey Johnson on 2009-01-25.
//  Copyright 2009 Burning Man Earth. All rights reserved.
//

#import "CarsTableViewController.h"


@implementation CarsTableViewController

- (id)init {
	if( self = [super init]) {
		[self.tabBarItem initWithTitle:self.title image:[UIImage imageNamed:@"art_cars2.png"] tag:NULL];
		//self.title=@"Mutant Veh";
		self.title = @"Art Cars";
	}
  return self;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *CellIdentifier = @"Cell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
  }
  return cell;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}


@end

