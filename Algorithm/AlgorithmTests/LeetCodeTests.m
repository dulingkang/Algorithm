//
//  LeetCodeTests.m
//  Algorithm
//
//  Created by ShawnDu on 2017/1/3.
//  Copyright © 2017年 com.shawn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LeetCode.h"

@interface LeetCodeTests : XCTestCase

@end

@implementation LeetCodeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTwoSum {
    NSArray *array = @[@(3),@(2),@(6)];
    NSArray *outputArray = [LeetCode twoSum:array targetNumber:8];
    NSArray *targetArray = @[@(1),@(2)];
    for (int i = 0; i < outputArray.count; i++) {
        XCTAssertEqual(outputArray[i], targetArray[i]);
    }
}

- (void)testLengthOfLongestSubstring {
    NSString *str = @"pwwkew";
    NSInteger len = [LeetCode lengthOfLongestSubstring:str];
    XCTAssertEqual(len, 3);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
