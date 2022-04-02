//
//  ViewController.m
//  test
//
//  Created by davidli on 2022/3/17.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIView *v;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _v = [[UIView alloc] initWithFrame:self.view.frame];
    _v.backgroundColor = [UIColor blackColor];
    UILabel *label = [[UILabel alloc] initWithFrame:_v.bounds];
    label.text = @"呼吸灯";
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:50];
    label.textColor = [UIColor whiteColor];
    [_v addSubview:label];
    [self.view addSubview:_v];
    
    [self backtocolor];

}

-(void)backtocolor{
    
    
    [UIView animateWithDuration:1 animations:^{
        _v.alpha = 0;
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1 animations:^{
            _v.alpha = 1;
        } completion:^(BOOL finished) {
            [self backtocolor];
        }];
    }];}


@end
