/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32767
#no_fix_recipe_book

import crafttweaker.data.IData;

global welcomeQuotes as IData[][string] = {
    zh_cn: [
        ["", {text: "感到卡顿？请在内存占用较高时使用§6R§e键菜单中的§6释放内存§e按钮手动清理内存！", color: "yellow"}], 
        ["", {text: "如果你对这个整合包感到满意，可以考虑赞助一下作者！"}, {text: "赞助通道", color: "light_purple", underlined: true, clickEvent: {action: "open_url", "value": "http://donate.tcreopargh.xyz/", color: "yellow"}}, {text: "  "}, {text: "View Sponsor List", bold: true, underlined: true, color: "light_purple", clickEvent: {action: "run_command", value: "/sponsors list"}}],
        ["", {text: "感谢游玩贪婪整合包！如果你在游戏中遇到了问题，请先查阅§6《贪婪整合包——从入门到精通》", color: "yellow"}], 
        ["", {text: "如果你遇到了模组相关的问题，请查阅§6百科全书§e！模组的指导手册都可以在这里找到。", color: "yellow"}], 
        ["", {text: "在游戏过程中遇到了Bug？请前往", color: "yellow"}, {text: "GitHub Issues", color:"blue", underlined: true, clickEvent: {action: "open_url", "value": "https://github.com/TCreopargh/GreedyCraft/issues"}}, {text: "反馈！", color: "yellow"}], 
        ["", {text: "请记住我们的官网地址：", color: "yellow"}, {text: "https://greedycraft.com/", underlined: true, clickEvent: {action: "open_url", "value": "https://greedycraft.com/"}}, {text: "！", color: "yellow"}], 
        ["", {text: "进入我们的交流群讨论游戏内容吧！交流群的群号可以在官网上找到。", color: "yellow"}] , 
        ["", {text: "有很好的显卡却卡的完全不能玩？别急着关闭光影，这种情况很有可能是你的设置问题。请在整合包附带的安装指南中寻找解决方法。", color: "yellow"}] , 
        ["", {text: "本整合附带了大量的音乐和改进的音效，强烈推荐佩戴耳机游玩！", color: "yellow"}] , 
        ["", {text: "你可以在任务菜单中切换游戏模式！任务菜单可以在物品栏界面的左上角找到。", color: "yellow"}] , 
        ["", {text: "你知道吗？赞助者可以出现在主菜单，还可以定制物品哦！", color: "yellow"}, {text: "赞助通道", color: "light_purple", underlined: true, clickEvent: {action: "open_url", "value": "http://donate.tcreopargh.xyz/"}}, {text: "  "}, {text: "查看赞助者列表", bold: true, underlined: true,color: "light_purple", clickEvent: {action: "run_command", value: "/sponsors list"}}],
        ["", {text: "你可以在进入游戏前就调整游戏模式！游戏模式的配置文件位于config/packmodes.cfg，修改packmode=等号后面的内容就可以改变游戏模式！", color: "yellow"}],
        ["", {text: "如果遇到了背景音乐长时间停止播放的问题，你可以按Alt+小键盘上的-来重载动态音乐！", color: "yellow"}],
        ["", {text: "如果感到卡顿，请尝试按§eR§6打开菜单并点击“§6清理内存§e”按钮。另外也可以试试调整下视距再调回来。", color: "yellow"}],
        ["", {text: "你可以按§6F6§e来切换游戏视角，不过并不推荐这样做，因为第三人称视角能给你类似RPG风格的体验。", color: "yellow"}],
        ["", {text: "组合键§6F3 + A§e可以重载区块并提高帧率，§6F3 + S§e可以重载声音系统（在没有声音时使用）。", color: "yellow"}],
        ["", {text: "你可以使用§6/hidescoreboard§e指令来关闭右边的计分板！§6/showscoreboard§e可以重新打开计分板。", color: "yellow"}],
        ["", {text: "你可以使用§6/hidedeathquotes§e指令来关闭死亡信息显示，或§6/showdeathquotes§e重新打开死亡信息显示！", color: "yellow"}],
        ["", {text: "你可以使用§6/backup§e指令手动备份世界，在世界选择界面可以找到恢复备份的选项！", color: "yellow"}],
        ["", {text: "按§6B§e键可以在你的位置新建路径点，在大地图界面按§6B§e可以在鼠标位置新建路径点！", color: "yellow"}],
        ["", {text: "更新整合包版本时，将之前整合包根目录下的§6saves§e文件夹挪到新版本的相同位置即可保留存档！", color: "yellow"}]
    ],
    en_us: [
        ["", {text: "The game is laggy? Press §6R§e to open a menu where you can free up memory!", color: "yellow"}], 
        ["", {text: "Thank you for playing this modpack! If you encounter problems, make sure to read the modpack guide book.", color: "yellow"}],
        ["", {text: "If you have questions about mods, you can try to look up in the §6Omnipedia§e!", color: "yellow"}],
        ["", {text: "IF the background music stops for a long time, use - key on numpad to reload it.", color: "yellow"}],
        ["", {text: "Press §6F3 + A§e to reload chunks, §6F3 + S§e to reload sound system, use this if you can't hear any sound.", color: "yellow"}],
        ["", {text: "You can use §6/hidescoreboard§e to hide the scoreboard, or §6/showscoreboard§e to make it show up again.", color: "yellow"}],
        ["", {text: "Move the saves folder to the new instance if you are going to update the modpack.", color: "yellow"}],
        ["", {text: "Press §6F6§e to switch between 1st and 3rd person mode. It's suggested to use 3rd person mode in adventure and combat!", color: "yellow"}],
        ["", {text: "Join our discord channel! ", color: "yellow"}, {text: "Link", color: "blue", underlined: true, clickEvent: {action: "open_url", "value": "https://discord.gg/jpxvghEU2a"}}, {text: "", color: "yellow"}], 
        ["", {text: "Hide random death quotes with command: §6/hidedeathquotes§e, and §6/showdeathquotes§e to show it again!", color: "yellow"}],
        ["", {text: "Feeling very laggy even if you have a decent graphic card? Read the installation guide before you try to turn off shaders, it might be because you didn't set up the game properly.", color: "yellow"}],
        ["", {text: "Use §6/backup§e command to backup the world, you can find a button to restore backups in world selection menu!", color: "yellow"}],
        ["", {text: "You can change the packmode outside of the game in config/packmodes.cfg, edit what's after packmode= to change the packmode!", color: "yellow"}],
        ["", {text: "If you feel laggy, press R to open a menu and choose §6Clean Memory§e, or you can try to decrease the render disance.", color: "yellow"}], 
        ["", {text: "If you like this modpack please consider supporting its author! ", color: "yellow"}, {text: "Patreon Site", color: "light_purple", underlined: true, clickEvent: {action: "open_url", "value": "http://patreon.tcreopargh.xyz/"}}, {text: "  "}, {text: "View Sponsor List", bold: true, underlined: true,color: "light_purple", clickEvent: {action: "run_command", value: "/sponsors list"}}],
        ["", {text: "If you become a diamond patreon, you can customize your very own item and let it appear in the game! ", color: "yellow"}, {text: "Patreon Site", color: "light_purple", underlined: true, clickEvent: {action: "open_url", "value": "http://patreon.tcreopargh.xyz/"}}, {text: "  "}, {text: "View Sponsor List", bold: true, underlined: true,color: "light_purple", clickEvent: {action: "run_command", value: "/sponsors list"}}],
        ["", {text: "Found a bug? Please report it at ", color: "yellow"}, {text: "GitHub Issues", color:"blue", underlined: true, clickEvent: {action: "open_url", "value": "https://github.com/TCreopargh/GreedyCraft/issues"}}, {text: "§e!", color: "yellow"}]
        // TODO
    ]
};

global greetingMessage as string[string] = { 
    zh_cn:
        "\n"+
        "§9      //   §b欢迎来到埃拉西亚公共用户界面   §9//   \n"+
        "§e 欢迎，用户§6%PLAYERNAME%§e。\n"+
        "§a 以下是最近的一则公告：\n"+
        "§b ====================================================\n"+
        "§c //////////警告//////////严重系统异常//////////\n"+
        "§e 虚拟网络中的玩家数量正在骤减，部分用户已经变成有敌意的实体。\n"+
        "§e 不排除现实遭到了攻击的可能性。\n"+
        "§e 幻象防御系统已经失效。在公共用户界面中侦测到了大量敌意实体。\n"+
        "§e 如果你还能看到这则公告，请想办法脱离埃拉西亚程序，这是弄清发生了什么的唯一方法。\n"+
        "§e 只有你能将人类从错误的道路上拯救回来！\n"+
        "§b ====================================================\n",
    en_us: 
        "\n"+
        "§9   //   §bWelcome to Elysian Public User Interface.  §9//  \n"+
        "§e Welcome, user §6%PLAYERNAME%§e.\n"+
        "§a Now showing the latest unread announcement.\n"+
        "§b ====================================================\n"+
        "§c ////////WARNING////////FATAL SYSTEM FAILURE////////\n"+
        "§e Player count is drastically decreasing in the virtual network and some has turned into hostile entities.\n"+
        "§e The reality is probably under attack.\n"+
        "§e Illusion defense system is failed and plenty of hostile entities has been detected in the public interface.\n"+
        "§e If you can see this announcement, please try to escape the Elysian Simulation, which is the only way to figure out what happened.\n"+
        "§e ONLY YOU CAN SAVE HUMANITY FROM THE WRONG PATH!\n"+
        "§b ====================================================\n",
};
