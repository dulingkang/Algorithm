//
//  main.m
//  Algorithm
//
//  Created by dulingkang on 16/3/19.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AlgorithmHelper.h"
#import "StringAlgorithm.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        int a[6] = {2,6,3,14,8,4};
        int len = sizeof(a)/sizeof(int);
        [AlgorithmHelper selectSort:a len:len];
        for (int i = 0; i < len; i++) {
            NSLog(@"%d",a[i]);
        }
        
        [StringAlgorithm testLeftRotateString];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
