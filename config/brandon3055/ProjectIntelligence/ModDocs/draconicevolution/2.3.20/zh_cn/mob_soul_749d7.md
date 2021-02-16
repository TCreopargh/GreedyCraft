§align:center
##### §n生物灵魂§n

§stack[draconicevolution:mob_soul,1,0,{EntityName:"[Random-Display]"}]{size:92} 

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
当使用带有收割者附魔的武器杀死玩家时，生物偶尔会掉落我的怪物。

掉落几率非常低。
敌对生物中的1：1000和被动生物中的1：800（可配置）。
但是使用收割者附魔可以提高获得灵魂的机会。

DE工具基本上有一个内置的收割者，相当于飞龙的lvl 1，神龙的lvl 2和权杖的lvl 3。
计算掉落几率的计算方法是基础掉落几率除以收割者修正值加上收割者附魔lvl的武器。

所以计算说..收割者5的龙剑将如下：
基础掉率 = 2,
lvl = 5,
最终掉率 = 1000 / (2 + 5)

如果收割者修正为0（没有收割者附魔的非DE武器），就没有机会。

一些mod可以在他们的武器上实现收割者，但截至撰写本文时，我不知道有什么用。


灵魂的主要用途是为稳定刷怪笼设置生物类型，但是它们也可以通过右键单击带有灵魂的方块来生成它们各自的实体（这样做会消耗灵魂）

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
§recipe[draconicevolution:mob_soul]{spacing:2}