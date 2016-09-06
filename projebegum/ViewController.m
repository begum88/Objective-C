//
//  ViewController.m
//  projebegum
//
//  Created by BegumPasinli on 15.08.2016.
//  Copyright © 2016 BegumPasinli. All rights reserved.
//

#import "ViewController.h"
#import "ListTableViewViewController.h"
#import "UserModel.h"

@interface ViewController ()


@end

@implementation ViewController{
    NSMutableArray * mutableArray;
}
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)kaydet:(id)sender {
    mutableArray = [[NSMutableArray alloc] init];
    UserModel *userModel = [[UserModel alloc] init];
    
    userModel.isim = self.isim.text;
    userModel.soyIsim = self.soyad.text;
    userModel.eMail = self.email.text;
    
    [mutableArray addObject:userModel];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ikinciScreenId"]) {
        ListTableViewViewController *destViewController = segue.destinationViewController;
        destViewController.array = mutableArray;        
    }
}




@end
