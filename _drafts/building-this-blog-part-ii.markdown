---
layout: post
title:  "Building this Blog Part II"
date: 	2014-05-27
categories: blog_construction
---

###Part II of II###

If you read [Part I]( ), you will know that I was very wary of using a static site generator. When I was working with Pelican, to say that I was confused would be an understatement. Recall that I had three main issues with it: 

1. Pelican's documentation was lacking.

2. I didn't understand how the Pelican files came together.

3. Github doesn't run Pelican. 

Regarding point one, I must stress that it's not that I thought Pelican's documentation was missing something; it wasn't welcoming enough for me to find out if it was in the first place. I found that Jekyll's user guide was extremely friendly for someone who didn't understand static site generators. In fact, knowing what I know now, I now understand what I didn't get before, and if I was running my own server, would probably be able to get a static site up using Pelican just fine.

1. Jekyll's documentation is excellent for the uninitiated. 

I realize now what I didn't understand about the Pelican files coming together had a little bit to do with the first problem, and a little bit to do with the third problem. While I could get Pelican to process my files locally and output something into the `output/` directory, I couldn't for the life of me get the blog published on Github Pages unless I added the files in the `output/` directory. For me, that seemed to defeat the purpose of using a static site generator. 

I'll admit that I was missing the point of using a static site generator, that I could an element of a webpage once and reuse it thorughout my site. I'll take whatever blame isn't placed on unfriendly documentation. I didn't understand how the content was different than the template, and that a template wasn't styling, but rather the file that told the compiler which pieces of html to put together. Even my failed attempts at using Wordpress way back in the day faired better. Jekyll addresses this way earlier on, and with more clarity. 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2\. I understood quickly how Jekyll puts files together.

It seemed like I could just upload Markdown files to my repo and see posts come out as beautifully styled html, but I couldn't, and that was stressful. 
