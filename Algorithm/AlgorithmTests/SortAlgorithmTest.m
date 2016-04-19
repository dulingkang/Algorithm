//
//  SortAlgorithmTest.m
//  Algorithm
//
//  Created by dulingkang on 16/4/19.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SortAlgorithm.h"

@interface SortAlgorithmTest : XCTestCase

@end

@implementation SortAlgorithmTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSelectSort {
    int a[6] = {2,6,3,14,8,4};
    int len = sizeof(a)/sizeof(int);
    [SortAlgorithm selectSort:a len:len];
    int b[6] = {2,3,4,6,8,14};
    for (NSInteger index = 0; index < 6; index++) {
        XCTAssertEqual(a[index], b[index]);
    }
}

- (void)testBubbleSort {
    int a[6] = {2,6,3,14,8,4};
    int len = sizeof(a)/sizeof(int);
    [SortAlgorithm bubbleSort:a len:len];
    int b[6] = {2,3,4,6,8,14};
    for (NSInteger index = 0; index < 6; index++) {
        XCTAssertEqual(a[index], b[index]);
    }
}


- (void)testSelectSortPerformance {
    [self measureBlock:^{
        int a[20] = {2,6,3,14,8,4,19,33,103,21,60,75,82,91,15,16,19,24,29,38};
        int len = sizeof(a)/sizeof(int);
        [SortAlgorithm selectSort:a len:len];
    }];
}

- (void)testBubbleSortPerformance {
    [self measureBlock:^{
        int a[20] = {2,6,3,14,8,4,19,33,103,21,60,75,82,91,15,16,19,24,29,38};
        int len = sizeof(a)/sizeof(int);
        [SortAlgorithm bubbleSort:a len:len];
    }];
}


@end
