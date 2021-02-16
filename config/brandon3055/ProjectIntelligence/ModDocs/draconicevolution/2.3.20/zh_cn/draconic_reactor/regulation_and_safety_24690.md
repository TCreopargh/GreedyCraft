§align:center
##### §n规划及安全系统§n
所以你有一个工作的反应堆。现在是时候确保它不会爆炸了！
§rule{colour:0x606060,height:1,width:100%}
有很多方法可以管理你的反应堆。第一个是手动操作。这在理论上是可行的，只要你能在提供给磁场的能量和从核心中提取的能量之间取得稳定的平衡，就应该没问题……随着堆芯燃料的燃烧和效率的提高，屏蔽强度只会增加。但是，如果你想要随着反应堆效率的提高，调整你的功率设置，从反应堆中获得更多的能量，或者你希望有一些系统来帮助防止可怕的爆炸，这也很好。

§rule{colour:0x606060,height:1,width:100%,padding:0}

######§n红石控制
是的，你可以只用原版红石来调节你的反应堆!尽管使用像project red这样的mod可以让东西更干净！

通过使用比较器读取屏蔽强度等数据，然后使用该信号来调整能量阀门，可以实现红石调节。

你可以在任何一个稳定器或注入器上附加一个比较器。如果你打开UI，你将能够为该特定组件设置比较器的检测内容。

让一个比较器读取燃料转换级别也是一个好主意。当转换水平高时，用它来关闭反应堆，使用自动防故障模式。


§rule{colour:0x606060,height:1,width:100%,padding:0}

######§n计算机控制
如果你知道如何在lua中编程，你可以更进一步，用OC或CC来控制你的反应堆

§ngetReactorInfo
§rule{height:3,padding:0}
这将返回一个包含以下内容的列表：
temperature
fieldStrength
maxFieldStrength
energySaturation
maxEnergySaturation
fuelConversion
maxFuelConversion
generationRate
fieldDrainRate
fuelConversionRate
status
failSafe

§nchargeReactor
§rule{height:3,padding:0}
调用它相当于在GUI中按下充能按钮。

§nactivateReactor
§rule{height:3,padding:0}
调用它相当于在GUI中按下激活按钮。

§nstopReactor
§rule{height:3,padding:0}
调用它相当于在GUI中按下关机按钮。

§nsetFailSafe
§rule{height:3,padding:0}
这允许你开关自动防故障模式。

 
你也可以直接用电脑控制能量阀门。查看§link[draconicevolution:flow_gates]{alt_text:"Flux Gate"}获取更多信息。
 
§rule{colour:0x606060,height:3,width:100%,padding:0}

一句警告的话。尽管不太可能，但要确保你的存储系统消耗电力的速度不会比反应堆产生电力的速度快。如果你耗尽电力，你将无法维持反应堆的控制场强度。我建议使用第三个磁通门来调节你的设施和其他任何使用能量的东西从核心中提取的能量。保持门的设置低于产生率-控制场输入率。

§rule{colour:0x606060,height:3,width:100%,top_pad:0}