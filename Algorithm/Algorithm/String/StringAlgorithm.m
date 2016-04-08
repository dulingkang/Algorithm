//
//  StringAlgorithm.m
//  Algorithm
//
//  Created by Shawn.Du on 16/4/1.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import "StringAlgorithm.h"

@implementation StringAlgorithm

+ (NSString *)leftRotateString:(NSString *)s endIndex:(int)end splitIndex:(int)split {

    NSString *s1 = [self reverseString:s from:0 to:split];
    NSString *s2 = [self reverseString:s from:split + 1 to:end];
    NSString *s3 = [s1 stringByAppendingString:s2];
    return [self reverseString:s3 from:0 to:end];
}

+ (NSString *)reverseString:(NSString *)s from:(int)from to:(int)to {
    NSInteger length = abs(to - from) + 1;
    unichar characters[length];
    while (from < to)
    {
        characters[to] = [s characterAtIndex:from];
        characters[from] = [s characterAtIndex:to];
        from++;
        to--;
    }
    if (from == to) {
        characters[from] = [s characterAtIndex:from];
    }
    return [NSString stringWithCharacters:characters length:length];
}

#pragma mark - test
+ (void)testLeftRotateString {
    NSString *str = @"abcdef";
    NSString * s = [self leftRotateString:str endIndex:5 splitIndex:2];
    NSLog(@"leftRotateString:%@",s);
}

@end
