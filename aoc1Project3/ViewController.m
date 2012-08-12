//
//  ViewController.m
//  aoc1Project3
//
//  Created by Jimmy Kim on 8/11/12.
//  Copyright (c) 2012 Jimmy Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  int returnAddValue = [self add:22 addNum2:7 sum:0];
  
  int returnCompareValue = [self compare:21 boolNum2:21];
  
  returnStringValue = [self append:@"hi" string2:@"there"];
  
  alertMutableString = [self displayAlertWithString:returnStringValue];
  
  
  
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// ADD Function, takes two NSInteger and returns the result of an addition of them
- (int)add:(NSInteger)addNum1 addNum2:(NSInteger)addNum2 sum:(NSInteger)sum
{
  sum = addNum1 + addNum2;
  NSLog(@"1st integer: %d, 2nd integer: %d, Sum: %d", addNum1, addNum2, sum);
  
  return sum;
}

// BOOL function Compare, takes two NSInteger values returns YES or NO based on if they are equal
- (BOOL)compare:(NSInteger)boolNum1 boolNum2:(NSInteger)boolNum2
{
  if (boolNum1 == boolNum2){
    return YES;
  } else {
    return NO;
  }
}

// Append function, takes two NSStrings and returns a new NSString containing appended strings using NSMutableString
- (NSString*) append:(NSString*)string1 string2:(NSString *)string2
{

  // Mutable String used to append strings parameters
  appendedMutableString = [[NSMutableString alloc] init];
  
  [appendedMutableString appendString:string1];
  [appendedMutableString appendString:@" "];
  [appendedMutableString appendString:string2];
  
  return appendedMutableString;
}

// DisplayAlertWithString takes a parameter NSString, alerts using string
- (NSString *) displayAlertWithString:(NSString *)displayString
{
  alertResult = [[UIAlertView alloc] initWithTitle: @"Appended String" message: displayString delegate: self cancelButtonTitle: @"Ok" otherButtonTitles: nil];
 
  if(alertResult !=nil){
    [alertResult show];
  }
  
  return 0;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}

@end
