//
//  LeetCodeSolver.h
//  leetCode
//
//  Created by Ton on 2021/7/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeetCodeSolver : NSObject

/// 调用解题方法
/// @param num leetCode 上对应的题号
- (void)solutionWithNum:(NSInteger)num;


/// 子类调用
- (void)solution;

@end

NS_ASSUME_NONNULL_END
