§align:center
##### §n实体探测器§n

§stack[draconicevolution:entity_detector]{size:64}

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
这是一个具有许多有用功能的高级实体检测器。

探测器能够搜索特定的实体类型，并根据它们发现的内容发出特定的红石信号。
探测器可以以可配置的频率发出扫描脉冲，然后根据它们发现的内容更新红石输出。

§b参数：
§3基础：§6
最大范围：10
最小扫描间隔：1.5s
最大扫描间隔：60s一次
0.25s搜索一次
按玩家，敌对，被动或任何组合过滤。

§5高级：§6
最大范围：64
0.25s搜索一次
按玩家，敌对，被动，其他或任何组合过滤。
黑名单/白名单§r

高级探测器中的黑名单/白名单可以设置为搜索或忽略游戏中的任何实体。
它还可以搜索特定的玩家。

§4红石输出：§r
红石输出有2种模式。 稳定和脉冲。
在稳定模式下，红石信号在扫描脉冲之间保持恒定。
在脉冲模式下，每个扫描脉冲发出1t红石脉冲（假设它找到实体）

这些设备还可以配置为根据检测到的实体数量输出不同的信号强度。
该控件以GUI中的2个控件的形式出现。 RS Min和RS Max。
RS Min是设备必须检测到的输出信号强度为1的实体数。
RS Max是输出强度为15所需的数字。
如果检测到的条目数在这两个值之间，则输出强度将相应变化。

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
§recipe[draconicevolution:entity_detector]{spacing:2}§recipe[draconicevolution:entity_detector,1,1]{spacing:2}
§rule{colour:0x606060,height:3,width:100%,top_pad:3}