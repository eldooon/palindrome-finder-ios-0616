//
//  AppDelegate.m
//  Palindrome Finder
//
//  Created by Eldon Chan on 6/14/16.
//  Copyright © 2016 Eldon. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Racecar Test - Yes, a palindrome
    NSString *palindromeWord1 = @"Racecar";
    [self isStringPalindrome:palindromeWord1];
    
    //Eldon Test - Not a palindrome
    NSString *palindromeWord2 = @"Eldon";
    [self isStringPalindrome:palindromeWord2];
    
    //Malayalam Test - Yes a palindrome
    NSString *palindromeWord3 = @"Malayalam";
    [self isStringPalindrome:palindromeWord3];

    return YES;
}

-(BOOL)isStringPalindrome:(NSString *)string{
    
    NSMutableString *reverseString = [[NSMutableString alloc]init];
    NSString *lowercasestring = [string lowercaseString];
    
    for (NSInteger i = string.length-1 ; i > -1; i--){

        [reverseString appendFormat:@"%c", [lowercasestring characterAtIndex:i]];
    }
    
    if ([reverseString isEqualToString:lowercasestring]){
        NSLog(@"YES!!! %@: is a Palindrome!", string);
        return YES;
    }
    
    NSLog(@"%@: is NOT a Palindrome", string);
    return NO;
    
}

@end
