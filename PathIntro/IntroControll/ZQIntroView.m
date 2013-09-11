//
//  ZQIntroView.m
//  PathIntro
//
//  Created by cncn on 13-9-11.
//  Copyright (c) 2013年 Dmitry Kondratyev. All rights reserved.
//

#import "ZQIntroView.h"
#import "ZQIntroModel.h"

@implementation ZQIntroView

- (id)initWithFrame:(CGRect)frame model:(ZQIntroModel *)model
{
    self = [super initWithFrame:frame];
    if (self) {
    
        UIImageView *imgView = [[UIImageView alloc] initWithImage:model.frontImage];
        CGRect f = imgView.frame;
        f.origin.y = 0;
        f.origin.x = 0;
        imgView.frame = f;
        [self addSubview:imgView];
        
        [self addSubview:model.button];
        
    }
    return self;
}
@end
