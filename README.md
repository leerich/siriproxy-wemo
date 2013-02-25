siriproxy-wemo
==============

About
-----
Siriproxy-wemo is a [SiriProxy](https://github.com/plamoni/SiriProxy) plugin that uses the [simple_upnp](https://github.com/denniskuczynski/simple_upnp) gem to find [WeMo](http://www.belkin.com/us/wemo-switch) devices and control them via an undocumented API. It does not require a jailbreak, nor do I endorse doing so.

Prerequisites
-------------
- You must have SiriProxy installed and working.  [HOW-TOs for Siriprixy](https://github.com/plamoni/SiriProxy/wiki/Installation-How-Tos)
- You must have at least one WeMo unit configured on your network.

WeMo
------

Belkin has not officially released a WeMo API. The WeMo devices register on your network as well as Belkin's. They can also be configured for [IFTT](http://ifttt.com/). On the WeMo support boards, an API has been discussed, but is still something that may or may not come to fruition. 

Installation
------------
Simply add the following to your config.yml:  

    - name: 'WeMo'
    git: 'git://github.com/bobbrodie/siriproxy-wemo.git'


Usage
-----

**Turn (on|off) the (device)** - Turn on or off the given device, where the device is the friendly uPNP name.

Licensing
---------
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

Apple
-----
I am not affiliated with Apple in any way. They do not endorse this application. Apple owns all the rights to Siri (and all associated trademarks). This software is provided as-is with no warranty whatsoever. Apple could block this type of software or your hardware if they wanted. I'm a huge fan of Apple and the work that they do. This software was developed only to explore the currently available options to extend Siri's functionality. Please refrain from using this software for anything malicious.

Belkin
------
I am not affiliated with Belkin in any way. They do not endorse this application. Belkin owns all the rights to WeMo (and all associated trademarks). This software is provided as-is with no warranty whatsoever. Using unofficial APIs is never recommended and I am not responsible for any damage that may occur from the use of this software.

Disclaimer
----------
THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.