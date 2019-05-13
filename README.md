# Game-of-Thrones-Map

## View in Chrome for all styling

## Questions
How do characters move and interact throughout Game of Thrones?

## TODOs
- bug - if click on a character and one of their locations isn't rendered, need to drop a pin on the map
- bug - if hover over origin/etc, need to drop pins if necessary
- add a way to unselect character
- note if a character is not in an episode
- fix episode title styling (wierd for long episodes, eg s3 e4)
- style info box
- re-style character thumbnails
- don't make character selection disappear when scrub
- zoom details? - show character images if zoomed in close enough
- move back button?
- Add episode description
- pan map to locations that get rendered if out of view?

- ~~Backend - on initialization - get all episodes w/ locations to have in front-end~~
- ~~Backend - call for location by season/episode~~
- ~~Backend - call for character by season/episode~~
- ~~Backend - call for character to get timeline~~
- ~~Backend - provide number of characters at each loc in initial call~~
- ~~scrubbable timeline~~
- ~~turn off highlight for "Unknown" and "Self"~~
- ~~back button in side panel (char page -> loc page)~~
- ~~link backend to frontend~~
- ~~Add character wiki links (in db)~~
- ~~Improve character pictures on location page. Make consistent proportions.~~
- ~~bug - back button does not work at all~~
- ~~Add episode name and wiki link (Name and wiki link done)~~
- ~~selecting character - change locations to diff color? red too subtle?~~
- ~~add leaflet watermark~~
- ~~bug - back button doesn't unhighlight location icons (if char in multiple locations)~~
- ~~indicate number of (major) characters at location?~~
- ~~click on location - side bar pop open~~
- ~~bug - pin colors~~
- ~~Add tick marks to timeline (to help with differentiating between episode scrubbing and scene scrubbing)~~
- ~~close panel on use timeline~~
- ~~way to explore character without going through location~~
- ~~click out of location to unselect~~
- ~~click on pin to unselect location~~
- ~~close sidebar when unselect location~~
- ~~bug - remove back button when scrub~~
- ~~bug - update pins when select character~~

## Video Things to Include
- show map
- explain shading of pins
- select location
- look at all location data
- scrub to new episode, see pins change
- select location
- select character
- look at character data
- hover over things to see where people are
- check to select character
- see that map updates
- scrub to new episode (one that they're in)
- select location
- switch character selected 
- scrub to new episode (one that they're not in)
- see indication that not in episdoe

## Ideas
- Show where characters are from - could by implemented as a new map, or as a filter (or both?)
- add filters: e.g. show where all starks are (bonus idea - render "heaven")


## Final Deliverables
- Interactive Poster: a video or interactive web page in the style of a poster presentation.
- Paper: a 2-4 page paper (not counting references) written in the form of a conference paper submission. The paper should present your goals, related work, a detailed description of your system, and a discussion of your design.
- Project Page: ~~List title~~, ~~team members~~, summary image, ~~abstract~~, link to paper, poster, ~~running instructions for the software and other optional materials~~. Host the page with Github Pages.
- Readme File: In the repository's readme.md, include a breakdown of how the work was split among the group members and a commentary on the project process.
- Code: Push code to OG MIT github
- Application: Update live heroku


Work was split evenly between the team members. Much of the initial dataset exploration and brainstorming was taken from our work on A3. We knew we wanted to move our original idea into a map-based visualization based on feedback we received on A3 and our own thoughts on the motivating question. From this base, we began pulling geographic data and more detailed character data from datasets we had previously investigated in A3. After we identified what data was available to us, we began to brainstorm use cases for the visualization and to sketch out possible views. We eventually settled on a classic map view with an interactive timeline, information panel, and markers for geographic points of interest. After feedback from our milestone check-in and some separate user testing, we decided to move toward allowing the user to focus on following a single character through time. Many people simply wanted to be reminded of a single character's story arc for a season or compare the geographic movement of a character to what they had in mind from just watching the show. We kept the original functionality of the timeline, but added the option for users to follow a single chosen character.


The data curation and cleaning, backend work, and small front-end tweaks were done by Gabrielle. The majority of the front-end work and user testing/iterating was done by Mary. All final ideas put into implementation were discussed and fine-tuned together.
