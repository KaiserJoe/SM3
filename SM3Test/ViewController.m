//
//  ViewController.m
//  SM3Test
//
//  Created by iOS Developer on 2017/6/14.
//  Copyright © 2017年 Bankeys. All rights reserved.
//

#import "ViewController.h"
#import "SM3.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString * password = @"123456";
//    
//    NSData *testData = [password dataUsingEncoding: NSUTF8StringEncoding];
//    Byte *input = (Byte *)[testData bytes];
//    
//    const char *byteLength = [password UTF8String];
//    size_t length = strlen(byteLength);
//    Word * hash = SM3::hash(input, length);
//    //    NSMutableString *result = [NSMutableString string];
//    for (int i = 0; i < 8; i++) {
//        printf("%x ", hash[i]);
//        //        [result appendFormat:@"%x",hash[i]];
//    }
//    //    NSLog(@"result = %@",result);
    
    
    unsigned  char * input =  "abc";
    int ilen = 3;
    unsigned char output[32];
    int i;
    sm3_context ctx;
    
    //--------------------------------------------------
    printf("输入消息:\n");
    printf("%s\n",input);
    
    sm3(input, ilen, output);//调用sm3算法环节
    
    printf("杂凑值:\n   ");
    for(i=0; i<32; i++)
    {
        printf("%02x",output[i]);
        if (((i+1) % 4 ) == 0) printf(" ");
    }
    printf("\n");
    printf("---------------------------------------------------------------------------\n");
//    --------------------------------------------------
    
    printf("输入消息:\n");
    for(i=0; i < 16; i++)
        printf("abcd");
    printf("\n");
    
    
    sm3_starts( &ctx );
    for(i=0; i < 16; i++)
        sm3_update( &ctx, "abcd", 4 );
    sm3_finish( &ctx, output );
    
    memset( &ctx, 0, sizeof( sm3_context ) );//ctx置0
    
    
    printf("杂凑值:\n   ");
    for(i=0; i<32; i++)
    {
        printf("%02x",output[i]);
        if (((i+1) % 4 ) == 0) printf(" ");
    }
    printf("\n");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
