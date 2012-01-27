## A photo sharing site that put China and America side by side.
**demo site:** coming soon.

### Why this site?
Country stereotype is everywhere thanks to the media. But maybe there is more in common between us and people in other countries whose life we know little about and whose values we sweepingly disagree with. By putting similarly themed images of China and America side by side, it allows you to see what is really so different about us and what is really the same.  

### Features
* User can upload an image to start a photo set. He can provie many tags to the photo. 
* Each photo is linked with either China or America. 
* Other users can upload counterpart photo for the other country.
* They can also post related photos for the same country under the set.
* People can rate any photo so each set and each tag would have the best rated photo about China and one about the US. 
*each photo has a home page where you can read people's comments and see related photos thumbnail.
* Eventually on the home page, you can see a nice selection of top photos about the two countries and browse the set and nagivate through all related images.


### Keywords
jquery.ad-gallery, Rails 3.1, Twitter Bootstrap, Mongo, Paperclip

### Implementation Notes
Implementation is fairly straight forward. Photo belongs to a set(also called group), Photo has and belongs to many tags. Photos has many ratings. Photo belongs_to country

### Areas for Improvement
* Better layout for the home page with best photos most highlighted.
* Need to implement the user rating system. Need to roll out my own. Maybe make it into a gem.

 
