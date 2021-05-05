§align:center
##### §nRegulation and Safety Systems§n
So now you have a working reactor, right? Let's make sure it doesn't explode!
§rule{colour:0x606060,height:1,width:100%}
There are a number of ways you can manage your reactor. The first being just to do it manually. This is fine in theory, as long as you get a stable balance between power supplied to the field and power extracted from the core it "should" be fine... As the core burns through its fuel and the effiency increases, the shield strength should only increase. If you want to be able to tweak your power settings to get more from your reactor as its efficency increases, or even if you don't, its nice to have some system to help prevent a nasty explosion.

§rule{colour:0x606060,height:1,width:100%,padding:0}

######§nRedstone Control
Yes, you can regulate your reactor using nothing but vanilla redstone! Using a mod like ProjectRed can make things a lot cleaner, though!

Redstone regulation can be achived by using comparators to read stats, like shield strength, and then by using that signal to adjust flux gates.

You can attach a comparator to any of the stabilizers or the injector. Opening the UI of the component in question will let you set the comparator behavior for that specific component.

It's also a good idea to have a comparator reading the fuel conversion level. Use that to shut down the reactor using fail-safe mode when the conversion level gets to high.


§rule{colour:0x606060,height:1,width:100%,padding:0}

######§nComputer Control
If you know how to program in LUA, you can take things a step further and control your reactor with Open Computers or ComputerCraft!

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

A word of warning: as unlikely as it is, make sure you don't consume power from your storage system faster then the reactor can generate it. If you run out of power you wont be able to maintain your reactor's shield strength. I recommend using a third flux gate to regulate how much power is extracted from the core by your base and anything else that is using power. Keep that gate set lower than the generation rate - field input rate of your reactor.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}