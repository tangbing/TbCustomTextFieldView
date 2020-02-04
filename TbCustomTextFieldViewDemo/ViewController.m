//
//  ViewController.m
//  CustomAlertView
//
//  Created by Tb on 2019/10/11.
//  Copyright © 2019 Tb. All rights reserved.
//

#import "ViewController.h"
#import "TbCustomTextFieldView.h"
#import <Masonry.h>

#define ATColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define iPhone6ScreenWidth  375
#define iPhone6ScreenHeight 667
#define ScreenWidth       ([UIScreen mainScreen].bounds.size.width)
#define ScreenHeight      ([UIScreen mainScreen].bounds.size.height)
#define IS_58INCH_SCREEN (ScreenWidth == 568.0)

#define WidthScale ((ScreenWidth) * 1.0 / (iPhone6ScreenWidth))
#define HeightScale ((ScreenHeight) * 1.0 / (iPhone6ScreenHeight))

//传入数据，直接返回适配后的数据
#define FMScreenScaleFrom(num) lround((WidthScale) * (num))
#define WIDTHSCALE_FROM(num) lround((WidthScale) * (num))
#define HEIGHTSCALE_FROM(num) lround((HeightScale) * (num))
#define FMFloorScale(num) floor((WidthScale) * (num))

@interface ViewController ()
@property(nonatomic, strong) TbCustomTextFieldView *customTextFieldView;
@property(nonatomic, strong) TbCustomTextFieldView *bottomTbCustomTextFieldView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
       
    TbCustomTextFieldView *customTextFieldView = [[TbCustomTextFieldView alloc] initWithLeftView:[self setupCustomView] rightView:nil placeHolderText:@"sksksksk" placeHolderTextColor:[UIColor purpleColor]];
    self.customTextFieldView = customTextFieldView;
    [self.view addSubview:customTextFieldView];
    [customTextFieldView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).offset(20);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        make.centerY.mas_equalTo(self.view);
        make.height.mas_equalTo(48);
    }];
    
    
    TbCustomTextFieldView *bottomCustomTextFieldView = [[TbCustomTextFieldView alloc] initWithLeftView:[self setupCustomView] rightView:nil placeHolderText:@"sksksksk" placeHolderTextColor:[UIColor redColor]];
    self.bottomTbCustomTextFieldView = bottomCustomTextFieldView;
    [self.view addSubview:bottomCustomTextFieldView];
    [bottomCustomTextFieldView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).offset(20);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        make.top.mas_equalTo(self.customTextFieldView.mas_bottom).offset(25);
        make.height.mas_equalTo(48);
    }];
    
}
- (UIView *)setupCustomView {
    UIView *leftView = [UIView new];
    UIImageView *leftImage = [UIImageView new];
    [leftImage setImage:[UIImage imageNamed:@"login_user_icon"]];
    [leftView addSubview:leftImage];
    [leftImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@25);
        make.top.bottom.equalTo(leftView);
        make.left.equalTo(leftView.mas_left).offset(0);
    }];

    UIView *line = [UIView new];
    line.backgroundColor = [UIColor whiteColor];
    [leftView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(1);
        make.top.bottom.equalTo(leftView);
        make.left.mas_equalTo(leftImage.mas_right).offset(4);
        make.right.mas_equalTo(leftView.mas_right).offset(-12);
    }];
    return leftView;
}


@end
