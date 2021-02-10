§align:center
##### §nRegulation and Safety Systems§n
So you have a working reactor. Now its time to make sure it does not explode!
§rule{colour:0x606060,height:1,width:100%}
There are a number of ways you can manage your reactor. The first being to just do it manually. This is fine in theory, as long as you get a stable balance between power supplied to the field and power extracted from the core it "should" be fine... As the core burns through its fuel and the effiency increases the shield strength should only increase. But if you want to be able to tweak your power settings to get more from your reactor as its efficency increases, or even if you dont its nice to have some system to help prevent a nasty explosion.

§rule{colour:0x606060,height:1,width:100%,padding:0}

######§nRedstone Control
Yes you can regulate your reactor using nothing but vanilla redstone! though using a mod like project red can make things a lot cleaner!

Redstone regulation can be achived by using comparators to read stats like shield strength and then use ing that signal to adjust flux gates.

You can attach a comparator to any of the stabilizers or the injector. Opening the if you open the UI of the component you will be able to set the comparator behavior for that specific component.

Its also a good idea to have a comparator reading the fuel conversion level. Use that to shut down the reactor using fail-safe mode when the conversion level gets to high.


§rule{colour:0x606060,height:1,width:100%,padding:0}

######§nComputer Control
If you know how to program in lua you can take things a step further and control your reactor with Open Computers or Computer Craft!

Attaching a computer to a stabilizer or energy injector exposes 5 methods.

§ngetReactorInfo
§rule{height:3,padding:0}
This returns a table containing the following
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
Calling this is equivelent to pressing the Charge button in the GUI.

§nactivateReactor
§rule{height:3,padding:0}
Calling this is equivelent to pressing the Activate button in the GUI.

§nstopReactor
§rule{height:3,padding:0}
Calling this is equivelent to pressing the Shut Down button in the GUI.

§nsetFailSafe
§rule{height:3,padding:0}
This allows you to enable/disable failsafe mode.

 
You can also control the flux gates directly with your computer. Check out the §link[draconicevolution:flow_gates]{alt_text:"Flux Gate"} page for more information.
 
§rule{colour:0x606060,height:3,width:100%,padding:0}

A word of warning. As unlikely as it is make sure you dont consume power from your storage system faster then the reactor can generate it. If you run out of power you wont be able to maintain your reactors shield strength. I recommend using a third flux gate to regulate how much power is extracted from the core by your base and anything else that is using power. Keep that gate set lower than the generation rate - field input rate of your reactor.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}