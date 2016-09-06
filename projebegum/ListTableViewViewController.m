//
//  ListTableViewViewController.m
//  projebegum
//
//  Created by BegumPasinli on 15.08.2016.
//  Copyright © 2016 BegumPasinli. All rights reserved.
//

#import "ListTableViewViewController.h"
#import "UserModel.h"

@implementation ListTableViewViewController 



@synthesize array;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Set the Label text with the selected recipe
   // arrayLabel.text = array;
    UserModel * model = [[UserModel alloc]init];
    model = (UserModel *) array;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"cell1";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    UserModel *model = (UserModel *) [array objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@\n%@\n%@ ",model.isim,model.soyIsim,model.eMail];
    return cell;
}



@end
