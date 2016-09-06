//
//  ViewController.h
//  projebegum
//
//  Created by BegumPasinli on 15.08.2016.
//  Copyright © 2016 BegumPasinli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)kaydet:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *isim;
@property (weak, nonatomic) IBOutlet UITextField *soyad;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end


