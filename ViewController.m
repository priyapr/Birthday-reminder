//
//  ViewController.m
//  Birthday
//
//  Created by Priya on 22/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "ViewController.h"
#import "Choose.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize birthdaybutton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reminderbutton:(UIButton *)sender {
    Choose *ch =[[Choose alloc]initWithNibName:@"Choose" bundle:nil];
    [self presentViewController:ch animated:YES completion:nil];
}
@end
