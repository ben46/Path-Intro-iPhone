//
//  ZQIntroControll.m
//  PathIntro
//
//  Created by cncn on 13-9-11.
//  Copyright (c) 2013年 Dmitry Kondratyev. All rights reserved.
//

#import "ZQIntroControll.h"

@implementation ZQIntroControll

- (id)initWithFrame:(CGRect)frame pages:(NSArray*)pagesArray
{
    self = [super initWithFrame:frame];
    if(self != nil) {
        
        //Initial Background images
        
        self.backgroundColor = [UIColor blackColor];
        
        backgroundImage1 = [[UIImageView alloc] initWithFrame:frame];
        [backgroundImage1 setContentMode:UIViewContentModeScaleAspectFill];
        [backgroundImage1 setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
        [self addSubview:backgroundImage1];
        
        backgroundImage2 = [[UIImageView alloc] initWithFrame:frame];
        [backgroundImage2 setContentMode:UIViewContentModeScaleAspectFill];
        [backgroundImage2 setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
        [self addSubview:backgroundImage2];
        
        //Initial shadow
        UIImageView *shadowImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"shadow.png"]];
        shadowImageView.contentMode = UIViewContentModeScaleToFill;
        shadowImageView.frame = CGRectMake(0, frame.size.height-300, frame.size.width, 300);
        [self addSubview:shadowImageView];
        
        //Initial ScrollView
        scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
        scrollView.backgroundColor = [UIColor clearColor];
        scrollView.pagingEnabled = YES;
        scrollView.showsHorizontalScrollIndicator = NO;
        scrollView.showsVerticalScrollIndicator = NO;
        scrollView.delegate = self;
        [self addSubview:scrollView];
        
        //Initial PageView
        pageControl = [[UIPageControl alloc] init];
        pageControl.numberOfPages = pagesArray.count;
        [pageControl sizeToFit];
        [pageControl setCenter:CGPointMake(frame.size.width/2.0, frame.size.height-50)];
        [self addSubview:pageControl];
        
        //Create pages
        pages = pagesArray;
        
        scrollView.contentSize = CGSizeMake(pages.count * frame.size.width, frame.size.height);
        
        currentPhotoNum = -1;
        
        //insert TextViews into ScrollView
        for(int i = 0; i <  pages.count; i++) {
            IntroView *view = [[IntroView alloc] initWithFrame:frame model:[pages objectAtIndex:i]];
            view.frame = CGRectOffset(view.frame, i*frame.size.width, 0);
            [scrollView addSubview:view];
        }
        
        //start timer
        timer =  [NSTimer scheduledTimerWithTimeInterval:3.0
                                                  target:self
                                                selector:@selector(tick)
                                                userInfo:nil
                                                 repeats:YES];
        
        [self initShow];
    }
    
    return self;
}

@end
