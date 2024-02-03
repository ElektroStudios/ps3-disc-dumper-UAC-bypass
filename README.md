
# ps3-disc-dumper UAC bypass

### What is this?

In this repository you will find a simple batch-script file with name "Loader.cmd" that serves to run [ps3-disc-dumper](https://github.com/13xforever/ps3-disc-dumper) program without the UAC restriction.

In other words, it will let you run and use the program under an Administrator account to get rid of this error message:

![enter image description here](https://i.imgur.com/EbMhOLQ.png)

### Usage

Simply put the 'Loader.cmd' script file together with the 'ps3-disc-dumper.exe' executable file, and run the script file.

### Is this batch-script file really necessary?

Of course it is not; you can always open a command-prompt and pass the next argument to 'ps3-disc-dumper.exe' file: `/IUnderstandThatRunningSoftwareAsAdministratorIsDangerousAndNotRecommendedForAnyone` (see: [SecurityEx.cs](https://github.com/13xforever/ps3-disc-dumper/blob/master/Ps3DiscDumper/Utils/SecurityEx.cs#L16))

But let me tell you a brief history:

I was about to make a fork of 'ps3-disc-dumper' to modify the source-code and share this way a compiled release without the restrictions, but while I was analyzing the source-code I just found there was a command-line argument available and intentionally undocumented by the author (who tries to adoctrinate and enforce what he thinks are good and only practices that every user should follow), so I'm making it available to you through this batch-script file. Because not everybody has the time or experience to look at the source-code and find the "key".

That's all. Enjoy it!
