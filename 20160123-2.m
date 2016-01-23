.xcodeproj格式文件可以打开整个项目
按住option可打开Quick Help，option后双击相应名词会出现API文档大窗口
xcode虽然没有对re-indent重排功能设置快捷键，但可以ctrl+A，ctrl+X，ctrl+V自动格式化
选中多行代码的时候，可以用command+】缩进，command+【反向缩进
shift+command+F是在整个工程里面查找 command+F是在当前的文件里面查找
command+L然后输入行号 快速定位到代码行
底下那个调试和控制台框框，可以用cmd+shift+Y调出

#import <Foundation/Foundation.h>
int main(int argc, char *argv[]) {
	@autoreleasepool {
		NSLog("hello world");
	}
	return 0;
}

在Objective-C中，编译器指令以@符号开始
@end结束接口部分、实现部分或者协议部分
@private
@protected
@public
@end
fkdjlfdfjdlajf

char %c
int %i
id %p
float %f
double %f
long int %li
long long int %lli
unsigned int %u

强制转换类型
(float) a
(double) (x + y)
