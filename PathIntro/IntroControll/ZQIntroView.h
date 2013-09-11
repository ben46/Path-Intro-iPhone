//
//  ZQIntroView.h
//  PathIntro
//
//  Created by cncn on 13-9-11.
//  Copyright (c) 2013年 Dmitry Kondratyev. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZQIntroModel;
@interface ZQIntroView : UIView
- (id)initWithFrame:(CGRect)frame model:(ZQIntroModel *)model;

@end