//
//  AlgorithmHelper.m
//  Algorithm
//
//  Created by dulingkang on 16/3/19.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import "AlgorithmHelper.h"

@implementation AlgorithmHelper

+ (void)bubbleSort:(int [])array len:(int)len {
    
    if (len < 1) {
        return ;
    }
    int count = 0;
    for (int i = 0; i < len - 1; i++) {
        for (int j = len - 1; j > i; j--) {
            if (array[j] < array[j-1]) {
                int tmp = array[j-1];
                array[j-1] = array[j];
                array[j] = tmp;
                count++;
            }
        }
    }
    NSLog(@"bubbleCount:%d", count);
}

+ (void)selectSort:(int [])array len:(int)len {
    if (len < 1) {
        return ;
    }
    int count = 0;
    for (int i = 0; i < len - 1; i++) {
        int min = i;
        for (int j = i + 1; j< len; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            count++;
        }
        if (min != i) {
            int tmp = array[i];
            array[i] = array[min];
            array[min] = tmp;
        }
    }
    NSLog(@"selectCount:%d", count);
}

@end
