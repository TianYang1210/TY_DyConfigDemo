//
//  Link_TabbarConfigViewController.m
//  TY_DynamicIcon_Demo
//
//  Created by Dnion on 2018/6/14.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import "Link_TabbarConfigViewController.h"
#import "Link_ConfigFile.h"
#import "Link_TabbarController.h"

#import "AppDelegate.h"


@interface Link_TabbarConfigViewController ()

@property (nonatomic, strong) UIButton *typeA_Btn;
@property (nonatomic, strong) UIButton *typeB_Btn;
@property (nonatomic, strong) UIButton *typeC_Btn;


@end

@implementation Link_TabbarConfigViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.typeA_Btn];
    self.typeA_Btn.frame = CGRectMake(10, 60, TYSCREENWIDTH - 20, 60);
    
    [self.view addSubview:self.typeB_Btn];
    self.typeB_Btn.frame = CGRectMake(10, _typeA_Btn.ctBottom + 60, TYSCREENWIDTH - 20, 60);
    
    [self.view addSubview:self.typeC_Btn];
    self.typeC_Btn.frame = CGRectMake(10, _typeB_Btn.ctBottom + 60, TYSCREENWIDTH - 20, 60);
    
}


-(UIButton *)typeA_Btn{
    if (!_typeA_Btn) {
        _typeA_Btn = [[UIButton alloc] init];
        [_typeA_Btn setTitle:@"TypeA" forState:UIControlStateNormal];
        [_typeA_Btn setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_typeA_Btn addTarget:self action:@selector(configClick:) forControlEvents:UIControlEventTouchUpInside];
        [_typeA_Btn setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _typeA_Btn.layer.borderWidth = 1;
        _typeA_Btn.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _typeA_Btn.layer.cornerRadius = 6;//
        _typeA_Btn.layer.masksToBounds = NO;
        _typeA_Btn.tag = 1234 + 0;
    }
    return _typeA_Btn;
}

-(UIButton *)typeB_Btn{
    if (!_typeB_Btn) {
        _typeB_Btn = [[UIButton alloc] init];
        [_typeB_Btn setTitle:@"TypeB" forState:UIControlStateNormal];
        [_typeB_Btn setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_typeB_Btn addTarget:self action:@selector(configClick:) forControlEvents:UIControlEventTouchUpInside];
        [_typeB_Btn setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _typeB_Btn.layer.borderWidth = 1;
        _typeB_Btn.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _typeB_Btn.layer.cornerRadius = 6;//
        _typeB_Btn.layer.masksToBounds = NO;
        _typeB_Btn.tag = 1234 + 1;
    }
    return _typeB_Btn;
}

-(UIButton *)typeC_Btn{
    if (!_typeC_Btn) {
        _typeC_Btn = [[UIButton alloc] init];
        [_typeC_Btn setTitle:@"TypeC" forState:UIControlStateNormal];
        [_typeC_Btn setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_typeC_Btn addTarget:self action:@selector(configClick:) forControlEvents:UIControlEventTouchUpInside];
        [_typeC_Btn setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _typeC_Btn.layer.borderWidth = 1;
        _typeC_Btn.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _typeC_Btn.layer.cornerRadius = 6;//
        _typeC_Btn.layer.masksToBounds = NO;
        _typeC_Btn.tag = 1234 + 2;
    }
    return _typeC_Btn;
}

-(void)configClick:(UIButton *)sender{
    
    switch (sender.tag - 1234) {
        case 0:
             [LINKDefaults setObject:@[@"Tab_Icon_A_1",@"Tab_Icon_A_2",@"Tab_Icon_A_3",@"Tab_Icon_A_4"] forKey:TabBarIcons];
            break;
        case 1:
             [LINKDefaults setObject:@[@"Tab_Icon_A",@"Tab_Icon_B",@"Tab_Icon_C",@"Tab_Icon_D"] forKey:TabBarIcons];
            break;
            
        default:
            break;
    }
    
    LINKSynchronize;
    
//    [self popoverPresentationController];
    [self.navigationController popViewControllerAnimated:YES];
    
    [[AppDelegate sharedManager] configRootViewController];
    
    
    
}


@end