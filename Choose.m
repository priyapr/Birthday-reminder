//
//  Choose.m
//  Birthday
//
//  Created by Priya on 22/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "Choose.h"
#import "ConfirmationPage.h"

@interface Choose ()
{
    NSArray *country;
    NSArray *India;
    NSArray *newzeland;
    NSArray *china;
    NSArray *australia;
    NSArray *england;
    NSMutableArray *cities;
    NSString *club;
    NSUserDefaults *birthdayinfo;
}

@end

@implementation Choose
@synthesize myImage, nametext, dobtext, mydate, locationtext, statetext,savebutton,myPicker,mobilenotext;
- (void)viewDidLoad {
    [super viewDidLoad];
    [myImage setImage:[UIImage imageNamed:@"gift2.jpg"]];
    cities =[[NSMutableArray alloc]init];
    country= [[NSArray alloc]initWithObjects:@"India",@"New zeland", @"China", @"Australia", @"England", nil];
    India= [[NSArray alloc]initWithObjects:@"tamilnadu",@"kerala",@"maharastra",@"bangalore",@"andhra pradesh", nil];
newzeland=[[NSArray alloc]initWithObjects:@"auckland",@"hutt city",@"porirua",@"manukan",@"nelson", nil];
    china=[[NSArray alloc]initWithObjects:@"shangai",@"beijing", @"tianjin",@"guagzhou",@"shenzhen", nil];
    australia=[[NSArray alloc]initWithObjects:@"sydney",@"melbourne",@"brisbane",@"perth",@"adelaide", nil];
    england=[[NSArray alloc]initWithObjects:@"norwich",@"salford",@"wells",@"derby",@"chester", nil];
    nametext.text=[birthdayinfo valueForKey:@"Name"];
    dobtext.text=[birthdayinfo valueForKey:@"Date Of Birth"];
    mobilenotext.text=[birthdayinfo valueForKey:@"Contact no"];
    locationtext.text=[birthdayinfo valueForKey:@"Country"];
    statetext.text=[birthdayinfo valueForKey:@"State"];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component ==0) {
        return country.count;
    }
    else if(component == 1)
    {
        return cities.count;
        
    }
    return 0;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    
    if (component ==0) {
        return [country objectAtIndex:row];
    }
    else if(component ==1)
    {
        return [cities objectAtIndex:row];
    }
    
        return 0;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
   
    if (component ==0) {
        locationtext.text=[country objectAtIndex:row];
        if (row == 0) {
            [cities removeAllObjects];
            [cities addObjectsFromArray:India];
            [myPicker reloadAllComponents];
            
        }
        if (row == 1) {
            [cities removeAllObjects];
            [cities addObjectsFromArray:newzeland];
            [myPicker reloadAllComponents];
            
        }
        if (row == 2) {
            [cities removeAllObjects];
            [cities addObjectsFromArray:china];
            [myPicker reloadAllComponents];
            
        }
        if (row == 3) {
            [cities removeAllObjects];
            [cities addObjectsFromArray:australia];
            [myPicker reloadAllComponents];
            
        }
        if (row == 4) {
            [cities removeAllObjects];
            [cities addObjectsFromArray:england];
            [myPicker reloadAllComponents];
            
        }

    }
       
    else if(component ==1)
    {
        
            statetext.text=[cities objectAtIndex:row];
    }

    
}


- (IBAction)datepic:(UIDatePicker *)sender {
    NSDate *birth = [mydate date];
    NSDateFormatter *df=[[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd/MM/yyyy"];
    dobtext.text=[df stringFromDate:birth];
}


- (IBAction)savebutton:(UIButton *)sender {
    if (nametext.text.length < 1) {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Enter the name" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }
    else if (dobtext.text.length < 1) {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Select the Date of birth" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }
    else if (mobilenotext.text.length < 1) {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Enter the contact Number" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }

    else if (locationtext.text.length < 1) {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Select the country" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }
    else if (statetext.text.length < 1) {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Select the State" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }
    else
    {
        birthdayinfo=[NSUserDefaults standardUserDefaults];
        [birthdayinfo setObject:nametext.text forKey:@"Name"];
        [birthdayinfo setObject:dobtext.text forKey:@"Date Of Birth"];
        [birthdayinfo setObject:locationtext.text forKey:@"Country"];
        [birthdayinfo setObject:statetext.text forKey:@"State"];
        [birthdayinfo setObject:mobilenotext.text forKey:@"Contact no"];
        
        ConfirmationPage *page=[[ConfirmationPage alloc]initWithNibName:@"ConfirmationPage" bundle:nil];
        [self presentViewController:page animated:YES completion:nil];
        
    }
  /*  nametext.text=@"";
    dobtext.text=@"";
    locationtext.text=@"";
    statetext.text=@"";
    mobilenotext.text=@""; */
    


}


@end
