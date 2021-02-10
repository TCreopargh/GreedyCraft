§align:center
##### §nFlow Gates§n

§stack[draconicevolution:flow_gate]{size:64} §stack[draconicevolution:flow_gate,1,8]{size:64}

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
Flow gates as the name suggests can be used to control the flow of power or fluid through a system. Simply attach a power or fluid source to the input side and the gate will allow you to control how quickly power or fluid flows through to the output side.

When you open the gates GUI you will see 2 settings. "Redstone Signal High" and "Redstone Signal Low" these allow you to set the frow rate based on redstone signal.

It should be noted that the gates support analog redstone input meaning if for example you set the RS Low flow to 1000 and the RS High flow to 10000 you will be able to adjust the flow between 1000 and 10000 by applying a variable strength redstone signal. This variability works well with the §link[draconicevolution:potentiometer]{alt_text:"Potentiometer"}.

Finally there is a "Flow" value displayed at the bottom of the screen. This shows the current flow rate setting (taking into accout redstone signal or computer control)

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
§recipe[draconicevolution:flow_gate]{spacing:2}§recipe[draconicevolution:flow_gate,1,8]{spacing:2}
§rule{colour:0x606060,height:3,width:100%,top_pad:3}
###### §nComputer Control
Flow gates can also be controlled using Computergraft or Open Computers. You can find a list of avalible peripheral methods bellow.

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