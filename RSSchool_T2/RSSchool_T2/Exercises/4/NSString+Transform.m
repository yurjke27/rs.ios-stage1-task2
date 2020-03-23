#import "NSString+Transform.h"

@implementation NSString (Transform)

-(NSString*)transform {
    int countOfMatch = 0;
    int countOfLetters = 0;
    NSString *alphabetString = @"abcdefghijklmnopqrstuvwxyz";
    NSString *vowelsString = @"aeiouy";
    NSString *consonants = @"qwrtpsdfghjklzxcvbnm";
    NSMutableString *resultString = [NSMutableString new];
    NSMutableCharacterSet *alphabetSet = [NSMutableCharacterSet characterSetWithCharactersInString:alphabetString];
    NSMutableCharacterSet *mainCharacterSet = [NSMutableCharacterSet new];
    NSArray *arrayOfStrings = [self componentsSeparatedByString:@" "];
    
    for (NSInteger i = 0; i < arrayOfStrings.count; i++) {
        for (NSInteger j = 0; j < [[arrayOfStrings objectAtIndex:i] length]; j++){
            bool match = [alphabetSet characterIsMember:[[[arrayOfStrings objectAtIndex:i] lowercaseString] characterAtIndex:j]];
            if (match) {
                NSString *charStr = [[NSString stringWithFormat:@"%c", [[arrayOfStrings objectAtIndex:i] characterAtIndex:j]] lowercaseString];
                [alphabetSet removeCharactersInString:charStr];
                countOfMatch++;
            }
        }
    }
    
    NSMutableString *stringWithCountOfVowels = [NSMutableString new];
    mainCharacterSet = (countOfMatch >= 26) ? [NSMutableCharacterSet characterSetWithCharactersInString:vowelsString] : [NSMutableCharacterSet characterSetWithCharactersInString:consonants];
    for (NSInteger i = 0; i < arrayOfStrings.count; i++) {
        NSMutableString* str = [NSMutableString new];
        for (NSInteger j = 0; j < [[arrayOfStrings objectAtIndex:i] length]; j++){
            
            bool match = [mainCharacterSet characterIsMember:[[[arrayOfStrings objectAtIndex:i] lowercaseString] characterAtIndex:j]];
            if(match) {
                unichar c = [[arrayOfStrings objectAtIndex:i] characterAtIndex:j];
                [str appendString:[[NSString stringWithCharacters:&c length:1] uppercaseString]];
                countOfLetters++;
                continue;
            } else {
                unichar c = [[arrayOfStrings objectAtIndex:i] characterAtIndex:j];
                [str appendString:[NSString stringWithCharacters:&c length:1]];
            }
        }
        if([str isEqual:@""]) {
            continue;
        }
        [stringWithCountOfVowels appendString:[NSString stringWithFormat:@"%d%@ ", countOfLetters, str]];
        NSLog(@"%d", countOfLetters);
        countOfLetters = 0;
    }
    
    NSArray *arrayWithStrings = [stringWithCountOfVowels componentsSeparatedByString:@" "];
    NSArray *sortedArrayOfString = [arrayWithStrings sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSString *str1 = [NSString stringWithFormat:@"%c", [(NSString *)obj1 characterAtIndex:0]];
        if ([obj2 length] > 0){
            return [str1 compare:[NSString stringWithFormat:@"%c", [(NSString *)obj2 characterAtIndex:0]]];
        }
        return NSOrderedSame;
    }];
    
    for (NSInteger i = 0; i < sortedArrayOfString.count; i++) {
        if (i == sortedArrayOfString.count-1) {
            [resultString appendString:[NSString stringWithFormat:@"%@",[sortedArrayOfString objectAtIndex:i]]];
            break;
        }
        [resultString appendString:[NSString stringWithFormat:@"%@ ",[sortedArrayOfString objectAtIndex:i]]];
    }
    
    if ([resultString length] > 4) {
        NSRange range = NSMakeRange([resultString length] -1, 1);
        [resultString deleteCharactersInRange:range];
    }
    return resultString;
}

@end
