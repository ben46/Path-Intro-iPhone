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

        [self addSubview:model.frontImageView];
        
        [self addSubview:model.button];
        
    }
    return self;
}
@end
