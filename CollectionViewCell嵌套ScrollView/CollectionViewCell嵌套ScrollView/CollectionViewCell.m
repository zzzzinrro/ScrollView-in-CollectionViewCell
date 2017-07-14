//
//  CollectionViewCell.m
//  CollectionViewCell嵌套ScrollView
//
//  Created by zinrro on 2017/7/13.
//  Copyright © 2017年 GJC. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenWidth/3)];
        scrollView.backgroundColor = [UIColor whiteColor];
        [self addSubview:scrollView];
        self.scrollView = scrollView;
    }
    return self;
}

- (void)setDict:(NSDictionary *)dict {
    for (int i = 0; i < [dict[@"num"] intValue]; i++) {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(KScreenWidth/3*i, 0, KScreenWidth/3, KScreenWidth/3)];
        button.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0];
        button.tag = [dict[@"tag"] intValue]*100+i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.scrollView addSubview:button];
    }
    self.scrollView.contentSize = CGSizeMake(KScreenWidth/3*[dict[@"num"] intValue], KScreenWidth/3);
}

- (void)buttonClick:(UIButton *)button {
    [self.delegate buttonClickWithTag:button];
}

@end
