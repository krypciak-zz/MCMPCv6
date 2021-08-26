MCMulator PC v6 is an Integer based Minecraft computer.<br>

<h2>Screen</h2>
<ul>
  <li><strong>RGB</strong>
    <ul>
       <li>Max size: 240x240</li>
       <li>Colors: RGB, ~16 milion colors</li>
       <li>See how to screen works:</li>
    </ul>
  </li>
  <li><strong>16 color calette</strong>
    <ul>
      <li>Max size: 170x170 (Could be easly expanded)</li>
      <li>Colors:&nbsp;  white, yellow, orange, red, magenta, purple, blue, light blue, lime, green, brown,</li>
      cyan, light gray, pink, gray, black (Minecraft concrete colors)
    </ul>
   </li>
</ul>
<br>
<h2>Storage</h2>

In MCMPCv6, storage is based on <strong>NBT</strong>. Integers are stored in jukeboxes.<br>
Data is accessed by an NBT path:<ul> <li>For RAM and IDD: <em>RecordItem.tag.a</em></li><li>For PES: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>RecordItem.tag.a[<strong>INDEX</strong>]</em></li></ul><br>
The position of the armor stand reading data is calculated with<br> this equation: &nbsp;&nbsp;x = cell % storageWidth,&nbsp; z = cell / storageWidth<br>

<h4>Types of storage</h4>
<ul>
  <li><strong>RAM</strong><ul>
      <li>Size: 250 (Easly expandable)</li>
      <li>1 dimensional</li>
      <li>Flushed at program start</li>
      <li>Fastest of all 3</li>
    </ul></li>
  <li><strong>PES (Program Execution Space)</strong><ul>
      <li>Size: 250X250 = 62500 (Easly expandable)</li>
      <li>2 dimensional</li>
      <li>Insted of single integer, there's an 11-integer array.</li>
      <li>This storage is used for storing instructions, 1 instruction = 1 jukebox</li>
    </ul></li>
    <li><strong>IDD (Integer Data Drive)</strong><ul>
      <li>Size: 250X250 = 62500 (Easly expandable)</li>
      <li>2 dimensional</li>
      <li>This storage is used for storing data that isn't flushed on start,</li>it also supports 1 and 2 dimensional arrays
    </ul></li>
</ul>

<br>
<h2>CPU</h2>
The CPU in MCMPCv6 is using my language called KLLL, and is running at abount ~12000 IPS. (Optimized version) (Depends on your irl pc speed)


<h3>Instructions</h3>
In command syntax, ? shoud be replaced by integer value.<br>
? can be preceded by @. @ can be repleced by 'n' or 'c'.<br>
'n' means 'number', and 'c' means 'cell'. If it is 'n', that<br>
means that the next ? represets an value. If it is 'c',<br>
that means that the next ? represets an cell that the value<br>
is readden from.<br>
Here's a basic piece of code visualizing that:<br>
&nbsp;&nbsp;&nbsp;if(@=='n') value = ?;<br>
&nbsp;&nbsp;&nbsp;else value = readFromRam(?);<br>

<h4>Instruction set</h4>
<ol>
  <li><strong>If</Strong><br>
    If jumps to a cell if the equation is false.<br>
    Command synatx: If ? ? @ ? ?<br>
    <ul>
     <li>arg1: an operation, 0 -> =, 1 -> <, 2 -> >, 3 -> <=, 4 -> >=, 5 -> !=</li>
     <li>arg2: a cell to read the first value from</li>
     <li>arg3 & arg4: second value</li>
     <li>arg5: cell to jump to</li>
    </ul>
  </li>
  <li><strong>Init</Strong><br>
    Init is a quick way to initialize a variable in ram.<br>
    Command synatx: Init ? ?<br>
    <ul>
     <li>arg1: value to write</li>
     <li>arg2: cell to write the value to</li>
    </ul>
  </li>
  <li><strong>Add</Strong><br>
    Add is a quick way of adding 2 numbers.<br>
    Command synatx: Add ? @ ? ?<br>
    <ul>
    <li>arg1: a cell to read the first value from</li>
     <li>arg2 & arg3: second value</li>
     <li>arg4: a cell to store the result</li>
    </ul>
  </li>
  <li><strong>Cell</Strong><br>
    Cell allows controlling the flow of the code.<br>
    Command syntax:<ul>
      <li>Cell Jump ?</li>arg2: cell to jump to
      <li>Cell Call ?></li>arg2: cell to call
      <li>Cell Return</li>Pops the last stack value and jumps to it
    </ul>
  <li><strong>Pixel</Strong></li>
  <li><strong>Math</Strong></li>
  <li><strong>Idd</Strong></li>
  
</ol>

