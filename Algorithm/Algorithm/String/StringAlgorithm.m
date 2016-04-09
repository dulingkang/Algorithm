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
    NSInteger offsetToIndexZero = from;
    while (from < to)
    {
        characters[to - offsetToIndexZero] = [s characterAtIndex:from];
        characters[from - offsetToIndexZero] = [s characterAtIndex:to];
        from++;
        to--;
    }
    if (from == to) {
        characters[from - offsetToIndexZero] = [s characterAtIndex:from];
    }
    return [NSString stringWithCharacters:characters length:length];
}

+ (BOOL)stringContain:(NSString *)longStr shortString:(NSString *)shortStr {
    NSInteger hash = 0;
    for (NSInteger i = 0; i < longStr.length; i++) {
        hash |= (1 << ([longStr characterAtIndex:i] - 'A'));
    }
    for (NSInteger i = 0; i < shortStr.length; i++) {
        if ((hash & (1 << ([shortStr characterAtIndex:i] - 'A'))) == 0) {
            return NO;
        }
    }
    return YES;
}
#pragma mark - test
+ (void)testLeftRotateString {
    NSString *str = @"abcdef";
    NSString * s = [self leftRotateString:str endIndex:5 splitIndex:2];
    NSLog(@"leftRotateString:%@",s);
}

+ (void)testStringContain {
    NSString *longStr = @"BCD";
    NSString *shortStr = @"E";
    [self stringContain:longStr shortString:shortStr];
}

@end
