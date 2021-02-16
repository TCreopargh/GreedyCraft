§rule{colour:0xFF0000,height:2,top_pad:0,bottom_pad:3,width:100%}
§4PI后台尚未准备好处理用户提供的文档。
§link[projectintelligence:people/covers1624]{alt_text:"covers1624"}目前正在开发一个自动化系统，一旦你作为贡献者获得授权，你就可以自由添加和更新你指定的mod的文档。要获得授权，你必须是开发人员或由你希望贡献的任何mod的开发人员授权。

同时随意使用编辑器和编写文档。
如果需要，我确实能够手动添加/更新文档，但我希望你等到自动化系统完成。
§rule{colour:0xFF0000,height:2,padding:0,width:100%}

对于想要通过编写/更新/翻译文档做出贡献的人。

我会在某些时候为此编写适当的文档，但现在这是一个简短的分步指南。
要做到这一点，你至少需要对git，github和PR有基本的了解。

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

1. 克隆仓库：§link[https://github.com/brandon3055/PI-Docs]
 
2. 通过UI中的设置按钮将PI切换到编辑模式。 系统将提示你输入刚刚克隆的库中存在的“ModDocs”文件夹的路径。 复制粘贴或键入路径（例如 C\Users\<your name>\Documents\PI-Docs\ModDocs)）然后按确定。

3.按下“打开PI编辑器”按钮，该按钮现在应显示在主PI Gui的顶部。 编辑器应该是非常易用的，只要你阅读“？”所显示的所有帮助。

4. 所有更改都会自动保存到PI repo的本地克隆中。 完成文档编写后，只需创建一个PR。
请注意，并非编辑器中的所有功能都已完全实现。 如果你遇到麻烦，请随时通过Draconic Evolution的Discord（需科学上网）寻求帮助 §link[https://discord.gg/e2HBEtF]

###### 本地文档
这是一个适用于mod pack开发人员的功能。 它允许你创建可以与整合包一起提供的文档，而不必上载到存储库。 此文档与Mod Doc相同，但存储在config / brandon3055 / ProjectIntelligence / PackDocs中。
