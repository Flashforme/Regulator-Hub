  // Light design colormixing swap //
// Emil Opera //

//////////////////////////////////////

  Contains 3 Macro's = LD Give optimized, LD Take optimized, //Assign Design//

//About//
    A set of macro's to easily and quickly give potential light designer the possibility to mix their own colors in an isolated enviroment, from their own station.
    System is build around a specific station, through an IP Address!

//How to use//
  0.1 - Import the XML file
  0.2 - Create/dedicate two separate user profiles ((Default is Designer & Colormixer)). Set up views on each profile for your own convenience and preference. !! CHANGE MACRO PARAMETERS IF Usernames are changed !!
  0.3 - Create/Dedicate two worlds for the system (Default is 4 and 5). World 4 should contain all fixtures only with their COLOR presettypes. Easiest way "Fixture 1 thru; Presettype 4; Presettype 4; Store world 4"
        World 4, your color only placeholder, should be updated per new fixtures in show. World 5 can be empty on start up.
  1.0 - Use the macro //Assign Design// to assign an IP address, which is the designers station.
  1.1 - Per default from here, our IP is 192.168.100.x is our default. //Assign design// Only changes the last digit of the MA-nets IP. If needed, please edit the IP address in the macro, for your own setup.

  2.0 - When IP Is assigned, you can select the needed fixture the designer wishes to mix their own color with. You can make a focus for them beforehand, (On decoration or just in default, up to you!).
  2.1 - When ready to give the fixture, press the LD Give optimized Macro. The Macro will park all attributes except for the color presettype.
  2.2 - When designer has recieved their fixture in their isolated world with only specific fixture, you can now ClearAll and resume with other tasks.

  3.0 - When designer is finished, activate LD Take Opitmized. FIRST LINE WILL CLEAR YOUR PROGRAMMER, so remember to finish up other tasks before activating it!
  3.1 - You will now recieve the fixture back into your programmer with their color values. From there it is up to you how it should be handled (I.E. stored Global preset)

// Please commit a comment for bugs or flaws! //
