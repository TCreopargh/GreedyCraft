§align:center
##### §nDraconic Reactor Basic Operating Pronciple§n
Just the basics. I promise.

As the name implies this guide is going to give you the bare minimum information you need to understand how this reactor works.
§rule{colour:0x606060,height:3,width:100%}
//========================================================
Lets start by taking a look at the reactor GUI.
§img[http://ss.brandon3055.com/b7494]{width:50%}

§align:left
In the top section there are 4 gages that give critical information about the reactor status. From left to right they are: 
§rule{height:3,padding:0}
§nTemperature:§n Pretty self explanitory this is the temperature of the core. Keep this bellow 8000 and you are golden!
§rule{height:3,padding:0}
§nShield Strength:§n This is the strength of the shield preventing the reactor from exploding! You will want to find a nice balance for this. To high and the shield will consume more power than the reactor generates. To low and you risk §4catastrophic faliure§4.
§rule{height:3,padding:0}
§nSaturation:§n This is how much energy is stored in the reactor core.
§rule{height:3,padding:0}
§nFuel Conversion Level:§n This shows how much fuel you have burned through. Just keep in mind you never want this to hit 100% or you will have a §4catastrophic overload§4 on your hands!
§rule{colour:0x606060,height:1,width:100%}
In the lower section you have.
§rule{height:3,padding:0}
§nCore Volume:§n This indicates the size of the reactor and is based on how much fuel you gave the reactor before starting it. 
§rule{height:3,padding:0}
//
§nGeneration Rate:§n This is the rate at which the reactor is currently generating energy.
§rule{height:3,padding:0}
//
§nField Input Rate:§n This is the energy input required to maintain the current shield strength. The lower the shield strength the less energy is required to maintain it.
§rule{height:3,padding:0}
//
§nFuel Conversion Rate:§n This is how fast the reactor is currently consuming fuel. It is measured nano buckets (1/1000th if a milli bucket) per tick.

§rule{colour:0x606060,height:3,width:100%}
//========================================================
So now that you hopefully understand the GUI allow me to explain how the reactor works. It will be easier if i break this down into its different operating states (displayed in the UI as Status)
§rule{colour:0x606060,height:1,width:100%}
//--------------------------------------------------------------------------------------------------
####### §nOffline

This state is pretty selve explanitory. The reactor is completely inactive. §cIt should be noted this is the only state in which it is safe to dismantle the reactor!§c
§rule{colour:0x606060,height:1,width:100%}
//--------------------------------------------------------------------------------------------------
####### §nWarming Up

This is where the reactor requires a substantial amount of power in order to start up. In this mode the reactor will accept power via the energy injector. First it will charge the shield to 50% capacity, Next it will charge the core to 50% saturation and finally it will heat the core to 2000 degrees. At that point the reactor is ready to be activated.
§rule{colour:0x606060,height:1,width:100%}
//--------------------------------------------------------------------------------------------------
####### §nOnline

Now that your reactor is running you must maintain a balance between the amount of energy you supply the containment field and the amount of energy you extract.

The more power you pull from the reactor the more the reactors saturation will dropp. The reactor will compensate for this by increating its generation rate to match the rate at which you are extracting energy.

As the generation rate increases so does the reactor core temperature. This results in an increased load on the containment field that will result in a drop in containment field strength. If the core temperature goes beyond 8000c the containment field load will start to increas exponentially. At best resulting in horrible efficiency, at worst resulting in §4catastrophic faliure§4.

The higher the core temperature the faster the reactor will burn fuel. The fusion of draconium in the core of the reactor produces the chaos element (the same element found in the center of a chaos island) 

As the level of chaos within the core increases so does the reactivity of the draconium. This higher reactivity increases the efficiency of the reactor and means that over time as the fuel is converted you will be able to pull more and more power from the reactor while maintaining a stable temperature. This will increas to several million RF/t before you need to refule the reactor.

§4[WARNING]§4 You MUST shut down and refuel the reactor BEFORE the conversion level reaches 100%! The chaos element is highly unstable and without some amound of draconoum in the core it can not be regulated. This will result in a runaway thermal reaction that can not be stopped! The core temperature increase uncontrollably until the containment field fails resulting in a catastrophic explosion.

§rule{colour:0x606060,height:1,width:100%}
//-------------------------------------------------------------------------------------------------- 
####### §nStopping

§4[WARNING]§4 Before you shut down your reactor make sure you have a significant backlog of power to supply the containment field while it shuts down!

When you hit the stop button the reactor will immediately stop producing outputing power and start the shutdown process. This requires the reactor to charge its saturation to near 100% thus allowing the generation rate to drop which in tern allows the temperature to drop. Once the saturation passes around 99% the temperature will dropp bellow 2000c, fusion will cease and the reactor will enter the cool down mode. 

§rule{colour:0x606060,height:1,width:100%}
//-------------------------------------------------------------------------------------------------- 
####### §nCooling Down

At this point fusion has stopped and the containment field can shut down. Once the core cools sufficiently you will be able to refuel or dissmantle the reactor.

§4[WARNING]§4 Even now its still not safe to dismantle the reactor until the temperature drops bellow 300c! If you do... well fusion has stopped at this point so the result wont exactly be nuclear but dropping a giant ball of super heated draconium on the floor will still make one hell of a mess!

§rule{colour:0x606060,height:1,width:100%}
//-------------------------------------------------------------------------------------------------- 
####### --§nExplosion Imminent§n!!!--

So this is the status message you never want to see. If you do end up in this situation... Well... I can only hope you have a good pair of running shoes!

This mode is also pretty selfe explanatory. Its about to go BOOM! It will take anywere from a few seconds to several minutes to calculate exactly how long you have before detonation. Once that calculation is complete the GUI will give you a nice little ETA. This will usually be around a minute or two but you really shouldn't stick around to watch the fireworks...

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
//========================================================

