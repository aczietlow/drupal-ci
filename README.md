# Drupal CI

Drupal ci is an example of my opinion of what a developer workflow with Drupal should be.

##Requirements

------------
* [virtualBox](https://www.virtualbox.org/wiki/Downloads) >= 4.3.x
* [vagrant](http://downloads.vagrantup.com/) >= 1.6.x

## Quick Start

## Getting Started

------------------

1. From inside the project root, run `vagrant up` 
2. You will be prompted for the administration password on your host machine.
3. Open your hosts file on your host (e.g., `sudo vim /etc/hosts`), and add the following line:
> 10.33.36.11 drupal-ci.dev

4. Visit `drupal-ci.dev` in your browser of choice.

## How do I work on this?

------------------

1. From inside the project root `vagrant ssh`
2. Navigate to `/var/www/drupal-ci.dev`

There is where your project is mounted on the guest machine. Run `drush` commands from the drupal root (`www` directory) 
just like you would without a virtual box.

3. run build/install.sh from the project root to re-install Drupal.

## Opinions

------------------

Below are the problems we're solving with this workflow, and my opinions on how to solve them along with some background
notes on the decisions made.

### Dependencies

Let's deal with the elephant in the room. Drupal 7 isn't great at handling dependencies.

We'll be using composer handle our dependencies (including drupal). Fortunately there's been a great amount of work put 
towards supporting drupal in a composer workflow. 

`packagist.drupal-composer.org` 

A parser scans d.o. for project information and makes them available via composer. See https://www.drupal.org/node/1886820
for more information.

### Build Process

By default composer will install dependencies to the /vendor directory. To build drupal, your custom and contrib modules,
and libraries I'll be using craychee/rootcanal.

Another alternative is to use Drupal installers. I need to look more into this in the future.

## Credits

------------------

These people and their provided resources were extremely valuable in the process of creating this environment.

[Michelle Krejci] (https://twitter.com/dev_meshev) 
