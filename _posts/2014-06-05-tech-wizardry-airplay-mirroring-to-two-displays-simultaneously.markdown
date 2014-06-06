---
layout: post
title:  "Tech Wizardry: Airplay Mirroring to Two Displays Simultaneously"
date:	2014-05-28
category: tech wizardry
comments: true
---

Next week, I'm helping to organize a conference. It's called [InboxAwesome](http://www.inboxawesome.org). As part of that conference, we're going to be using some big flat-screen TVs to display speakers' decks and company logos. The problem is that the displays need to be in two different places. It goes without saying that a wireless solution is desirable; no one wants 100 feet of HDMI cables running through a hip DUMBO loft, tripping up the tech elite.

We thought, "Maybe we can get two Apple TVs and just do Apple Airplay mirroring to both of them." We had the Apple TVs, and googling a solution yielded no results. You can't do airplay mirroring to two different displays natively. No bueno.

However, a third party app called [AirParrot](http://www.airsquirrels.com/airparrot/) exists that replicates the native Airplay abilities very well. Unfortunately, it doesn't do Airplay mirroring or streaming to two displays either.

>**You _can_ mirror to two Apple TVs at once...**

It turns out there's a workaround. It turns out that you _can_ mirror to two Apple TVs at once via AirParrot. The trick is that you just run two instances. It turns out that you can run two separate instances of the same app on a mac!

####How it's done:####

1. Set up your two Apple TVs and put them on the same network as your computer.
2. Open up an instance of AirParrot and use it to mirror your display to the first Apple TV.
3. Open up your terminal, and type `open -n /Applications/AirParrot.app/`. The `-n` flag tells your Mac to open up a _new_ instance.
4. Use your second instance of AirParrot to set up mirroring with your second Apple TV.

Easy as pie.

**Note:** 

- Mirroring to two Apple TVs simultaneously will negatively impact your computer's performance. Your GPU, and presumably your network card, are doing a lot of work. You'll notice some lag when you move your mouse and do any sort of work. 
- At this time, I don't think you can mirror one specific app to two Apple TVs at the same time.
- There's a significant delay between what you're doing on your computer and the displays you're mirroring too. That shouldn't be too surprising.

If you try this yourself, let me know how it works for you in the comments!
