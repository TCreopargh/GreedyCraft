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
    '§e你可以在进入游戏前就调整游戏模式！游戏模式的配置文件位于config/packmodes.cfg，修改packmode=等号后面的内容就可以改变游戏模式！',
    "§e如果遇到了背景音乐长时间停止播放的问题，你可以按Alt+小键盘上的-来重载动态音乐！",
    "§6如果感到卡顿，请尝试按§eR§6打开菜单并点击“§e清理内存§6”按钮。另外也可以试试调整下视距再调回来。",
    "§e你可以按§6F6§e来切换游戏视角，不过并不推荐这样做，因为第三人称视角能给你类似RPG风格的体验。",
    "§e组合键§6F3 + A§e可以重载区块并提高帧率，§6F3 + S§e可以重载声音系统（在没有声音时使用）。"
];

global greetingMessage as string = "\n"+
        "§9      //   §b欢迎来到埃拉西亚公共用户界面   §9//   \n"+
        "§e 欢迎，用户§6%PLAYERNAME%§e。\n"+
        "§a 以下是最近的一则公告：\n"+
        "§b ====================================================\n"+
        "§c //////////警告//////////严重系统异常//////////\n"+
        "§e 虚拟网络中的玩家数量正在骤减，部分用户已经变成有敌意的实体。\n"+
        "§e 不排除现实遭到了攻击的可能性。\n"+
        "§e 想象防御系统已经失效。在公共用户界面中侦测到了大量敌意实体。\n"+
        "§e 如果你还能看到这则公告，请想办法脱离埃拉西亚程序，这是弄清发生了什么的唯一方法。\n"+
        "§e 只有你能将人类从错误的道路上拯救回来！\n"+
        "§b ====================================================\n";
