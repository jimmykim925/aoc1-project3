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
  NSMutableString *appendedMutableString;
  NSString *returnStringValue;
  NSString *alertMutableString;
  UIAlertView *alertResult;
}

- (int)add:(NSInteger)addNum1 addNum2:(NSInteger)addNum2 sum:(NSInteger)sum;
- (BOOL)compare:(NSInteger)boolNum1 boolNum2:(NSInteger)boolNum2;
- (NSString*) append:(NSString*)string1 string2:(NSString *)string2;
- (NSString*) displayAlertWithString:(NSString *)displayString;


@end
