

#import "ExampleViewController.h"
#import "ZQIntroModel.h"
#import "ZQIntroView.h"
#import "ZQIntroControll.h"

@implementation ExampleViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.wantsFullScreenLayout = YES;
        self.modalPresentationStyle = UIModalPresentationFullScreen;
    }
    return self;
}

- (void) loadView {
    [super loadView];
    if (0) {
        // with text
        IntroModel *model1 = [[IntroModel alloc] initWithTitle:@"Example 1" description:@"Hi, my name is Dmitry" image:@"intro_back_0"];
        
        IntroModel *model2 = [[IntroModel alloc] initWithTitle:@"Example 2" description:@"Several sample texts in Old, Middle, Early Modern, and Modern English are provided here for practice, reference, and reading." image:@"intro_back_1"];
        
        IntroModel *model3 = [[IntroModel alloc] initWithTitle:@"Example 3" description:@"The Tempest is the first play in the First Folio edition (see the signature) even though it is a later play (namely 1610) than Hamlet (1600), for example. The first page is reproduced here" image:@"intro_back_2"];
        
        self.view = [[IntroControll alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) pages:@[model1, model2, model3]];
    } else {
        // with image
        UIImageView *imgView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_front_0"]];
        UIImageView *imgView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_front_1"]];
        UIImageView *imgView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_front_2"]];

        ZQIntroModel *model1 = [[ZQIntroModel alloc] initWithFontImageView:imgView1 backImage:@"intro_back_0"];
        ZQIntroModel *model2 = [[ZQIntroModel alloc] initWithFontImageView:imgView2 backImage:@"intro_back_1"];
        UIImage *image = [UIImage imageNamed:@"intro_btn"];
        UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 910/2, image.size.width, image.size.height)];
        [loginBtn setBackgroundImage:[UIImage imageNamed:@"intro_btn"] forState:UIControlStateNormal];
        [loginBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        ZQIntroModel *model3 = [[ZQIntroModel alloc] initWithFontImageView:imgView3 backImage:@"intro_back_2" button:loginBtn];
        
        self.view = [[ZQIntroControll alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) pages:@[model1, model2, model3]];
    }

}

- (void)back
{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


@end
