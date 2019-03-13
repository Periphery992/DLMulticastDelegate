//
//  NSObject+DLMulticastDelegate.m
//  CocoaLumberjack
//
//  Created by Posen on 2019/3/12.
//

#import "NSObject+DLMulticastDelegate.h"
#import <objc/runtime.h>

static const char MJAllowedPropertyNamesKey = '\0';

@implementation NSObject (DLMulticastDelegate)

- (NSHashTable *)delegateTable
{
    if (!objc_getAssociatedObject(self, &MJAllowedPropertyNamesKey))
    {
        NSHashTable *delegateTable = [NSHashTable hashTableWithOptions:NSHashTableWeakMemory];
        
        [self setDelegateTable:delegateTable];
    }
    
    return objc_getAssociatedObject(self, &MJAllowedPropertyNamesKey);
}

- (void)setDelegateTable:(NSHashTable *)delegateTable
{
    objc_setAssociatedObject(self, &MJAllowedPropertyNamesKey, delegateTable, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)addDelegate:(id)object
{
    [self.delegateTable addObject:object];
}

- (void)removeDelegate:(id)object
{
    [self.delegateTable removeObject:object];
}


@end
