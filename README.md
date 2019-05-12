# Game-of-Thrones-Map

## View in Chrome for all styling

## Questions
How do characters move and interact throughout Game of Thrones?

## TODOs
- Add episode description
- way to explore character without going through location
- zoom details? - show character images if zoomed in close enough
- move back button?
- click out of location to unselect
- click on pin to unselect location
- close sidebar when unselect location
- if click on already selected location - change character being displayed?
- bug - remove back button when scrub
- bug - if click on a character and one of their locations isn't rendered, need to drop a pin on the map

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

## Use Notes
Click on location -> click on character
- scrub timeline -> scrubs through season/episodes as normal
- clicks 'select character' -> scrubs through movements for character

Single character scrubbing
- indicate selected character - picture in right hand top corner?
- show info like which characters they're with
- intra-episode movements?
- animate movements?
- Draw then fade lines to show movement?
- pan map with big movements? (@dany)

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
