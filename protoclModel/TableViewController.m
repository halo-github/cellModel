//
//  TableViewController.m
//  protoclModel
//
//  Created by lf on 17/6/9.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "TableViewController.h"
#import "cellModel.h"
#import "CellFactory.h"
#import "Cell1.h"
#import "Cell2.h"
#import "Cell3.h"
@interface TableViewController ()
@property (nonatomic, copy)NSArray* dataArr;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        UIView* head = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20)];
    self.tableView.tableHeaderView = head;
    self.tableView.frame = CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height - 20);
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
//    [self.tableView registerClass:[Cell1 class] forCellReuseIdentifier:@"Cell1"];
//    [self.tableView registerClass:[Cell2 class] forCellReuseIdentifier:@"Cell2"];
//    [self.tableView registerClass:[Cell3 class] forCellReuseIdentifier:@"Cell3"];
    self.tableView.allowsSelection = YES;
    [self.tableView registerNib:[UINib nibWithNibName:@"Cell1" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell1"];
    [self.tableView registerNib:[UINib nibWithNibName:@"Cell2" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell2"];
    [self.tableView registerNib:[UINib nibWithNibName:@"Cell3" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell3"];
    [self.tableView registerNib:[UINib nibWithNibName:@"Cell4" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell4"];
    _dataArr = @[@"Cell1",@"Cell2",@"Cell3",@"Cell4",@"Cell1",@"Cell2",@"Cell3",@"Cell4"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return _dataArr.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//面向协议。。。
    NSString* ident = _dataArr[indexPath.row];
    return [CellFactory cellHeightWithReuseIdentifier:ident];

//另一种方法
//    UIView* view = [[NSBundle mainBundle] loadNibNamed:ident owner:nil options:nil][0];
//    return view.bounds.size.height;

}
- (IBAction)jumptTo:(id)sender {
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* ident = _dataArr[indexPath.row];
   UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:ident forIndexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString* ident = _dataArr[indexPath.row];
    id obj = nil;
    if ([ident isEqualToString:@"Cell1"]) {
        obj = @"hekkkkkk";
    }
    if ([ident isEqualToString:@"Cell2"]) {
        UIColor *color = [UIColor cyanColor];
        obj = color;
    }
    if ([ident isEqualToString:@"Cell3"]) {
        Cell2 *cll = [Cell2 new];
        obj = cll;
    }
    if ([ident isEqualToString:@"Cell4"]) {
        UIViewController *v4 = [[UIViewController alloc] init];
        v4.view.backgroundColor = [UIColor cyanColor];
        obj = v4;
    }
    [CellFactory commitCellCallbackWithReuseIdentifier:ident Object:obj];
//    [self.navigationController pushViewController:VC animated:YES];
}





/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
