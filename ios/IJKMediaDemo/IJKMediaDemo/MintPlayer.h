//
//  MintPlayer.h
//  MintLivePlayer
//
//  Created by 谢金宝 on 2017/3/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MintPlayer : NSObject
+ (instancetype)sharedMintPlayer;

- (void) playWithContentUrl:(NSString *)urlString withView:(UIView *)view;
- (void) stop;
- (void) play;
@end
