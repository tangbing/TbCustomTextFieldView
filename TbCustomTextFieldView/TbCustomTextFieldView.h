//
//  CustomTextField.h
//  CustomAlertView
//
//  Created by Tb on 2019/12/3.
//  Copyright © 2019 Tb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TbCustomTextFieldView : UIView

@property (nonatomic, assign) BOOL isShowLeftView;
@property (nonatomic, assign) BOOL isShowRightView;
@property (nonatomic, strong) UIView *leftCustomView;
@property (nonatomic, strong) UIView *rightCustomView;
@property (nonatomic, strong, readonly)UITextField *textField;
@property (nonatomic, assign) BOOL isSecureTextEntry;
@property (nonatomic, assign) UIKeyboardType keyboardType;

- (instancetype)initWithLeftView:(nullable UIView *)leftView rightView:(nullable UIView *)rightView placeHolderText:(NSString *)placeHolderText placeHolderTextColor:(UIColor *)placeHolderTextColor;
@end

NS_ASSUME_NONNULL_END
