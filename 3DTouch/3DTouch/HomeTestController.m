//
//  HomeTestController.m
//  3DTouch
//
//  Created by rookie on 2017/10/18.
//  Copyright © 2017年 mamahome. All rights reserved.
//

#import "HomeTestController.h"

@interface HomeTestController ()
@property (nonatomic, strong) UILabel *lb;
@property (nonatomic, strong) UILabel *lbForce;
@end

@implementation HomeTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}





-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *arrayTouch = [touches allObjects];
    UITouch *touch = (UITouch *)[arrayTouch lastObject];
    if (touch.view.tag == 105) {
        NSLog(@"Began压力 ＝ %f",touch.force);
        _lbForce.text = [NSString stringWithFormat:@"压力%f",touch.force];
//        _bottom.constant = ((UITouch *)[arrayTouch lastObject]).force * 100;
    }
    
}

//按住移动or压力值改变时的回调
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *arrayTouch = [touches allObjects];
    UITouch *touch = (UITouch *)[arrayTouch lastObject];
    //通过tag确定按压的是哪个view，注意：如果按压的是label，将label的userInteractionEnabled属性设置为YES
    if (touch.view.tag == 105) {
        NSLog(@"move压力 ＝ %f",touch.force);
        //红色背景的label显示压力值
        _lbForce.text = [NSString stringWithFormat:@"压力%f",touch.force];
        //红色背景的label上移的高度＝压力值*100
//        _bottom.constant = ((UITouch *)[arrayTouch lastObject]).force * 100;
    }
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *arrayTouch = [touches allObjects];
    UITouch *touch = (UITouch *)[arrayTouch lastObject];
    if (touch.view.tag == 105) {
        NSLog(@"End压力 ＝ %f",touch.force);
        _lbForce.text = [NSString stringWithFormat:@"压力%f",touch.force];
//        _bottom.constant = ((UITouch *)[arrayTouch lastObject]).force * 100;
    }
    
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *arrayTouch = [touches allObjects];
    UITouch *touch = (UITouch *)[arrayTouch lastObject];
    if (touch.view.tag == 105) {
        NSLog(@"Cancel压力 ＝ %f",touch.force);
        NSLog(@"压力所在view的tag ＝ %li",touch.view.tag);
        _lbForce.text = [NSString stringWithFormat:@"压力%f",touch.force];
//        _bottom.constant = ((UITouch *)[arrayTouch lastObject]).force * 100;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
