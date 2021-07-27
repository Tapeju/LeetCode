//
//  LeetCodeSolver3.m
//  leetCode
//
//  Created by Ton on 2021/7/27.
//

#import "LeetCodeSolver3.h"

//给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。
//
//
//
//示例 1:
//
//输入: s = "abcabcbb"
//输出: 3
//解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
//示例 2:
//
//输入: s = "bbbbb"
//输出: 1
//解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
//示例 3:
//
//输入: s = "pwwkew"
//输出: 3
//解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
//     请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
//示例 4:
//
//输入: s = ""
//输出: 0
//
//
//提示：
//
//0 <= s.length <= 5 * 104
//s 由英文字母、数字、符号和空格组成

@implementation LeetCodeSolver3

- (void)solution {
    NSLog(@"%@", self);
    
    NSString *s = @"abcabcbb";
    NSLog(@"结果:%ld", [self lengthOfLongestSubstring:s]);
}

- (NSInteger)lengthOfLongestSubstring:(NSString *)s {
    NSLog(@"入参, s:%@", s);
    NSLog(@"滑动窗口解题");
    
    if (s.length == 0) return 0;
    int res = 0;
    NSMutableDictionary<NSString *, NSNumber *> *dic = @{}.mutableCopy;
    for (int start = 0, end = 0; end < s.length; end ++) {
        NSString *subString = [s substringWithRange:NSMakeRange(end, 1)];
        
        if ([[dic allKeys] containsObject:subString]) {
            start = MAX(dic[subString].intValue, start);
        }
        res = MAX(res, end - start + 1);
        dic[subString] = @(end + 1);
    }
    
    return res;
}


- (NSString *)description {
    return @"3.无重复字符的最长子串  给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。";
}

@end
