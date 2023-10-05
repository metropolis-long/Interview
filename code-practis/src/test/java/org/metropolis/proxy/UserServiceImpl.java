package org.metropolis.proxy;

public class UserServiceImpl implements UserService{
    @Override
    public int complete(int i) {
        System.out.println(i);
        return i;
    }
}
