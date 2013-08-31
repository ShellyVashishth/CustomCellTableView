//
//  ViewController.h
//  CustomCellTableview
//
//  Created by admin on 17/07/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *tblview;
    NSArray *array;
    NSArray *Array1;
    NSArray *Imagearray;
}
@end
