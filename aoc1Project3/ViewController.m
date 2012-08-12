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
  // Calls Add function w/ two parameters
  int returnAddValue = [self add:22 addNum2:7 sum:0];
  
  // Converts int to NSNumber
  sumOfNumbers = [[NSNumber alloc] init];
  sumOfNumbers = [NSNumber numberWithInt:returnAddValue];
  
  // Converts NSNumber to NSString
  convertedToString = [[NSString alloc] init];
  convertedToString = [sumOfNumbers stringValue];
  
  // Calls Alert function, with two parameters
  [self displayAlert:convertedToString displayText:@"The Number is"];
  
  
  int returnCompareValue = [self compare:21 boolNum2:21];
  
  // Calls Append function to append two string values
  returnStringValue = [[NSString alloc] init];
  returnStringValue = [self append:@"hi" string2:@"there"];
  
  // Calls Alert function, with two parameters
  [self displayAlert:returnStringValue displayText:@"Appended String is"];
  
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

// ADD Function, takes two NSInteger and returns the result of an addition of them
- (int)add:(NSInteger)addNum1 addNum2:(NSInteger)addNum2 sum:(NSInteger)sum
{
  sum = addNum1 + addNum2;

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
- (NSString *) displayAlert:(NSString *)displayMessage displayText:(NSString *)displayText
{
  alertResult = [[UIAlertView alloc] initWithTitle: displayText message: displayMessage delegate: self cancelButtonTitle: @"Ok" otherButtonTitles: nil];
 
  if(alertResult !=nil){
    [alertResult show];
  }
  
  return 0;
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
