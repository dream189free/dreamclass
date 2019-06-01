# latex-template-dreamClass

## 简介
从四处的开源项目中抄来的代码拼凑出来的、自用的课程实验报告模板。

## 用法

1. 根据*CTeX宏集手册*的说明，把`*.cls`和`*.def`丢到当前工作目录或者本地TDS目录树下。
一个供参考的路径是`~/texmf/tex/latex/`。
2. 在`*.tex`的导言区加上`\documentclass{dreamClass}`。
3. 期待能够编译成功。

## 注意事项
字体相关问题使人头痛，尤以在Windows下为甚。
不过可以肯定的是：如果您的电脑上并没有思源黑体、思源宋体、方正粗楷、方正新楷体以及Fandol仿宋体，
就请不要使用`ctex-fontset-sourcesans.def`，这可以通过更改`dreamClass.cls`的相关选项来实现。

## TODO

- 加一个示例文档（咕咕咕）
- 让超链接的外形更好看
- 让代码块更好看
- 增加选项以控制默认的正文字号——小四号或者五号字
