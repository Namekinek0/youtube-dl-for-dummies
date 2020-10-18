# youtube-dl-for-dummies
YDFD is a group of two scripts written in batch and bash in order to use youtube-dl without opening a cmd or a powershell window and to update it every time you use it.
   
# Requirements   
- First of all, you must disable Defender Smartscreen and, if any, the other useless protections in order to run batch files.   
  In order to do that, this link should be enough https://www.maketecheasier.com/disable-smartscreen-filter-windows10/
- Secondly, in order to let the script fully work, you'll need msys2 and youtube-dl(for real?). However, the script gives you instructions on how to install them when you need it.   
# How to run   
- Simply download both start-youtube-dl.bat and youtube-dl.sh, and place them inside the directory in which you will download your videos.
- Run start-youtube-dl.bat, and follow the instructions.   
  Running start-youtube-dl.bat is always preferred, and probably mandatory the first time, since it searches for msys2 and helps you to download and install it, if it is not found.
