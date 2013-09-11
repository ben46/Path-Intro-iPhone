//
//  ZQIntroModel.m
//  PathIntro
//
//  Created by cncn on 13-9-11.
//  Copyright (c) 2013年 Dmitry Kondratyev. All rights reserved.
//

#import "ZQIntroModel.h"

@implementation ZQIntroModel

- (id)initWithFontImage:(NSString *)imageText backImage:(NSString *)bgImageText;
{
    return [self initWithFontImage:imageText backImage:bgImageText button:nil];
}

- (id)initWithFontImage:(NSString *)imageText backImage:(NSString *)bgImageText button:(UIButton *)button;
{
    self = [super init];
    if (self) {
        self.frontImage = [UIImage imageNamed:imageText];
        self.image = [UIImage imageNamed:bgImageText];
        self.button = button;
    }
    return self;
}

@end
