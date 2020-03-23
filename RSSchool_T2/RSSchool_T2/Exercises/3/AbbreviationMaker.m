#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    int counter = 0;
    NSMutableString* lowerCaseStrA = [NSMutableString stringWithString:[a lowercaseString]];
    NSString* lowerCaseStrB = [NSMutableString stringWithString:[b lowercaseString]];
    
    for (NSInteger i = 0; i < [lowerCaseStrB length]; i++) {
        for (NSInteger j = 0; j < [lowerCaseStrA length]; j++) {
            if ([lowerCaseStrB characterAtIndex:i] == [lowerCaseStrA characterAtIndex:j]) {
                NSRange range = NSMakeRange(0, j);
                [lowerCaseStrA replaceCharactersInRange:range withString:@""];
                counter++;
                break;
            }
        }
    }
    NSString *resultString = (counter == [lowerCaseStrB length]) ? @"YES" : @"NO";
    return resultString;
}
@end
