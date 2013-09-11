//
//  ZQIntroModel.m
//  PathIntro
//
//  Created by cncn on 13-9-11.
//  Copyright (c) 2013年 Dmitry Kondratyev. All rights reserved.
//

#import "ZQIntroModel.h"

@implementation ZQIntroModel

- (id)initWithFontImageView:(UIImageView *)imageview backImage:(NSString *)bgImageText;
{
    return [self initWithFontImageView:imageview backImage:bgImageText button:nil];
}

- (id)initWithFontImageView:(UIImageView *)imageview backImage:(NSString *)bgImageText button:(UIButton *)button;
{
    self = [super init];
    if (self) {
        self.frontImageView = imageview;
        self.image = [UIImage imageNamed:bgImageText];
        self.button = button;
    }
    return self;
}

@end
