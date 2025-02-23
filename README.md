#Inspiration

This project was inspired by a feeling of frustration with the current collaborative note-keeping apps, specifically for collaboration within a large group. We felt that current collaborative note keeping apps were too convoluted, and we didn’t know of any where an entire notebook could be queried vocally (or through text), which seemed a brilliant accessibility and convenience feature, so users wouldn’t have to trawl through huge amounts of notes to find what they are looking for. Additionally, we thought that this would be a fun project for our team while we learned Rails for Ruby as none of us were very experienced with it before this hackathon. 

#What it does

Bundles is a collaborative note taking and sharing app, where entire organisations can have a huge web of interconnected notes. These notes can be created in or imported into Bundles. When they are in Bundles, the notes can be viewed in a graphical format similar to a large undirected tree that shows connections between different notes. Additionally, a user can ask questions about the contents of the notes to a chatbot through either speech or text input. 

#How we built it

This project was built with Rails for Ruby and thus is mainly written in Ruby. The speech to text functionality is implemented with a small lightweight AI model running in a Bash script to ensure Ruby compatibility. The chatbot uses Google Gemini API keys, with guidelines that we have implemented to prevent it from hallucinating and answering about anything other than what’s contained within the notes bundle. 

#Challenges faced

Getting used to Rails for Ruby was an initial challenge, and some of our members installed NixOS on Windows Subsystem for Linux to try and work in a more suitable environment for the primarily Linux based development platform. Additionally, getting the speech to text functionality to work was one of our biggest challenges with the eventual solution (found very late at night after several, several hours and many energy drinks) was found to be making calls to a local model running in a Bash script that synthesises vocal input to text.

#Accomplishments that you’re proud of

We’re proud of getting a functional product up and running the limited time available during the hackathon. Also, we’re proud to have used and learned so many new technologies (Ruby, Rails for Ruby, NixOS) in that short time period. We are also very happy with the visual “look” and presentation of our product, which we feel looks quite polished. 

#What you learned

We definitely all became very familiar with Rails for Ruby by the end of our project, which we feel is a significant achievement. It was very interesting to compare that with some of the other similar systems that we were more familiar with like PHP and Spring. Furthermore, some of us were not experienced with model/controller/route frameworks before this, but we were all very well acquainted with the idea by the end of the hackathon. We also gained valuable experience working as a team with people we hadn’t met before, and felt we learned communication and collaboration skills through this project. 

#Future work

There’s definitely a lot more work to be done on Bundles. We would like to increase functionality for solo users who aren’t working collaboratively as our hackathon development was mainly focussed on the idea of collaborative development. We also want to improve our markdown editor and add the concept of notebook classes, where there could be multiple different notebooks within the one shared organisation class. 

