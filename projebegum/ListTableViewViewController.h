//
//  ListTableViewViewController.h
//  projebegum
//
//  Created by BegumPasinli on 15.08.2016.
//  Copyright © 2016 BegumPasinli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListTableViewViewController : UIViewController <UITableViewDelegate , UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray * array;

@end
