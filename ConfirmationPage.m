//
//  ConfirmationPage.m
//  Birthday
//
//  Created by Priya on 04/05/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "ConfirmationPage.h"
#import "Choose.h"

@interface ConfirmationPage ()
{
    NSUserDefaults *birthdayinfo;
}

@end

@implementation ConfirmationPage
@synthesize mytextview,editbutton,savebutton;

- (void)viewDidLoad {
    birthdayinfo=[NSUserDefaults standardUserDefaults];
    [super viewDidLoad];
    mytextview.text=[NSString stringWithFormat:@" Name: %@\n Date Of Birth: %@\n Contact No: %@\n Counry: %@\n State: %@\n", [birthdayinfo valueForKey:@"Name"], [birthdayinfo valueForKey:@"Date Of Birth"],[birthdayinfo valueForKey:@"Contact no"], [birthdayinfo valueForKey:@"Country"], [birthdayinfo valueForKey:@"State"]  ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)editbutton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)savebutton:(UIButton *)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"Successfully Saved" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}
@end
