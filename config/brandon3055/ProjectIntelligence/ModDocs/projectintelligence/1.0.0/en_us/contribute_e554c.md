§rule{colour:0xFF0000,height:2,top_pad:0,bottom_pad:3,width:100%}
§4The PI back end is not yet ready to handle user contributed documentation.
§link[projectintelligence:people/covers1624]{alt_text:"covers1624"} is currently in the process of developing an automated system where once contributors have been authorized, they will be free to add and update documentation for their assigned mod(s). In order to be authorized, you must ether be a developer or authorized by a developer of any mod who's documentation you wish to contribute to.

In the mean time, feel free to play with the editor and write documentation. 
I do have the ability to manually add/update documentation if needed, but I would prefer that you wait until the automated system is complete.

§cEdit: on second thought covers is kinda busy with other projects so for the moment this will have to remain a manual process.  
§rule{colour:0xFF0000,height:2,padding:0,width:100%}

For people who want to contribute by writing/updating/translating documentation:

I will get around to writing proper documentation for this at some point, but for now, here is a brief step-by-step guide.
To do this, you will need at least a basic understanding of git, github and pull requests.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

1. Clone the PI-Docs repo from §link[https://github.com/brandon3055/PI-Docs].
 
2. Switch PI to edit mode via the settings button in the UI. You should be prompted enter the path to the "ModDocs" folder that exists in the repo you just cloned. Copy-Paste or type the path (e.g. C\Users\<your name>\Documents\PI-Docs\ModDocs) then press OK.

3. Press the "Open PI Editor" button that should now be displayed at the top of the main PI Gui. The editor should be pretty self explanitory; just make sure you read all of the help topics displayed by the "?" buttons in the editor.

4. All changes are automatically saved to your local clone of the PI repo. Once you have finished writing documentation, simply create a pull request.

Please note that not all features in the editor are fully implemented! If you run into trouble feel free to ask for help via the Draconic Evolution discord here: §link[https://discord.gg/e2HBEtF]

###### Pack Documentation (Local Doc)
This is a feature intended for modpack developers. It allows you to create documentation that can be shipped with the modpack rather than having to be uploaded to the repository. This documentation is identical to Mod Doc but is stored inside "config/brandon3055/ProjectIntelligence/PackDocs".
