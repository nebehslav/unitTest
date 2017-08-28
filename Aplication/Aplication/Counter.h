//
//  Counter.hpp
//  Aplication
//
//  Created by Iliya Iliev on 8/28/17.
//  Copyright © 2017 Iliya Iliev. All rights reserved.
//

#pragma once


class Counter {
public:
    Counter();
    
    int GetCount() { return count_; }
    int Increment();
    
private:
    int count_;
};
