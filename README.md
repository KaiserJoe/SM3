# SM3
SM3 iOS Project
    
前人种树后人乘凉,感谢各位大神的分享的SM3 c语言源码.
虽然网上找到了SM3的各个版本的源码,但是似乎缺个Dome.
虽节省下自己实现SM3的时间和脑细胞,但是在调试错误,配置等也花了不少时间时间.

遇到的问题如:

`.mm .cpp`等没有正确使用后缀哪个出现的错误.

UIREsponder都没了,还怎么搞呢?
`Showing Recent Messages
  "_OBJC_CLASS_$_UIResponder", referenced from:`

还有不是很复杂类型转换:
`Cannot initialize a variable of type 'unsigned char' with an lvalue of type 'const char [4]'`

    
## How to use:
下载项目,将文件`SM3.h``SM3.m`拷贝到项目中,include头文件调用`sm3()`.
具体使用查看`viewcontroller`中使用.

