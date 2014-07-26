Living Documentation client
================

WIP - Work in progress, not ready yet.

1. Prepare host machine
-------------
The preperation of the host machine comes down to the installation of the virtualization mechanism. After that everything else is automated.

1. Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads) from the official site (the newest version).
2. Check the installation by typing `VirtualBox --help`, you should see somthing like `Oracle VM VirtualBox Manager 4.3.10` with the list of available commands.
3. Install [Vagrant](https://www.vagrantup.com/downloads) from the official site (same here, the newest version).
4. Check the installation by typing `vagrant -v` - you should see something like `Vagrant 1.5.1`.
5. Clone project and go to project's directory - it'll be the project root directory.


2. Prepare guest machine
-------------

1. Be sure you're in the the project root directory (where the Vagrantfile is located) and type `vagrant up`
2. Do at least 15 deep knee bends or arm swings while waiting - automation FTW!
3. In the end you should see something like `Notice: Finished catalog run in 299.02 seconds`. If something went wrong, check docs/referenceSuccessfulRun.txt for correct reference output.
4. Congratulations! You've just created and provisioned your server.


3. Build the project
-------------

1. Ssh to the guest machine - from the project root (where the Vagrantfile is located) type `vagrant ssh`.
2. You should connect to the guest machine. Go to example project directory : `cd /vagrant  `.
3. Build and run you project by typing: `make install && make run`
4. On you host machine go to http://192.168.33.10 and verify the build according to the checklist displayed there.


4. What's next
-----------
- You can deploy the app by typing `grunt production`.
- You can develop the app with real time feedback by typing `grunt watch`.
- Play around with the project - change the less styles and observe the page, make the tests fail etc.
- You can use it in your both green- and brownfield projects by using the code in index.html in your layouts and pages.

Technology stack
-----------

Using this configuration you can use the **nodejs, less, requirejs, grunt, bower, karma, jasmine**.
