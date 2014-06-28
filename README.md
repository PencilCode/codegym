How To Build and Test gym.pencilcode.net
========================================
First install the prerequisites: git and nodejs (see "prequisites"
below if you don't yet have them.)

Then just do this:

<pre>
git clone https://github.com/PencilCode/fieldhouse.git
cd fieldhouse
npm install
npm run devserver
</pre>

This will generate the website and start a copy at
[localhost:9778](http://localhost:9778/).

You can edit the contents of the `src` subdirectory, and the
docpad process will regenerate the website as-needed.

To generate a static website (e.g., for serving through nginx or apache),
just `npm run generate`.  The static website is generated in the
`out` subdirectory.

Prerequisites
-------------

Getting git is easy:  On Linux, just `sudo apt-get install git` or
`sudo yum install git-core` if you don't have it.  On Mac, install
Apple's XCode package.  On Windows, there are git installers.

Next, you need node.js (which is the `node` and `npm` binaries).
The Ubuntu and Debian packages for node.js are pretty old, so don't
just apt-get install the packages.  Get and build the latest `node` and
`npm` and `grunt` binaries as follows:

(For Linux:)

<pre>
mkdir -p /tmp/nodejs && cd /tmp/nodejs
wget -N http://nodejs.org/dist/node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd `ls -rd node-v*`
./configure --prefix=$HOME/local
make install
echo 'export PATH=$HOME/local/bin:$PATH' &gt;&gt; ~/.bashrc
source ~/.bashrc
</pre>

(For Mac:)

<pre>
mkdir -p /tmp/nodejs && cd /tmp/nodejs
curl http://nodejs.org/dist/node-latest.tar.gz > node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd `ls -rd node-v*`
./configure --prefix=$HOME/local
make install
echo 'export PATH=$HOME/local/bin:$PATH' &gt;&gt; ~/.profile
source ~/.profile
</pre>

