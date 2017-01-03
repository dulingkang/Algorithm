//
//  LeetCode.h
//  Algorithm
//
//  Created by ShawnDu on 2016/12/29.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeetCode : NSObject


/**
 数组中找出两个数想加，值==target，把这两个 index 输出为一个数组。
 输入[3,2,6], target = 8, 2+6=8, 输出[1,2].
 @param nums 输入数组
 @param targetNumber 想加等于的数
 @return 返回的数组
 */
+ (NSArray *)twoSum:(NSArray *)nums targetNumber:(int)target;

/**
 找出最长的无重复字母的子字符串的长度
 输入：pwwkew， 输出3，最长的子字符串，为wke或kew。
 @param string 输入的字符串
 @return 最长的子字符串的长度
 */
+ (NSInteger)lengthOfLongestSubstring:(NSString *)string;
@end
