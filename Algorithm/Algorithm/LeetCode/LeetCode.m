//
//  LeetCode.m
//  Algorithm
//
//  Created by ShawnDu on 2016/12/29.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import "LeetCode.h"

@implementation LeetCode

+ (NSArray *)twoSum:(NSArray *)nums targetNumber:(int)target {
    NSMutableArray *output = [[NSMutableArray alloc] initWithCapacity:2];
    NSMutableDictionary *dict = [NSMutableDictionary new];
    for (int i = 0; i < nums.count; i++) {
        int num = [nums[i] intValue];
        id numberToFind = dict[@(target - num)];
        if (numberToFind) {
            [output addObject:numberToFind];
            [output addObject:@(i)];
            return output;
        }
        dict[@(num)] = @(i);
    }
    return nil;
}

+ (NSInteger)lengthOfLongestSubstring:(NSString *)string {
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:256];
    NSInteger maxLen = 0;
    NSInteger start = -1;
    for (NSInteger i = 0; i < string.length; i++) {
        NSString *tmpStr = [NSString stringWithFormat:@"%c",[string characterAtIndex:i]];
        id find = dict[tmpStr];
        if (find) {
            start = [dict[tmpStr] integerValue];;
        }
        [dict setValue:@(i) forKey:tmpStr];
        maxLen = MAX(maxLen, i - start);
    }
    return maxLen;
}
@end
