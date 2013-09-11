#import "IntroModel.h"

@implementation IntroModel

- (id) initWithTitle:(NSString*)title description:(NSString*)desc image:(NSString*)imageText {
    self = [super init];
    if(self != nil) {
        self.titleText = title;
        self.descriptionText = desc;
        self.image = [UIImage imageNamed:imageText];
    }
    return self;
}

@end
