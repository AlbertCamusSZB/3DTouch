//
//  HomeDetailController.m
//  3DTouch
//
//  Created by rookie on 2017/10/18.
//  Copyright © 2017年 mamahome. All rights reserved.
//

#import "HomeDetailController.h"

@interface HomeDetailController () 
@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) UILabel *nameLabel;
@end

@implementation HomeDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.imgView];
    
    self.nameLabel.frame = CGRectMake(0, CGRectGetMaxY(self.imgView.frame)+15, 375, 50);
    [self.view addSubview:self.nameLabel];
}
-(void)setName:(NSString *)name{
    self.nameLabel.text = name;
}

-(UIImageView *)imgView{
    if (_imgView == nil) {
        _imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"WechatIMG25"]];
        _imgView.frame = CGRectMake((self.view.frame.size.width -640*0.4)*0.5, 64+30 , 640*0.4,799*0.4);
    }
    return _imgView;
}
-(UILabel *)nameLabel{
    if (_nameLabel == nil) {
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.font = [UIFont systemFontOfSize:20];
        _nameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _nameLabel;
}






- (NSArray<id<UIPreviewActionItem>> *)previewActionItems {
    // setup a list of preview actions
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"关注" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"关注");
    }];
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"收藏" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"收藏");
    }];
    
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"分享" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"分享");
    }];
    
    NSArray *actions = @[action1,action2,action3];
    
       return actions;
}

@end
