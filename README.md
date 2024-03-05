# ps3-disc-dumper UAC bypass

### A simple batch-script file with name "Loader.cmd" that serves to run [PS3 Disc Dumper](https://github.com/13xforever/ps3-disc-dumper) program without the UAC restriction.

In other words, it will let you run and use the program under an Administrator account to get rid of this error message:

![enter image description here](/Images/error.png)

------------------

## 🤖 Getting Started

Download the latest release by clicking [here](https://github.com/ElektroStudios/ps3-disc-dumper-UAC-bypass/releases/latest),

Simply put the 'Loader.cmd' script file together with the 'ps3-disc-dumper.exe' executable file, and run the script file.

## ❓ Is this batch-script file really necessary?

Of course it is not; you can always open a command-prompt and pass the next argument to run 'ps3-disc-dumper.exe' file: 
 - `/IUnderstandThatRunningSoftwareAsAdministratorIsDangerousAndNotRecommendedForAnyone`
   (see: [SecurityEx.cs](https://github.com/13xforever/ps3-disc-dumper/blob/master/Ps3DiscDumper/Utils/SecurityEx.cs#L16))

But let me tell you a brief history:

I was about to fork 'ps3-disc-dumper' to modify the source code and thus share a compiled version without the restrictions, but while analyzing the source code I found that command line argument available but intentionally "hidden" and undocumented by the author, so I make it available to you through this batch-script file, because: 
1. Not everyone has the time or experience to look at the source code and find the "key".
2. I can't respect the decission of this command-line switch to be hidden to the public, so with this repository I'll try to give visibility to it, since [the author avoids to mention this command-line switch even to end-users that suffered this restriction and opened an issue to request help, and while apart from denying any help to affected users, he tries to indoctrinate and enforce his own and unique vision of doing things and using Windows in "the correct and only way"](https://github.com/13xforever/ps3-disc-dumper/issues/34#issuecomment-1615844934). Come on...

A software should not invade or interfere with user preferences; It is the software that must adapt to the end user's environment, and not the other way around.

That's all. Long live freedom of choice, and enjoy this!.

## 🔄 Change Log

Explore the complete list of changes, bug fixes, and improvements across different releases by clicking [here](/Docs/CHANGELOG.md).

## ⚠️ Disclaimer:

This Work (the repository and the content provided in) is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the Work or the use or other dealings in the Work.

This Work has no affiliation, approval or endorsement by the author(s) of [PS3 Disc Dumper](https://github.com/13xforever/ps3-disc-dumper).

## 💪 Contributing

Your contribution is highly appreciated!. If you have any ideas, suggestions, or encounter issues, feel free to open an issue by clicking [here](https://github.com/ElektroStudios/ps3-disc-dumper-UAC-bypass/issues/new/choose). 

Your input helps make this Work better for everyone. Thank you for your support! 🚀

## 💰 Beyond Contribution 

This work is distributed for educational purposes and without any profit motive. However, if you find value in my efforts and wish to support and motivate my ongoing work, you may consider contributing financially through the following options:

<br></br>
<p align="center"><img src="/Images/github_circle.png" height=100></p>
<p align="center">__________________</p>
<h3 align="center">Becoming my sponsor on Github:</h3>
<p align="center">You can show me your support by clicking <a href="https://github.com/sponsors/ElektroStudios/">here</a>, <br align="center">contributing any amount you prefer, and unlocking rewards!</br></p>
<br></br>

<p align="center"><img src="/Images/paypal_circle.png" height=100></p>
<p align="center">__________________</p>
<h3 align="center">Making a Paypal Donation:</h3>
<p align="center">You can donate to me any amount you like via Paypal by clicking <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=E4RQEV6YF5NZY">here</a>.</p>
<br></br>

<p align="center"><img src="/Images/envato_circle.png" height=100></p>
<p align="center">__________________</p>
<h3 align="center">Purchasing software of mine at Envato's Codecanyon marketplace:</h3>
<p align="center">If you are a .NET developer, you may want to explore '<b>DevCase Class Library for .NET</b>', <br align="center">a huge set of APIs that I have on sale. Check out the product by clicking <a href="https://codecanyon.net/item/elektrokit-class-library-for-net/19260282">here</a></br><br align="center"><i>It also contains all piece of reusable code that you can find across the source code of my open source works.</i></p>
<br></br>

<h2 align="center"><u>Your support means the world to me! Thank you for considering it!</u> 👍</h2>
