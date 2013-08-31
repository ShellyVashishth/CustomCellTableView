//
//  CustomCell.h
//  CustomCellTableview
//
//  Created by admin on 17/07/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    IBOutlet UILabel *lblcolor;
    IBOutlet UILabel *lblsize;
    IBOutlet UIImageView *imgView;
    IBOutlet UIImageView *imgView1;
}
-(void)setValues:(NSString*)ColorValue  SizeValue:(NSString*)sizevalue Image:(UIImage*)imageValue  Image1:(UIImage*)imageValue1;
@end
