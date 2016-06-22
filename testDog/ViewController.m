//
//  ViewController.m
//  testDog
//
//  Created by Evan on 2016/6/22.
//  Copyright © 2016年 Evan. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"
#import "SessionManager.h"
#import "TransData.h"
#import "animalData.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,NSURLSessionDelegate>
{
    NSArray *arr_Result;
    NSData *data_Result;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerNib:[UINib nibWithNibName:@"Cell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    [self getResultData];
//    NSString *urlString = @"http://data.coa.gov.tw/Service/OpenData/AnimalOpenData.aspx?$top=1000&$skip=0&$filter=animal_kind+like+%E7%8B%97";
//    NSData *data = [SessionManager getDataWithURL:urlString AndDelgate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getResultData
{
    NSURLSessionConfiguration *defaultConfigObject = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: defaultConfigObject delegate: self delegateQueue: [NSOperationQueue mainQueue]];
    
    NSURL * url = [NSURL URLWithString:@"http://data.coa.gov.tw/Service/OpenData/AnimalOpenData.aspx?$top=1000&$skip=0&$filter=animal_kind+like+%E7%8B%97"];
    
    NSURLSessionDataTask * dataTask = [defaultSession dataTaskWithURL:url
                                                    completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                        if(error == nil)
                                                        {
                                                            arr_Result = [TransData transData:data];
                                                            [self xxx];
                                                        }
                                                        
                                                    }];
    
    [dataTask resume];
}

-(void)xxx
{
    for (int i = 0; arr_Result.count; i++)
    {
        
        [animalData initWithData:[arr_Result objectAtIndex:0]];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Cell *cell = (Cell *)[_tableView dequeueReusableCellWithIdentifier:@"Cell"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 86;
}
@end
