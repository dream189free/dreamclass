# latex-template-dreamClass
## 简介
从四处的开源项目中抄来的代码拼凑出来的、自用的课程实验报告模板。
## 用法

1. 根据_CTeX宏集手册_的说明，把`*.cls`和`*.def`丢到当前工作目录或者本地TDS目录树下。
一个供参考的路径是`~/texmf/tex/latex/`。
2. 在`*.tex`的导言区加上`\documentclass{dreamClass}`。
3. 试图编译。
## 注意事项
字体相关问题使人头痛，不过可以肯定的是，如果你的电脑上没有装有思源黑体、思源宋体、方正粗楷、方正新楷体以及Fandol仿宋体的话，
就不要使用`ctex-fontset-sourcesans.def`，并且应当同时更改`dreamClass.cls`的相关选项。
