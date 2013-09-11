//
//  ZQIntroModel.h
//  PathIntro
//
//  Created by cncn on 13-9-11.
//  Copyright (c) 2013年 Dmitry Kondratyev. All rights reserved.
//

#import "IntroModel.h"

@interface ZQIntroModel : IntroModel

- (id)initWithFontImage:(NSString *)imageText backImage:(NSString *)bgImageText;
- (id)initWithFontImage:(NSString *)imageText backImage:(NSString *)bgImageText button:(UIButton *)button;

@property (nonatomic, strong) UIImage *frontImage;
@property (nonatomic, strong) UIButton *button;

@end
