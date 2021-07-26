//
//  LeetCodeSolver.m
//  leetCode
//
//  Created by Ton on 2021/7/26.
//

#import "LeetCodeSolver.h"


@interface LeetCodeSolver ()


@end

@implementation LeetCodeSolver

- (void)solutionWithNum:(NSInteger)num {
    NSString *subClass = [NSString stringWithFormat:@"LeetCodeSolver%ld", num];
    LeetCodeSolver *solver = [[NSClassFromString(subClass) alloc] init];
    if (solver) {
        [solver solution];
    } else {
        [self solution];
    }
    
}

- (void)solution {
    NSLog(@"%@", self);
    NSLog(@"基类解题...");
}

- (NSString *)description {
    return @"对应的题号没有找到, 默认调用基类方法";
}

@end
