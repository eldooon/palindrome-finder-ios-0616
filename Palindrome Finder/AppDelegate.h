//
//  AppDelegate.h
//  Palindrome Finder
//
//  Created by Eldon Chan on 6/14/16.
//  Copyright © 2016 Eldon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(BOOL)isStringPalindrome:(NSString *)string;


@end

