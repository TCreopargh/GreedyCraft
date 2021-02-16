§align:center
##### §n阀门§n

§stack[draconicevolution:flow_gate]{size:64} §stack[draconicevolution:flow_gate,1,8]{size:64}

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
顾名思义，阀门可用于控制通过系统的能量或流体流动。 只需将电源或流体源连接到输入侧，门将允许你控制能量或流体流向输出侧的速度。

打开GUI时，你将看到2个设置。“红石信号高”和“红石信号低”这些允许你根据红石信号设置。

应该注意的是，门支持红石输入，这意味着如果你将低流量设置为1000并且高流量设置为10000，则可以通过应用可变强度红石信号来调整1000和10000之间的流量。这种变化适用于§link[draconicevolution:potentiometer]{alt_text:"Potentiometer"}.

最后，屏幕底部显示“Flow”值。 这显示了当前的流量设置（考虑到红石信号或计算机控制）

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
§recipe[draconicevolution:flow_gate]{spacing:2}§recipe[draconicevolution:flow_gate,1,8]{spacing:2}
§rule{colour:0x606060,height:3,width:100%,top_pad:3}
###### §n计算机控制
也可以使用Computergraft或Open Computers控制门。 你可以在下面找到可用的外围设备方法列表。
§n§6注意：以下为英文，原因是为了更好的使玩家了解名称及调用！§6§n
§ngetFlow
§rule{height:3,padding:0}
Returns the current flow rate

§nsetOverrideEnabled
§rule{height:3,padding:0}
Enables computer override mode. This disables all manual control via the gui.

§ngetOverrideEnabled
§rule{height:3,padding:0}
returns true if override is enabled.

§nsetFlowOverride
§rule{height:3,padding:0}
Sets the override value (must be used when override is enabled) 

§nsetSignalHighFlow
§rule{height:3,padding:0}
Sets the RS High flow rate.

§ngetSignalHighFlow
§rule{height:3,padding:0}
Gets the RS High flow rate.

§nsetSignalLowFlow
§rule{height:3,padding:0}
Sets the RS Low flow rate.

§ngetSignalLowFlow
§rule{height:3,padding:0}
Gets the RS Low flow rate.
§rule{colour:0x606060,height:3,width:100%,top_pad:0}