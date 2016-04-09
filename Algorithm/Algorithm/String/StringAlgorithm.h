//
//  StringAlgorithm.h
//  Algorithm
//
//  Created by Shawn.Du on 16/4/1.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringAlgorithm : NSObject

+ (NSString *)leftRotateString:(NSString *)s endIndex:(int)end splitIndex:(int)split;
+ (BOOL)stringContain:(NSString *)longStr shortString:(NSString *)shortStr;

+ (void)testLeftRotateString;
+ (void)testStringContain;
@end
