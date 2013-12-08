## The Challenge
As a developer it helps to be able to understand a client’s perspective and to build suitable applications to help them in their field. This means knowing a bit about the world. We’ll help this background knowledge by doing looking at some economic data, and also testing our XML parsing skills.

The file [`cia-1996.xml`](http://rubylearning.com/data/cia-1996.zip) is the data from the CIA World Factbook of 1996 in XML format. It has details about 260 countries across five continents. Your challenge, should you choose to accept it, is to uncover the following details buried within this file:

 - What is the population of the country with the most people? Yes, we know it’s China, but just how many people lived there in 1996?
 - What are the five countries with the highest inflation rates, and what were those rates in 1996?
 - What are the six continents in the file and which countries belong to which continent? Can you also produce them in alphabetical order?
 - 
Once you’ve worked out how to do part (2), then you can do anything with this file; all you need is a bit of time. Knowing how to do (2) you could then do (3) without too much effort.

You can use any XML library. I used REXML as it’s already there if you have Ruby installed; so don’t need to worry about any gem installs. You may also want to look at how REXML uses XPath. 

## HINT:
Nokogiri also works for XML :)

