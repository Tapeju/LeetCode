//
//  LeetCodeSolver1.m
//  leetCode
//
//  Created by Ton on 2021/7/26.
//

#import "LeetCodeSolver1.h"

//给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。
//
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
//
//你可以按任意顺序返回答案。
//
//
//
//示例 1：
//
//输入：nums = [2,7,11,15], target = 9
//输出：[0,1]
//解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1] 。
//示例 2：
//
//输入：nums = [3,2,4], target = 6
//输出：[1,2]
//示例 3：
//
//输入：nums = [3,3], target = 6
//输出：[0,1]
//
//
//提示：
//
//2 <= nums.length <= 104
//-109 <= nums[i] <= 109
//-109 <= target <= 109
//只会存在一个有效答案
//进阶：你可以想出一个时间复杂度小于 O(n2) 的算法吗？


@implementation LeetCodeSolver1

- (void)solution {
    NSLog(@"%@", self);
    NSArray *nums = @[@7, @11, @15, @2];
    NSInteger target = 9;
    
    NSArray *result = [self twoSum:nums target:target];
    NSLog(@"结果:%@", result);
}

//- (NSArray *)twoSum:(NSArray<NSNumber *> *)nums target:(NSInteger)target {
//    NSLog(@"入参, nums:%@, target:%ld", nums, target);
//    NSLog(@"暴力双重for循环解题...");
//
//    for (int i = 0; i < nums.count; i ++) {
//        for (int j = 0; j < nums.count; j ++) {
//            if (j == i) {
//                continue;
//            } else {
//                if (nums[i].intValue + nums[j].intValue == target) {
//                    return @[@(i), @(j)];
//                }
//            }
//        }
//    }
//    return @[];
//}


- (NSArray *)twoSum:(NSArray<NSNumber *> *)nums target:(NSInteger)target {
    NSLog(@"入参, nums:%@, target:%ld", nums, target);
    NSLog(@"使用字典解题");
    NSMutableDictionary *tempDict = [NSMutableDictionary dictionary];
    
    for (NSInteger i = 0; i < nums.count; i++) {
        [tempDict setValue:@(i) forKey:[NSString stringWithFormat:@"%ld", [nums[i] integerValue]]];
        NSString *keyString = [NSString stringWithFormat:@"%ld", target - nums[i].integerValue];
        NSNumber *index1 = tempDict[keyString];
        if (index1) {
            return @[@(i), index1];
        }
    }
    return @[];
}

- (NSString *)description {
    return @"题号:1, 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出和为目标值target的那 两个 整数，并返回它们的数组下标。你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。你可以按任意顺序返回答案。";
}

@end
