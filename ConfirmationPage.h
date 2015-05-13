//
//  ConfirmationPage.h
//  Birthday
//
//  Created by Priya on 04/05/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfirmationPage : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *mytextview;
@property (strong, nonatomic) IBOutlet UIButton *editbutton;
@property (strong, nonatomic) IBOutlet UIButton *savebutton;


- (IBAction)editbutton:(UIButton *)sender;

- (IBAction)savebutton:(UIButton *)sender;


@end
