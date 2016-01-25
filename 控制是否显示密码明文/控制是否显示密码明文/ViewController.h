//
//  ViewController.h
//  控制是否显示密码明文
//
//  Created by ChenXin on 16/1/25.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)switchChanged:(UISwitch *)sender;


@end

