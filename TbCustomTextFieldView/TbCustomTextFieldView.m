//
//  CustomTextField.m
//  CustomAlertView
//
//  Created by Tb on 2019/12/3.
//  Copyright © 2019 Tb. All rights reserved.
//

#import "TbCustomTextFieldView.h"
#import <Masonry.h>

@interface TbCustomTextFieldView()
@property (nonatomic, strong)UIView *line;
@property (nonatomic, strong)UITextField *textField;
@property (nonatomic, copy) NSString *PlaceholderText;
@property (nonatomic, strong)UIColor *placeHolderTextColor;

@end

@implementation TbCustomTextFieldView

- (instancetype)initWithLeftView:(UIView *)leftView rightView:(UIView *)rightView placeHolderText:(NSString *)placeHolderText placeHolderTextColor:(UIColor *)placeHolderTextColor
{
    if (self = [super init]) {
        _leftCustomView = leftView;
        _rightCustomView = rightView;
        _placeHolderTextColor = placeHolderTextColor;
        _PlaceholderText = placeHolderText;
        [self stupUI];
    }
    return self;
}

- (void)stupUI {
    [self addSubview:self.line];
    [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self);
        make.height.mas_equalTo(0.5);
    }];
    
    [self addSubview:self.textField];
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self);
        //make.top.mas_equalTo(self);
        make.bottom.mas_equalTo(self.line.mas_top).mas_offset(-7.5);
    }];
   
   
    if (self.leftCustomView) {
        self.textField.leftView = self.leftCustomView;
        _textField.leftViewMode = UITextFieldViewModeAlways; //此处用来设置leftview现实时机
    }
    
    if (self.rightCustomView) {
        self.textField.rightView = self.rightCustomView;
        _textField.rightViewMode = UITextFieldViewModeAlways; //此处用来设置leftview现实时机
    }
    
    self.textField.placeholder = _PlaceholderText;
    self.textField.textColor = [UIColor whiteColor];
    self.textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.PlaceholderText attributes:@{NSForegroundColorAttributeName: self.placeHolderTextColor}];

}
- (void)setIsSecureTextEntry:(BOOL)isSecureTextEntry
{
    _isSecureTextEntry = isSecureTextEntry;
    _textField.secureTextEntry = isSecureTextEntry;
}
- (void)setKeyboardType:(UIKeyboardType)keyboardType {
    _keyboardType = keyboardType;
    self.textField.keyboardType = keyboardType;
}

- (UITextField *)textField
{
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.tintColor = [UIColor whiteColor];
    }
    return _textField;
}

- (UIView *)line {
    if (!_line) {
        _line = [UIView new];
        _line.backgroundColor = [UIColor whiteColor];
    }
    return _line;
}



@end
