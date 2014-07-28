//
//  main.m
//  RandomItems
//
//  Created by Valliappa Chockalingam on 7/2/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZItem.h"
#import "XYZContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 10; i++)
        {
            XYZItem* item = [XYZItem randomItem];
            [items addObject:item];
        }
        
        // Checking Strong Reference Loop
        // XYZItem *backpack = [[XYZItem alloc] initWithItemName:@"Backpack"];
        // [items addObject:backpack];
        
        // XYZItem *calculator = [[XYZItem alloc] initWithItemName:@"Calculator"];
        // [items addObject:calculator];
        
        // backpack.containedItem = calculator;
        
        // backpack = nil;
        // calculator = nil;
        
        for(XYZItem* item in items)
        {
            NSLog(@"%@",[item description]);
        }
        
        // Bronze Challenge - try to access the 11th (index 10) item in the items array.
        // Observe the exception caused. Ans - NSRangeException, index 10 beyond bounds
        // NSLog(@"%@",[items[10] description]);
        
        // Silver Challenge (Testing here, implementation in XYZ.m/h) - Create another initializer method for the XYZItem class.
        // This initializer is not the designated initializer of XYZItem.
        // It takes an instance of NSString that identifies the itemName of the item
        // and an instance of NSString that identifies the serialNumber.
        
        // XYZItem* item_init_with_name_and_serial_test = [[XYZItem alloc] initWithItemName: @"Test" serialNumber:@"T5E5R5"];
        
        // NSLog(@"%@", [item_init_with_name_and_serial_test description]);
        
        // item_init_with_name_and_serial_test = nil;
        
        // The below test of sending a message to an object assigned nil shows that the description returned is (null)
        // NSLog(@"%@", [item_init_with_name_and_serial_test description]);
        
        
        // Gold Challenge - “Create a subclass of XYZItem named XYZContainer. An instance of XYZContainer should have an array of subitems that contains instances of XYZItem. Printing the description of a XYZContainer object should show you the name of the container, its value in dollars (a sum of all items in the container plus the value of the container itself), and a list of every instance of XYZItem it contains. A properly-written XYZContainer class can contain instances of XYZContainer. It can also report back its full value and every contained item properly.”

        // XYZContainer* ContainerTest = [[XYZContainer alloc] initWithItemName:@"Container" valueInDollars:10 serialNumber:@"A1B2C3"];
        
        // XYZContainer* ContainerTester = [[XYZContainer alloc] initWithItemName:@"Container" valueInDollars:100 serialNumber:@"A2B3C4"];
        
        // for(XYZItem* item in items)
        // {
        //     [ContainerTest addObjectToContainer:item];
        // }
        
        // [ContainerTest removeObjectAtIndex:8];
        
        // [ContainerTest addObjectToContainer:ContainerTester];
        
        // NSLog(@"%@",[ContainerTest description]);
        
        // Checking if [XYZItem* dealloc] works
        // NSLog(@"Setting items to nil...");
        
        items = nil;
        
    }
    return 0;
}

