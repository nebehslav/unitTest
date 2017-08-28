//
//  Counter.cpp
//  Aplication
//
//  Created by Iliya Iliev on 8/28/17.
//  Copyright © 2017 Iliya Iliev. All rights reserved.
//

#include "Counter.h"

Counter::Counter() :
count_(0) {}

int Counter::Increment() {
    return ++count_;
}
