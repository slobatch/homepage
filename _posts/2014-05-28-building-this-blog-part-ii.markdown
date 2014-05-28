---
layout: post
title:  "Building this Blog: Part II"
date: 	2014-05-28
categories: blog_construction
comments: true
---

#Part II of III: Strengths and Weaknesses#

###Pelican Problems###
----

If you read [Part I]( {{ post_url 2014-05-28-building-this-blog-part-i }}), you will know that I was very wary of using a static site generator. When I was working with Pelican, to say that I was confused would be an understatement. Recall that I had three main issues with it: 

1. **Pelican's documentation was lacking.**

2. **I didn't understand how the Pelican files came together.**

3. **Github doesn't run Pelican.**


###Jekyll's Strengths###
----

####**1. Jekyll's documentation is excellent for the uninitiated.**####
Regarding the first Pelican Problem, I must stress that it's not that I thought Pelican's documentation was missing something; it wasn't welcoming enough for me to find out if it was in the first place. I found that Jekyll's user guide was extremely friendly for someone who didn't understand static site generators. In fact, knowing what I know now, I now understand what I didn't get before, and if I was running my own server, would probably be able to get a static site up using Pelican just fine.

####**2. I understood quickly how Jekyll puts files together.**####

I realize now what I didn't understand about the Pelican files coming together had a little bit to do with the first problem, and a little bit to do with me. While I could get Pelican to process my files locally and output something into the `output/` directory, it felt like I was missing how the "black box" worked.

I'll admit that I was missing the point of using a static site generator, that I could create an element of a webpage once and reuse it throughout my site. I'll take whatever blame isn't placed on unfriendly documentation. I didn't understand how the content was different than the template, and that a template wasn't styling, but rather the file that told the compiler which pieces of html to put together. Even my failed attempts at using Wordpress way back in the day fared better. Jekyll addresses this way earlier on, and with more clarity. 

It's simple: any file that contains a YAML front matter block gets processed. The `layout` variable defines which layout gets used. The layout simply specifies the order that smaller html elements go in. 

So for your **index.html**, you might have something like:

{% highlight html %}

---
layout: home
---

<!-- The part above is the front matter. -->
<!-- It tells Jekyll that this file should get processed. -->

<!-- The part below is the content that you -->
<!-- want to appear ONLY on your homepage. -->

<div class="main_content">
	...
</div>
{% endhighlight %}

The frontmatter points to a file in a directory appropriately called `_layouts/`. In this case, the file referenced is **home.html**. It would look something like this:

{% highlight html %}
{% raw %}
<!DOCTYPE html>
<html>

	<!-- The stuff below is Liquid templating language. -->
	<!-- It's refreshingly simple. -->
	{% include head.html %}
	<body>
		{% include header.html %}
  		{{content}}
	</body>

{% endraw %}
</html>

{% endhighlight %}

Notice how simple the home.html template looks. It `include`s **head.html**, which contains all the junk ususally in the `<head>` tag of an html file, including links to css files and metadata, and it `include`s **header.html**, which contains a site header that would get re-used from page to page. The `{% raw %}{{content}}{% endraw %}` points where the rest of **index.html** (which you'll recall references this layout) goes.

It all seems pretty straightforward for anyone who's ever learned a scripting language.


####**3. Github runs its files through Jekyll**####

Finally, with Pelican it seemed like I could just upload Markdown files to my repo and see posts come out as beautifully styled html, but I couldn't, and that was stressful. I realized that I could just push the `output/` folder to my repo and get everything to work fine, but that seemed to defeat the purpose. What if I had wanted to create a blog post while I was away from my computer, which was the one which had Pelican installed? I'd just have to wait until I got back. And because Github Pages was just hosting some pages, and not giving you an actual server, I couldn't install Pelican on it. 

On the one hand, I could have paid some money and paid for an AWS instance, and installed Pelican on it. On the other hand, that was way out of scope for the project of creating a personal website. On the one hand, I could have paid some more money and paid a company to use a server and have them install all the necessary stuff (perhaps Pelican included), but that seemed like a waste. With Github Pages, I could host my site for free-ninety-nine, the perfect price when I couldn't even be sure the thing would work.

When I discovered that Github already ran all of its Pages through Jekyll, the deal was sealed. I could develop my site locally, push all the config files, the settings, and the static pages and styles, and from there on out, all I would need to do to publish a blog post would be to push an appropriately named Markdown file. 

Wordpress it isn't, but it's pretty darn good.
