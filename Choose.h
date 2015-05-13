//
//  Choose.h
//  Birthday
//
//  Created by Priya on 22/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Choose : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *myImage;
@property (strong, nonatomic) IBOutlet UITextField *nametext;
@property (strong, nonatomic) IBOutlet UITextField *dobtext;
@property (strong, nonatomic) IBOutlet UIDatePicker *mydate;
@property (strong, nonatomic) IBOutlet UITextField *locationtext;

@property (strong, nonatomic) IBOutlet UITextField *statetext;
@property (strong, nonatomic) IBOutlet UIButton *savebutton;

@property (strong, nonatomic) IBOutlet UIPickerView *myPicker;

@property (strong, nonatomic) IBOutlet UITextField *mobilenotext;


- (IBAction)datepic:(UIDatePicker *)sender;

- (IBAction)savebutton:(UIButton *)sender;



@end
