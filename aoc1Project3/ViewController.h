//
//  ViewController.h
//  aoc1Project3
//
//  Created by Jimmy Kim on 8/11/12.
//  Copyright (c) 2012 Jimmy Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
  // Create pointers to NSNumber, NSString, NSMutableString, UIAlertView
  NSNumber *sumOfNumbers;
  NSString *convertedToString;
  NSMutableString *appendedMutableString;
  NSString *returnStringValue;
  NSString *displayAlertWithString;
  UIAlertView *alertResult;
  NSNumber *convertBooltoNSNumber;
  NSString *convertBooltoString;
  NSNumber *convertBooltoNSNumber2;
  NSString *convertBooltoString2;
  NSString *inputValuesString;
}

  // Create pointers to functions 
- (int)add:(NSInteger)addNum1 addNum2:(NSInteger)addNum2 sum:(NSInteger)sum;
- (BOOL)compare:(NSInteger)boolNum1 boolNum2:(NSInteger)boolNum2;
- (NSString*) append:(NSString*)string1 string2:(NSString *)string2;
- (NSString*) displayAlert:(NSString *)displayMessage displayText:(NSString *)displayText;


@end
