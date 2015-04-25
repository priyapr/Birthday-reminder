//
//  Choose.m
//  Birthday
//
//  Created by Priya on 22/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "Choose.h"

@interface Choose ()
{
    NSArray *country;
    NSArray *India;
    NSArray *newzeland;
    NSArray *china;
    NSArray *australia;
    NSArray *england;
    NSString *club;
}

@end

@implementation Choose
@synthesize myImage, nametext, dobtext, mydate, locationtext, statetext,savebutton;
- (void)viewDidLoad {
    [super viewDidLoad];
    [myImage setImage:[UIImage imageNamed:@"gift2.jpg"]];
    country= [[NSArray alloc]initWithObjects:@"India",@"New zeland", @"China", @"Australia", @"England", nil];
    India= [[NSArray alloc]initWithObjects:@"tamilnadu",@"kerala",@"maharastra",@"bangalore",@"andhra pradesh", nil];
newzeland=[[NSArray alloc]initWithObjects:@"auckland",@"hutt city",@"porirua",@"manukan",@"nelson", nil];
    china=[[NSArray alloc]initWithObjects:@"shangai",@"beijing", @"tianjin",@"guagzhou",@"shenzhen", nil];
    australia=[[NSArray alloc]initWithObjects:@"sydney",@"melbourne",@"brisbane",@"perth",@"adelaide", nil];
    england=[[NSArray alloc]initWithObjects:@"norwich",@"salford",@"wells",@"derby",@"chester", nil];
    
    
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
    else
    {
        if ([club isEqualToString:@"India"]) {
            return [India count];
        }
        if ([club isEqualToString:@"New zeland"]) {
            return [newzeland count];
        }
        if ([club isEqualToString:@"China"]) {
            return [china count];
        }
        if ([club isEqualToString:@"Australia"]) {
            return [australia count];
        }
        if ([club isEqualToString:@"England"]) {
            return [england count];
        }



        
    }
    return 0;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    
    if (component ==0) {
        return [country objectAtIndex:row];
    }
    else
    {
        if ([club isEqualToString:@"India"]) {
            return [India objectAtIndex:row];
        }
        if ([club isEqualToString:@"New zeland"]) {
            return [newzeland objectAtIndex:row];
        }
        if ([club isEqualToString:@"China"]) {
            return [china objectAtIndex:row];
        }
        if ([club isEqualToString:@"Australia"]) {
            return [australia objectAtIndex:row];
        }
        if ([club isEqualToString:@"England"]) {
            return [england objectAtIndex:row];
        }
        
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
        club=[[NSString alloc] initWithFormat:@"%@" , [country objectAtIndex:row]];
        [pickerView reloadComponent:1];
        locationtext.text=[country objectAtIndex:row];
    }
    else
    {
        if ([club isEqualToString:@"India"]) {
            statetext.text=[India objectAtIndex:row];
        }
        if ([club isEqualToString:@"New zeland"]) {
            statetext.text=[newzeland objectAtIndex:row];
        }
        if ([club isEqualToString:@"China"]) {
            statetext.text=[china objectAtIndex:row];
        }
        if ([club isEqualToString:@"Australia"]) {
            statetext.text=[australia objectAtIndex:row];
        }
        if ([club isEqualToString:@"England"]) {
            statetext.text=[england objectAtIndex:row];
        }
        
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
    else if (locationtext.text.length < 1) {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Select the country" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }
    else if (statetext.text.length < 1) {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Select the city" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }
    else
    {
        UIAlertView *addalert =[[UIAlertView alloc]initWithTitle:nil message:@"Successfully added" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [addalert show];
    }
    nametext.text=@"";
    dobtext.text=@"";
    locationtext.text=@"";
    statetext.text=@"";
    


}


@end
