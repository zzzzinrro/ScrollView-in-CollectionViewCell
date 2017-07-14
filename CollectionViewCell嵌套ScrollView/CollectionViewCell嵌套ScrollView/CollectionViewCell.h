//
//  CollectionViewCell.h
//  CollectionViewCell嵌套ScrollView
//
//  Created by zinrro on 2017/7/13.
//  Copyright © 2017年 GJC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define KScreenWidth [UIScreen mainScreen].bounds.size.width
#define KScreenHeight [UIScreen mainScreen].bounds.size.height

@protocol CollectionViewCellDelegate <NSObject>
-(void)buttonClickWithTag:(UIButton*)button;
@end

@interface CollectionViewCell : UICollectionViewCell
@property (nonatomic, assign) id <CollectionViewCellDelegate>delegate;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) NSDictionary *dict;
@end
