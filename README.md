# mkdocs-template
mkdocs 模板项目


- [mkdocs github](https://github.com/squidfunk/mkdocs-material)
- [mkdocs doc](https://squidfunk.github.io/mkdocs-material/)

## with pip recommended

Material for MkDocs can be installed with pip:
``` cmd
pip install mkdocs-material
```
安装成功，新建一个mkdocs项目：
``` cmd
mkdocs new [PROJECT_DIRECTORY]
```
启动服务：
``` cmd
mkdocs serve
```
Point your browser to http://localhost:8000 and your documentation should greet you in a new look. 

配置material主题：
``` yml
theme:
  name: material
```

mkdocs commands:

-  `build`      Build the MkDocs documentation
-  `gh-deploy`  Deploy your documentation to GitHub Pages
-  `new`        Create a new MkDocs project
-  `serve`      Run the builtin development server