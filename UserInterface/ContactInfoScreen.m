//
//  ContactInfoScreen.m
//  iBurn
//
//  Created by Admin on 8/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ContactInfoScreen.h"
#import "PageViewer.h"

@implementation ContactInfoScreen


- (void)mailComposeController:(MFMailComposeViewController*)controller  
          didFinishWithResult:(MFMailComposeResult)result 
                        error:(NSError*)error {
  if (result == MFMailComposeResultSent) {
  	
  }
  [self dismissModalViewControllerAnimated:YES];
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
  [super loadView];
	self.title = @"About the App";
}


#pragma mark Table view methods

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *) indexPath {
	return 67;
	
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 3;
}


- (NSIndexPath*)tableView:(UITableView *)tb willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  return indexPath;
 }


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  
  switch (indexPath.row) {
		case 0:
      ;
      MFMailComposeViewController* controller = [[[MFMailComposeViewController alloc] init]autorelease];
      controller.mailComposeDelegate = self;
      [controller setSubject:@"iBurn 2011 Feedback"];
      [controller setToRecipients:[NSArray arrayWithObject:@"iburn@gaiagps.com"]];
      [self presentModalViewController:controller animated:YES];
			break;
		case 1:
      ;
      NSString *urlString = @"http://github.com/trailbehind/iBurn-2011";
      PageViewer *p = [[[PageViewer alloc]initForString:urlString]autorelease];
      [self.navigationController pushViewController:p animated:YES];
			break;
		case 2:
      ;
      NSString *urlString2 = @"http://www.burningmap.org";
      PageViewer *p2 = [[[PageViewer alloc]initForString:urlString2]autorelease];
      [self.navigationController pushViewController:p2 animated:YES];
			break;
		default:
			break;
	}
  
  
}



- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *MyIdentifier = @"MyIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:MyIdentifier] autorelease];
	}
  switch (indexPath.row) {
		case 0:
			cell.textLabel.text = @"Contact us";
			cell.detailTextLabel.text = @"Email the team at iburn@gaiagps.com.";
			cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
			break;
		case 1:
			cell.textLabel.text = @"Download the source code";
			cell.detailTextLabel.text = @"You can download and build the code after gates open.";
			cell.detailTextLabel.numberOfLines = 0;
			cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
			break;
		case 2:
			cell.textLabel.text = @"View the map online";
			cell.detailTextLabel.text = @"The map is also available on the web at www.burningmap.org.";
			cell.detailTextLabel.numberOfLines = 0;
			cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
			break;
		default:
			break;
	}
  
  return cell;		
}


@end