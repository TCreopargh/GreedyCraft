/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32767

global welcomeQuotes as string[] = [
    '§e感到卡顿？请在刚进入游戏或内存占用较高时使用§6R§e键菜单中的§6释放内存§e按钮手动清理内存！', 
    '["",{"text":"§e如果你对这个整合包感到满意，可以考虑赞助一下作者！"},{"text":"§d§n赞助通道","clickEvent":{"action":"open_url","value":"http://donate.tcreopargh.xyz/"}}]"',
    '§e感谢游玩贪婪整合包！如果你在游戏中遇到了问题，请先查阅§6《贪婪整合包——从入门到精通》', 
    '§e如果你遇到了模组相关的问题，请查阅§6百科全书§e！模组的指导手册都可以在这里找到。', 
    '["",{"text":"§e在游戏过程中遇到了Bug？请前往"},{"text":"§9§n"GitHub Issues","clickEvent":{"action":"open_url","value":"https://github.com/TCreopargh/GreedyCraft/issues"}},{"text":"§e反馈！"}]' , 
    '["",{"text":"§e请记住我们的官网地址："},{"text":"§9https://greedycraft.tcreopargh.xyz/","clickEvent":{"action":"open_url","value":"https://greedycraft.tcreopargh.xyz/"}},{"text":"！"}]' , 
    '§e进入我们的交流群讨论游戏内容吧！交流群的群号可以在官网上找到。' , 
    '§e有很好的显卡却卡的完全不能玩？别急着关闭光影，这种情况很有可能是你的设置问题。请在整合包附带的安装指南中寻找解决方法。' , 
    '§e本整合附带了大量的音乐和改进的音效，强烈推荐佩戴耳机游玩！' , 
    '§e你可以在任务菜单中切换游戏模式！任务菜单可以在物品栏界面的左上角找到。' , 
    '["",{"text":"§e你知道吗？赞助者可以出现在主菜单，还可以定制物品哦！"},{"text":"§d§n赞助通道","clickEvent":{"action":"open_url","value":"http://donate.tcreopargh.xyz/"}}]',
    '你可以在进入游戏前就调整游戏模式！游戏模式的配置文件位于config/packmodes.cfg，修改packmode=等号后面的内容就可以改变游戏模式！'
];
