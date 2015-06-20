//
//  main.m
//  HangPerson
//
//  Created by Michael Kavouras on 6/15/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char hangWord[13] = "pumpernickle";
        char wordBlank[13] = "____________";
        
        char letterInput;
        int numTry;
        int maxTry = 15;
        
        
        for (numTry = 0; numTry < 15; numTry++) {
            
            printf("Guess a letter? ");
            scanf(" %c", &letterInput);
            
            for (int i = 0 ; i < 12; i++) {
                if (letterInput == hangWord[i]) {
                    wordBlank[i] = letterInput;
                }
            }
            
            printf("%s\n", wordBlank);
            if (strcmp(hangWord, wordBlank) == 0) {
                printf("You Won!");
                break;
            }
        }
        if (numTry >= maxTry) {
            printf("You have failed at life");
        }
        
    }
    return 0;
}
