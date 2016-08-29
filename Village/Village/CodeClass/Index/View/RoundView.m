//
//  RoundView.m
//  Village
//
//  Created by Twx on 16/8/29.
//  Copyright © 2016年 盛辰. All rights reserved.
//

#import "RoundView.h"

@implementation RoundView

-(void)awakeFromNib{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 10;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
