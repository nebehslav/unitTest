//
//  ApplicationTest.cpp
//  Aplication
//
//  Created by Iliya Iliev on 8/28/17.
//  Copyright © 2017 Iliya Iliev. All rights reserved.
//

#include <gtest/gtest.h>
#include "../Aplication/Counter.h"

TEST(Counter, InitialState) {
    Counter counter;
    EXPECT_EQ(0, counter.GetCount());
}

TEST(Counter, Increment) {
    Counter counter;
    EXPECT_EQ(1, counter.Increment());
    EXPECT_EQ(2, counter.Increment());
    EXPECT_EQ(3, counter.Increment());
}
