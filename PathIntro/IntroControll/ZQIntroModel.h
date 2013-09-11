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
@property (nonatomic, strong) UIImage *frontImage;

@end
