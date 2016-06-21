# rlist y dplyr

## rlist
http://renkun.me/rlist-tutorial


```r
library(rlist)


m <- fromJSON("data/meetup-members.json")


str(m)
```

```
## List of 2
##  $ results:'data.frame':	200 obs. of  18 variables:
##   ..$ country       : chr [1:200] "co" "co" "us" "co" ...
##   ..$ city          : chr [1:200] "Bogotá" "Bogotá" "San Francisco" "Bogotá" ...
##   ..$ topics        :List of 200
##   .. ..$ :'data.frame':	4 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:4] "web-development" "javascript" "software-architecture" "critical-thinking"
##   .. .. ..$ name  : chr [1:4] "Web Development" "JavaScript" "Software Architecture" "Critical Thinking"
##   .. .. ..$ id    : int [1:4] 15582 7029 56473 15544
##   .. ..$ :'data.frame':	27 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:27] "art" "education" "newtech" "craftswap" ...
##   .. .. ..$ name  : chr [1:27] "Art" "Education" "New Technology" "Crafts" ...
##   .. .. ..$ id    : int [1:27] 1502 8476 9696 10099 10454 10581 15227 15321 15635 15720 ...
##   .. ..$ :'data.frame':	29 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:29] "future" "newtech" "web" "opensource" ...
##   .. .. ..$ name  : chr [1:29] "Futurology" "New Technology" "Web Technology" "Open Source" ...
##   .. .. ..$ id    : int [1:29] 429 9696 10209 563 3833 10553 19882 48471 38724 1064 ...
##   .. ..$ :'data.frame':	33 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:33] "latinmusic" "musicians" "opensource" "hiking" ...
##   .. .. ..$ name  : chr [1:33] "Latin Music" "Musicians" "Open Source" "Hiking" ...
##   .. .. ..$ id    : int [1:33] 130 173 563 638 1122 1502 3833 8652 15018 15083 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	47 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:47] "science" "environment" "musicians" "esl" ...
##   .. .. ..$ name  : chr [1:47] "Science" "Environment" "Musicians" "English as a Second Language" ...
##   .. .. ..$ id    : int [1:47] 85 89 173 182 206 223 242 1201 1502 2349 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "latinmusic" "musicians" "esl" "digcam" ...
##   .. .. ..$ name  : chr [1:50] "Latin Music" "Musicians" "English as a Second Language" "Digital Photography" ...
##   .. .. ..$ id    : int [1:50] 130 173 182 206 223 242 407 579 611 1122 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "art" "education" "social" "community" ...
##   .. .. ..$ name  : chr [1:5] "Art" "Education" "Social" "Community" ...
##   .. .. ..$ id    : int [1:5] 1502 8476 10581 15227 15236
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "esl" "innovation" "softwaredev" "newtech" ...
##   .. .. ..$ name  : chr [1:10] "English as a Second Language" "Innovation" "Software Development" "New Technology" ...
##   .. .. ..$ id    : int [1:10] 182 1954 3833 9696 10538 16223 17232 23199 28980 30928
##   .. ..$ :'data.frame':	8 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:8] "gameprog" "softwaredev" "edtech" "newtech" ...
##   .. .. ..$ name  : chr [1:8] "Game Programming" "Software Development" "Education & Technology" "New Technology" ...
##   .. .. ..$ id    : int [1:8] 3287 3833 7203 9696 15018 19225 21429 48471
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "latinmusic" "musicians" "esl" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "Latin Music" "Musicians" "English as a Second Language" ...
##   .. .. ..$ id    : int [1:50] 89 130 173 182 185 206 211 223 242 387 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "statistical-computing" "big-data" "data-analytics" "computer-programming" ...
##   .. .. ..$ name  : chr [1:50] "Statistical Computing" "Big Data" "Data Analytics" "Computer programming" ...
##   .. .. ..$ id    : int [1:50] 15280 18062 30928 48471 98380 115768 115913 17558 15360 19146 ...
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "prodev" "small-business-marketing-strategy" "innovation" "online-marketing" ...
##   .. .. ..$ name  : chr [1:14] "Professional Development" "Small Business Marketing Strategy" "Innovation" "Online Marketing" ...
##   .. .. ..$ id    : int [1:14] 3880 17325 1954 15585 21681 15116 15099 1998 563 9696 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "esl" "french" "digcam" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "English as a Second Language" "French Language" "Digital Photography" ...
##   .. .. ..$ id    : int [1:50] 89 182 185 206 223 242 408 485 611 638 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "science" "environment" "latinmusic" "musicians" ...
##   .. .. ..$ name  : chr [1:50] "Science" "Environment" "Latin Music" "Musicians" ...
##   .. .. ..$ id    : int [1:50] 85 89 130 173 182 185 206 211 223 242 ...
##   .. ..$ :'data.frame':	33 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:33] "opensource" "softwaredev" "javascript" "newtech" ...
##   .. .. ..$ name  : chr [1:33] "Open Source" "Software Development" "JavaScript" "New Technology" ...
##   .. .. ..$ id    : int [1:33] 563 3833 7029 9696 9886 15582 21441 48471 85951 18062 ...
##   .. ..$ :'data.frame':	8 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:8] "art" "real-estate" "finance" "bilingual-spanish-english" ...
##   .. .. ..$ name  : chr [1:8] "Art" "Real Estate" "Finance" "Bilingual Spanish/English" ...
##   .. .. ..$ id    : int [1:8] 1502 18964 22467 22885 23274 23884 25698 17558
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "creative" "language-exchange" "latinmusic" "opensource" ...
##   .. .. ..$ name  : chr [1:14] "Creativity" "Language Exchange" "Latin Music" "Open Source" ...
##   .. .. ..$ id    : int [1:14] 36229 26212 130 563 48471 15401 30928 15167 10209 9696 ...
##   .. ..$ :'data.frame':	9 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:9] "big-data" "machine-learning" "data-science" "data-analytics" ...
##   .. .. ..$ name  : chr [1:9] "Big Data" "Machine Learning" "Data Science" "Data Analytics" ...
##   .. .. ..$ id    : int [1:9] 18062 29971 102811 30928 38458 55324 15280 115913 383411
##   .. ..$ :'data.frame':	9 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:9] "photo" "art" "newtech" "spirituality" ...
##   .. .. ..$ name  : chr [1:9] "Photography" "Art" "New Technology" "Spirituality" ...
##   .. .. ..$ id    : int [1:9] 223 1502 9696 10290 10306 10581 15046 15236 15992
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "edtech" "newtech" "web-development" "computer-programming" ...
##   .. .. ..$ name  : chr [1:10] "Education & Technology" "New Technology" "Web Development" "Computer programming" ...
##   .. .. ..$ id    : int [1:10] 7203 9696 15582 48471 206 15280 16613 18062 30928 98380
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	6 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:6] "innovation" "projectmgmt" "businessintell" "creative-writing" ...
##   .. .. ..$ name  : chr [1:6] "Innovation" "Project Management" "Business Intelligence" "Creative Writing" ...
##   .. .. ..$ id    : int [1:6] 1954 3438 10538 15322 18167 44584
##   .. ..$ :'data.frame':	31 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:31] "weightloss" "fitness" "robotics" "movies" ...
##   .. .. ..$ name  : chr [1:31] "Weight Loss" "Fitness" "Robotics" "Watching Movies" ...
##   .. .. ..$ id    : int [1:31] 240 242 682 1201 1589 1954 1998 3833 3880 7203 ...
##   .. ..$ :'data.frame':	12 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:12] "opensource" "cloud-computing" "statistical-computing" "big-data" ...
##   .. .. ..$ name  : chr [1:12] "Open Source" "Cloud Computing" "Statistical Computing" "Big Data" ...
##   .. .. ..$ id    : int [1:12] 563 15167 15280 18062 30928 98380 115768 115913 417 3833 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "webstandards" "opensource" "webdesign" "softwaredev" ...
##   .. .. ..$ name  : chr [1:50] "Web Standards" "Open Source" "Web Design" "Software Development" ...
##   .. .. ..$ id    : int [1:50] 417 563 659 3833 7029 9696 9886 15582 16216 21441 ...
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "opensource" "databasepro" "newtech" "web" ...
##   .. .. ..$ name  : chr [1:10] "Open Source" "Database Professionals" "New Technology" "Web Technology" ...
##   .. .. ..$ id    : int [1:10] 563 1245 9696 10209 15401 16216 23199 48471 78565 124668
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	4 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:4] "statistical-computing" "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:4] "Statistical Computing" "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:4] 15280 98380 115768 115913
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "latinmusic" "esl" "photo" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "Latin Music" "English as a Second Language" "Photography" ...
##   .. .. ..$ id    : int [1:50] 89 130 182 223 234 242 563 611 933 1122 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "test-driven-development" "learning" "intellectual-discussion" "computer-programming" ...
##   .. .. ..$ name  : chr [1:50] "Test Driven Development" "Learning" "Intellectual Discussion" "Computer programming" ...
##   .. .. ..$ id    : int [1:50] 25435 18296 15083 48471 8476 118991 7203 37339 49687 122939 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "edtech" "education" "big-data" "learning" ...
##   .. .. ..$ name  : chr [1:5] "Education & Technology" "Education" "Big Data" "Learning" ...
##   .. .. ..$ id    : int [1:5] 7203 8476 18062 18296 65780
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "science" "innovation" "edtech" "eurofootball" ...
##   .. .. ..$ name  : chr [1:23] "Science" "Innovation" "Education & Technology" "European Football" ...
##   .. .. ..$ id    : int [1:23] 85 1954 7203 7277 9696 9753 9772 14990 15067 15099 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "hiking" "robotics" "culturalcreatives" "meditation" ...
##   .. .. ..$ name  : chr [1:50] "Hiking" "Robotics" "Cultural Creatives" "Meditation" ...
##   .. .. ..$ id    : int [1:50] 638 682 1138 1322 1954 1998 3287 3336 3438 3833 ...
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "newtech" "cloud-computing" "mobile-technology" "big-data" ...
##   .. .. ..$ name  : chr [1:10] "New Technology" "Cloud Computing" "Mobile Technology" "Big Data" ...
##   .. .. ..$ id    : int [1:10] 9696 15167 16216 18062 30928 36167 48471 98380 115768 115913
##   .. ..$ :'data.frame':	2 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:2] "livemusic" "outdoors"
##   .. .. ..$ name  : chr [1:2] "Live Music" "Outdoors"
##   .. .. ..$ id    : int [1:2] 8652 15046
##   .. ..$ :'data.frame':	2 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:2] "art" "business-networking"
##   .. .. ..$ name  : chr [1:2] "Art" "professional-networking"
##   .. .. ..$ id    : int [1:2] 1502 15236
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "softwaredev" "newtech" "mobile-development"
##   .. .. ..$ name  : chr [1:3] "Software Development" "New Technology" "Mobile Development"
##   .. .. ..$ id    : int [1:3] 3833 9696 21441
##   .. ..$ :'data.frame':	49 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:49] "latinmusic" "classical" "esl" "vegan" ...
##   .. .. ..$ name  : chr [1:49] "Latin Music" "Classical Music" "English as a Second Language" "Vegan" ...
##   .. .. ..$ id    : int [1:49] 130 133 182 408 1122 1201 1322 1502 1954 1998 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "opensource" "softwaredev" "data-analytics" "computer-programming" ...
##   .. .. ..$ name  : chr [1:5] "Open Source" "Software Development" "Data Analytics" "Computer programming" ...
##   .. .. ..$ id    : int [1:5] 563 3833 30928 48471 115768
##   .. ..$ :'data.frame':	33 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:33] "esl" "english-language" "bogota" "travel" ...
##   .. .. ..$ name  : chr [1:33] "English as a Second Language" "English Language" "Bogota" "Travel" ...
##   .. .. ..$ id    : int [1:33] 182 25698 152753 1998 10454 17571 235 713 1201 1273 ...
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:3] "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:3] 98380 115768 115913
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	17 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:17] "big-data" "data-analytics" "r-project-for-statistical-computing" "programming-in-r" ...
##   .. .. ..$ name  : chr [1:17] "Big Data" "Data Analytics" "R Project for Statistical Computing" "Programming in R" ...
##   .. .. ..$ id    : int [1:17] 18062 30928 98380 115768 115913 182 235 1998 8652 10454 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	15 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:15] "courses-and-workshops" "edtech" "communication-skills" "prodev" ...
##   .. .. ..$ name  : chr [1:15] "Courses and Workshops" "Education & Technology" "Communication Skills" "Professional Development" ...
##   .. .. ..$ id    : int [1:15] 20629 7203 20923 3880 26643 17635 63675 1481 1589 15029 ...
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:3] "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:3] 98380 115768 115913
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	28 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:28] "innovation" "softwaredev" "prodev" "newtech" ...
##   .. .. ..$ name  : chr [1:28] "Innovation" "Software Development" "Professional Development" "New Technology" ...
##   .. .. ..$ id    : int [1:28] 1954 3833 3880 9696 15401 15585 15992 16216 17232 17301 ...
##   .. ..$ :'data.frame':	2 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:2] "self-improvement" "softwaredev"
##   .. .. ..$ name  : chr [1:2] "Self-Improvement" "Software Development"
##   .. .. ..$ id    : int [1:2] 3336 3833
##   .. ..$ :'data.frame':	18 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:18] "self-empowerment" "wellness" "healthy-living" "technical-analysis" ...
##   .. .. ..$ name  : chr [1:18] "Self-Empowerment" "Wellness" "Healthy Living" "Technical Analysis" ...
##   .. .. ..$ id    : int [1:18] 38757 10306 20221 17232 3880 26643 17635 1954 10538 21681 ...
##   .. ..$ :'data.frame':	31 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:31] "esl" "bilingual-spanish-english" "japanese-culture" "international-friends" ...
##   .. .. ..$ name  : chr [1:31] "English as a Second Language" "Bilingual Spanish/English" "Japanese Culture" "International Friends" ...
##   .. .. ..$ id    : int [1:31] 182 22885 30366 50881 563 1998 3336 7203 7277 9696 ...
##   .. ..$ :'data.frame':	34 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:34] "scifi" "webdesign" "graphicdesign" "databasepro" ...
##   .. .. ..$ name  : chr [1:34] "Sci-Fi/Fantasy" "Web Design" "Graphic Design" "Database Professionals" ...
##   .. .. ..$ id    : int [1:34] 317 659 781 1245 2767 3287 15113 15321 15322 15360 ...
##   .. ..$ :'data.frame':	6 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:6] "big-data" "technology-startups" "web" "newtech" ...
##   .. .. ..$ name  : chr [1:6] "Big Data" "Technology Startups" "Web Technology" "New Technology" ...
##   .. .. ..$ id    : int [1:6] 18062 108403 10209 9696 48471 127567
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "softwaredev" "edtech" "newtech" "web-development" ...
##   .. .. ..$ name  : chr [1:14] "Software Development" "Education & Technology" "New Technology" "Web Development" ...
##   .. .. ..$ id    : int [1:14] 3833 7203 9696 15582 127567 563 7029 15167 16216 78565 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "latinmusic" "musicians" "esl" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "Latin Music" "Musicians" "English as a Second Language" ...
##   .. .. ..$ id    : int [1:50] 89 130 173 182 185 206 211 223 242 407 ...
##   .. ..$ :'data.frame':	20 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:20] "coffee-lovers" "eating-drinking-talking-laughing-etc" "food-and-drink" "animation" ...
##   .. .. ..$ name  : chr [1:20] "Coffee Lovers" "Eating, Drinking, Talking, Laughing, Etc" "Food and Drink" "Animation" ...
##   .. .. ..$ id    : int [1:20] 16951 19130 87548 1589 206 1201 32623 15992 4471 15018 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "latinmusic" "opensource" "robotics" "innovation" ...
##   .. .. ..$ name  : chr [1:23] "Latin Music" "Open Source" "Robotics" "Innovation" ...
##   .. .. ..$ id    : int [1:23] 130 563 682 1954 3833 3880 6640 7277 8652 9696 ...
##   .. ..$ :'data.frame':	15 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:15] "opensource" "softwaredev" "newtech" "cloud-computing" ...
##   .. .. ..$ name  : chr [1:15] "Open Source" "Software Development" "New Technology" "Cloud Computing" ...
##   .. .. ..$ id    : int [1:15] 563 3833 9696 15167 16216 21441 48471 18062 58162 24767 ...
##   .. ..$ :'data.frame':	1 obs. of  3 variables:
##   .. .. ..$ urlkey: chr "applied-statistics"
##   .. .. ..$ name  : chr "Applied Statistics"
##   .. .. ..$ id    : int 115913
##   .. ..$ :'data.frame':	35 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:35] "esl" "opensource" "walkers" "paintball" ...
##   .. .. ..$ name  : chr [1:35] "English as a Second Language" "Open Source" "Walking" "Paintball" ...
##   .. .. ..$ id    : int [1:35] 182 563 933 1073 1122 1954 3438 4471 9696 10209 ...
##   .. ..$ :'data.frame':	8 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:8] "neuroscience" "edtech" "big-data" "bilingual-spanish-english" ...
##   .. .. ..$ name  : chr [1:8] "Neuroscience" "Education & Technology" "Big Data" "Bilingual Spanish/English" ...
##   .. .. ..$ id    : int [1:8] 6960 7203 18062 22885 29526 36229 50881 21808
##   .. ..$ :'data.frame':	16 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:16] "opensource" "softwaredev" "newtech" "ria" ...
##   .. .. ..$ name  : chr [1:16] "Open Source" "Software Development" "New Technology" "Rich Internet Applications" ...
##   .. .. ..$ id    : int [1:16] 563 3833 9696 9886 15582 21441 7029 16216 48471 36167 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	30 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:30] "ai" "robotics" "electronics" "newtech" ...
##   .. .. ..$ name  : chr [1:30] "Artificial Intelligence" "Robotics" "Electronics" "New Technology" ...
##   .. .. ..$ id    : int [1:30] 456 682 7848 9696 9903 10438 17232 17635 18062 21123 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "softwaredev" "social-media" "seo-search-engine-optimization" "data-analytics" ...
##   .. .. ..$ name  : chr [1:5] "Software Development" "Social Media" "SEO (Search Engine Optimization)" "Data Analytics" ...
##   .. .. ..$ id    : int [1:5] 3833 15401 23199 30928 48471
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "christiansocial" "cloud-computing" "social-media" "data-analytics" ...
##   .. .. ..$ name  : chr [1:5] "Christian Social" "Cloud Computing" "Social Media" "Data Analytics" ...
##   .. .. ..$ id    : int [1:5] 10187 15167 15401 30928 18062
##   .. ..$ :'data.frame':	46 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:46] "science" "french" "opensource" "wine" ...
##   .. .. ..$ name  : chr [1:46] "Science" "French Language" "Open Source" "Wine" ...
##   .. .. ..$ id    : int [1:46] 85 185 563 611 1122 1954 2767 3880 4471 6640 ...
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "art" "prodev" "newtech" "games" ...
##   .. .. ..$ name  : chr [1:10] "Art" "Professional Development" "New Technology" "Games" ...
##   .. .. ..$ id    : int [1:10] 1502 3880 9696 15992 16216 16425 16899 17232 17635 21681
##   .. ..$ :'data.frame':	20 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:20] "digcam" "photo" "opensource" "videogame" ...
##   .. .. ..$ name  : chr [1:20] "Digital Photography" "Photography" "Open Source" "Video Games" ...
##   .. .. ..$ id    : int [1:20] 206 223 563 4471 9696 10209 10538 15029 15585 16216 ...
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "webstandards" "webdesign" "softwaredev" "newtech" ...
##   .. .. ..$ name  : chr [1:23] "Web Standards" "Web Design" "Software Development" "New Technology" ...
##   .. .. ..$ id    : int [1:23] 417 659 3833 9696 9886 15582 16216 21441 36167 48471 ...
##   .. ..$ :'data.frame':	11 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:11] "offleash" "japanese-cinema" "film" "cycling" ...
##   .. .. ..$ name  : chr [1:11] "Off-Leash Dog Recreation" "Japanese Films" "Film" "Cycling" ...
##   .. .. ..$ id    : int [1:11] 9753 14980 15029 18617 22885 25375 28980 37663 49954 50881 ...
##   .. ..$ :'data.frame':	13 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:13] "esl" "opensource" "neuroscience" "edtech" ...
##   .. .. ..$ name  : chr [1:13] "English as a Second Language" "Open Source" "Neuroscience" "Education & Technology" ...
##   .. .. ..$ id    : int [1:13] 182 563 6960 7203 9696 10454 10538 16433 26643 28980 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	37 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:37] "photo" "newtech" "social" "photography-classes" ...
##   .. .. ..$ name  : chr [1:37] "Photography" "New Technology" "Social" "Photography Classes" ...
##   .. .. ..$ id    : int [1:37] 223 9696 10581 15043 15167 15731 16216 18062 18216 206 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "music" "statistical-computing" "programming-in-r"
##   .. .. ..$ name  : chr [1:3] "Music" "Statistical Computing" "Programming in R"
##   .. .. ..$ id    : int [1:3] 15018 15280 115768
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "application-development" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:3] "Application Development" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:3] 36167 115768 115913
##   .. ..$ :'data.frame':	6 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:6] "digcam" "money" "singers" "business-strategy" ...
##   .. .. ..$ name  : chr [1:6] "Digital Photography" "Money" "Singing" "Business Strategy" ...
##   .. .. ..$ id    : int [1:6] 206 15580 17301 17635 17993 98380
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "business-development" "business-strategy" "innovation" "walkers" ...
##   .. .. ..$ name  : chr [1:10] "Business Development" "Business Strategy" "Innovation" "Walking" ...
##   .. .. ..$ id    : int [1:10] 18012 17635 1954 933 18617 22885 182 18062 9696 108403
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "softwaredev" "technology" "cloud-computing" "mobile-development" ...
##   .. .. ..$ name  : chr [1:23] "Software Development" "Technology" "Cloud Computing" "Mobile Development" ...
##   .. .. ..$ id    : int [1:23] 3833 10579 15167 21441 48471 78565 659 9696 15582 16216 ...
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "salsa" "meditation" "self-improvement" "lawofattraction" ...
##   .. .. ..$ name  : chr [1:14] "Salsa" "Meditation" "Self-Improvement" "Law of Attraction" ...
##   .. .. ..$ id    : int [1:14] 1122 1322 3336 3382 10290 15067 16212 18340 18874 19130 ...
##   .. ..$ :'data.frame':	30 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:30] "esl" "opensource" "innovation" "gameprog" ...
##   .. .. ..$ name  : chr [1:30] "English as a Second Language" "Open Source" "Innovation" "Game Programming" ...
##   .. .. ..$ id    : int [1:30] 182 563 1954 3287 3833 8652 9696 9753 9772 10538 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "english-language" "ruby" "javascript" "web" ...
##   .. .. ..$ name  : chr [1:50] "English Language" "Ruby" "JavaScript" "Web Technology" ...
##   .. .. ..$ id    : int [1:50] 25698 1040 7029 10209 15401 15582 21123 44584 78565 85951 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "science" "environment" "latinmusic" "musicians" ...
##   .. .. ..$ name  : chr [1:50] "Science" "Environment" "Latin Music" "Musicians" ...
##   .. .. ..$ id    : int [1:50] 85 89 130 173 182 211 242 485 563 579 ...
##   .. ..$ :'data.frame':	11 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:11] "opensource" "webdesign" "python" "softwaredev" ...
##   .. .. ..$ name  : chr [1:11] "Open Source" "Web Design" "Python" "Software Development" ...
##   .. .. ..$ id    : int [1:11] 563 659 1064 3833 9696 9886 15167 15582 48471 85951 ...
##   .. ..$ :'data.frame':	9 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:9] "art" "education" "newtech" "sports" ...
##   .. .. ..$ name  : chr [1:9] "Art" "Education" "New Technology" "Sports and Recreation" ...
##   .. .. ..$ id    : int [1:9] 1502 8476 9696 10451 15018 15046 15236 15321 15992
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	1 obs. of  3 variables:
##   .. .. ..$ urlkey: chr "music"
##   .. .. ..$ name  : chr "Music"
##   .. .. ..$ id    : int 15018
##   .. ..$ :'data.frame':	17 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:17] "javascript" "web-development" "html5" "courses-and-workshops" ...
##   .. .. ..$ name  : chr [1:17] "JavaScript" "Web Development" "HTML5" "Courses and Workshops" ...
##   .. .. ..$ id    : int [1:17] 7029 15582 78565 20629 189 3833 16137 16216 21441 48471 ...
##   .. ..$ :'data.frame':	15 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:15] "opensource" "computer-programming" "digcam" "photo" ...
##   .. .. ..$ name  : chr [1:15] "Open Source" "Computer programming" "Digital Photography" "Photography" ...
##   .. .. ..$ id    : int [1:15] 563 48471 206 223 456 10438 18062 29971 30928 37381 ...
##   .. .. [list output truncated]
##   ..$ joined        : num [1:200] 1.44e+12 1.46e+12 1.45e+12 1.44e+12 1.44e+12 ...
##   ..$ link          : chr [1:200] "http://www.meetup.com/members/42308302" "http://www.meetup.com/members/136595122" "http://www.meetup.com/members/19946191" "http://www.meetup.com/members/189889100" ...
##   ..$ photo         :'data.frame':	200 obs. of  4 variables:
##   .. ..$ highres_link: chr [1:200] "http://photos4.meetupstatic.com/photos/member/8/b/7/6/highres_46895702.jpeg" "http://photos4.meetupstatic.com/photos/member/8/c/c/0/highres_192456032.jpeg" NA "http://photos2.meetupstatic.com/photos/member/2/e/1/f/highres_247871807.jpeg" ...
##   .. ..$ photo_id    : int [1:200] 46895702 192456032 18409881 247871807 247284068 242378406 247055192 254453319 NA NA ...
##   .. ..$ photo_link  : chr [1:200] "http://photos4.meetupstatic.com/photos/member/8/b/7/6/member_46895702.jpeg" "http://photos2.meetupstatic.com/photos/member/8/c/c/0/member_192456032.jpeg" "http://photos3.meetupstatic.com/photos/member/c/2/d/9/member_18409881.jpeg" "http://photos2.meetupstatic.com/photos/member/2/e/1/f/member_247871807.jpeg" ...
##   .. ..$ thumb_link  : chr [1:200] "http://photos2.meetupstatic.com/photos/member/8/b/7/6/thumb_46895702.jpeg" "http://photos2.meetupstatic.com/photos/member/8/c/c/0/thumb_192456032.jpeg" "http://photos3.meetupstatic.com/photos/member/c/2/d/9/thumb_18409881.jpeg" "http://photos4.meetupstatic.com/photos/member/2/e/1/f/thumb_247871807.jpeg" ...
##   ..$ lon           : num [1:200] -74.1 -74.1 -122.4 -74.1 -74.1 ...
##   ..$ other_services:'data.frame':	200 obs. of  4 variables:
##   .. ..$ twitter :'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] "@jpmarindiaz" NA NA NA ...
##   .. ..$ tumblr  :'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] NA NA NA NA ...
##   .. ..$ flickr  :'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] NA NA NA NA ...
##   .. ..$ facebook:'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] NA NA NA NA ...
##   ..$ name          : chr [1:200] "@jpmarindiaz" "1ng3" "Abelardo Duarte Rey" "Adrian Zuur" ...
##   ..$ visited       : num [1:200] 1.47e+12 1.46e+12 1.45e+12 1.44e+12 1.46e+12 ...
##   ..$ self          :'data.frame':	200 obs. of  1 variable:
##   .. ..$ common:'data.frame':	200 obs. of  0 variables
##   ..$ id            : int [1:200] 42308302 136595122 19946191 189889100 188997341 183105297 188617906 200884932 189087328 187270799 ...
##   ..$ lang          : chr [1:200] "en_US" NA NA NA ...
##   ..$ lat           : num [1:200] 4.63 4.63 37.77 4.63 4.63 ...
##   ..$ status        : chr [1:200] "active" "active" "active" "active" ...
##   ..$ hometown      : chr [1:200] NA NA "Bogotá" NA ...
##   ..$ state         : chr [1:200] NA NA "CA" NA ...
##   ..$ bio           : chr [1:200] NA NA NA NA ...
##  $ meta   :List of 12
##   ..$ next       : chr "https://api.meetup.com/2/members?offset=1&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ method     : chr "Members"
##   ..$ total_count: int 676
##   ..$ link       : chr "https://api.meetup.com/2/members"
##   ..$ count      : int 200
##   ..$ description: chr "API method for accessing members of Meetup Groups"
##   ..$ lon        : chr ""
##   ..$ title      : chr "Meetup Members v2"
##   ..$ url        : chr "https://api.meetup.com/2/members?offset=0&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ id         : chr ""
##   ..$ updated    : num 1.47e+12
##   ..$ lat        : chr ""
```

```r
str(m, max.level = 1)
```

```
## List of 2
##  $ results:'data.frame':	200 obs. of  18 variables:
##  $ meta   :List of 12
```

```r
str(m, max.level = 2)
```

```
## List of 2
##  $ results:'data.frame':	200 obs. of  18 variables:
##   ..$ country       : chr [1:200] "co" "co" "us" "co" ...
##   ..$ city          : chr [1:200] "Bogotá" "Bogotá" "San Francisco" "Bogotá" ...
##   ..$ topics        :List of 200
##   .. .. [list output truncated]
##   ..$ joined        : num [1:200] 1.44e+12 1.46e+12 1.45e+12 1.44e+12 1.44e+12 ...
##   ..$ link          : chr [1:200] "http://www.meetup.com/members/42308302" "http://www.meetup.com/members/136595122" "http://www.meetup.com/members/19946191" "http://www.meetup.com/members/189889100" ...
##   ..$ photo         :'data.frame':	200 obs. of  4 variables:
##   ..$ lon           : num [1:200] -74.1 -74.1 -122.4 -74.1 -74.1 ...
##   ..$ other_services:'data.frame':	200 obs. of  4 variables:
##   ..$ name          : chr [1:200] "@jpmarindiaz" "1ng3" "Abelardo Duarte Rey" "Adrian Zuur" ...
##   ..$ visited       : num [1:200] 1.47e+12 1.46e+12 1.45e+12 1.44e+12 1.46e+12 ...
##   ..$ self          :'data.frame':	200 obs. of  1 variable:
##   ..$ id            : int [1:200] 42308302 136595122 19946191 189889100 188997341 183105297 188617906 200884932 189087328 187270799 ...
##   ..$ lang          : chr [1:200] "en_US" NA NA NA ...
##   ..$ lat           : num [1:200] 4.63 4.63 37.77 4.63 4.63 ...
##   ..$ status        : chr [1:200] "active" "active" "active" "active" ...
##   ..$ hometown      : chr [1:200] NA NA "Bogotá" NA ...
##   ..$ state         : chr [1:200] NA NA "CA" NA ...
##   ..$ bio           : chr [1:200] NA NA NA NA ...
##  $ meta   :List of 12
##   ..$ next       : chr "https://api.meetup.com/2/members?offset=1&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ method     : chr "Members"
##   ..$ total_count: int 676
##   ..$ link       : chr "https://api.meetup.com/2/members"
##   ..$ count      : int 200
##   ..$ description: chr "API method for accessing members of Meetup Groups"
##   ..$ lon        : chr ""
##   ..$ title      : chr "Meetup Members v2"
##   ..$ url        : chr "https://api.meetup.com/2/members?offset=0&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ id         : chr ""
##   ..$ updated    : num 1.47e+12
##   ..$ lat        : chr ""
```

```r
members <- m$results
str(members, max.level = 1)
```

```
## 'data.frame':	200 obs. of  18 variables:
##  $ country       : chr  "co" "co" "us" "co" ...
##  $ city          : chr  "Bogotá" "Bogotá" "San Francisco" "Bogotá" ...
##  $ topics        :List of 200
##   .. [list output truncated]
##  $ joined        : num  1.44e+12 1.46e+12 1.45e+12 1.44e+12 1.44e+12 ...
##  $ link          : chr  "http://www.meetup.com/members/42308302" "http://www.meetup.com/members/136595122" "http://www.meetup.com/members/19946191" "http://www.meetup.com/members/189889100" ...
##  $ photo         :'data.frame':	200 obs. of  4 variables:
##  $ lon           : num  -74.1 -74.1 -122.4 -74.1 -74.1 ...
##  $ other_services:'data.frame':	200 obs. of  4 variables:
##  $ name          : chr  "@jpmarindiaz" "1ng3" "Abelardo Duarte Rey" "Adrian Zuur" ...
##  $ visited       : num  1.47e+12 1.46e+12 1.45e+12 1.44e+12 1.46e+12 ...
##  $ self          :'data.frame':	200 obs. of  1 variable:
##  $ id            : int  42308302 136595122 19946191 189889100 188997341 183105297 188617906 200884932 189087328 187270799 ...
##  $ lang          : chr  "en_US" NA NA NA ...
##  $ lat           : num  4.63 4.63 37.77 4.63 4.63 ...
##  $ status        : chr  "active" "active" "active" "active" ...
##  $ hometown      : chr  NA NA "Bogotá" NA ...
##  $ state         : chr  NA NA "CA" NA ...
##  $ bio           : chr  NA NA NA NA ...
```

```r
names(members)
```

```
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lang"           "lat"            "status"         "hometown"      
## [17] "state"          "bio"
```

```r
m <- fromJSON("data/meetup-members.json", simplifyDataFrame = FALSE)
members <- m$results
str(members, max.level = 2)
```

```
## List of 200
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 4
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/42308302"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "@jpmarindiaz"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 42308302
##   ..$ lang          : chr "en_US"
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 27
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/136595122"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "1ng3"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 136595122
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 16
##   ..$ country       : chr "us"
##   ..$ hometown      : chr "Bogotá"
##   ..$ city          : chr "San Francisco"
##   ..$ topics        :List of 29
##   ..$ joined        : num 1.45e+12
##   ..$ link          : chr "http://www.meetup.com/members/19946191"
##   ..$ photo         :List of 3
##   ..$ lon           : num -122
##   ..$ other_services: Named list()
##   ..$ name          : chr "Abelardo Duarte Rey"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 19946191
##   ..$ state         : chr "CA"
##   ..$ lat           : num 37.8
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 33
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/189889100"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Adrian Zuur"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 189889100
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/188997341"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Adriana Clavijo"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 188997341
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 47
##   ..$ joined        : num 1.42e+12
##   ..$ link          : chr "http://www.meetup.com/members/183105297"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Adriana RG"
##   ..$ visited       : num 1.42e+12
##   ..$ self          :List of 1
##   ..$ id            : int 183105297
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/188617906"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Adry"
##   ..$ visited       : num 1.43e+12
##   ..$ self          :List of 1
##   ..$ id            : int 188617906
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 5
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/200884932"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Albert70-7"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 200884932
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 10
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/189087328"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Aldemar Guzman"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 189087328
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 8
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/187270799"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Aldo Rodriguez"
##   ..$ visited       : num 1.43e+12
##   ..$ self          :List of 1
##   ..$ id            : int 187270799
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Cartagena, CO"
##   ..$ city          : chr "Cota"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/191239528"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Ale Echavez"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 191239528
##   ..$ lat           : num 4.82
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "au"
##   ..$ city          : chr "Brisbane"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/112586072"
##   ..$ bio           : chr "Me llamo Alejandra Neira, estoy haciendo una especialización en Estadística en la Universidad Nacional de Colombia, soy biologa"| __truncated__
##   ..$ photo         :List of 3
##   ..$ lon           : num 153
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandra"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 112586072
##   ..$ lat           : num -27.5
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 14
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/202788126"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandra"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 202788126
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/186983249"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandra"
##   ..$ visited       : num 1.43e+12
##   ..$ self          :List of 1
##   ..$ id            : int 186983249
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192510287"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandra Amézquita"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192510287
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/191266118"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandra Hincapie"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 191266118
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 33
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/75736712"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 75736712
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 8
##   ..$ joined        : num 1.4e+12
##   ..$ link          : chr "http://www.meetup.com/members/142429692"
##   ..$ bio           : chr "Hello there, I just started a course for R with Johns Hopkins's university, if you have some spare time I willing to learn! !"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro"
##   ..$ visited       : num 1.4e+12
##   ..$ self          :List of 1
##   ..$ id            : int 142429692
##   ..$ lat           : num 4.71
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "gb"
##   ..$ city          : chr "London"
##   ..$ topics        :List of 14
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/193838526"
##   ..$ photo         :List of 4
##   ..$ lon           : num -0.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro Coca Castro"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 193838526
##   ..$ state         : chr "17"
##   ..$ lat           : num 51.5
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 9
##   ..$ joined        : num 1.39e+12
##   ..$ link          : chr "http://www.meetup.com/members/83404242"
##   ..$ bio           : chr "Data Scientist, PhD in Machine Learning"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "Alejandro Correa Bahnsen"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 83404242
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 9
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/191810127"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro Feged"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 191810127
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 10
##   ..$ joined        : num 1.39e+12
##   ..$ link          : chr "http://www.meetup.com/members/87646992"
##   ..$ bio           : chr "Interesado en los análisis predictivos con R utilizando teorías de aprendizaje de máquina."
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "Alejandro Foullon"
##   ..$ visited       : num 1.41e+12
##   ..$ self          :List of 1
##   ..$ id            : int 87646992
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Medellín"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/190148557"
##   ..$ photo         :List of 4
##   ..$ lon           : num -75.6
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro García Estrella"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 190148557
##   ..$ lat           : num 6.25
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 6
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/189624617"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro P"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 189624617
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Cartagena"
##   ..$ city          : chr "Cartagena"
##   ..$ topics        :List of 31
##   ..$ joined        : num 1.45e+12
##   ..$ link          : chr "http://www.meetup.com/members/195420438"
##   ..$ photo         :List of 4
##   ..$ lon           : num -75.5
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro Suarez"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 195420438
##   ..$ lat           : num 10.4
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 12
##   ..$ joined        : num 1.39e+12
##   ..$ link          : chr "http://www.meetup.com/members/128401562"
##   ..$ bio           : chr "Gran experiencia en temas de mineria de datos, con herramientas tales como hadoop, SAS y R."
##   ..$ photo         :List of 3
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alejandro Tobon"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 128401562
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Bogotá"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.42e+12
##   ..$ link          : chr "http://www.meetup.com/members/59588352"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "Alejandro Zuleta Rojas"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 59588352
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 10
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192570522"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "AlejoGeek"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192570522
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/190956503"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alex Aristizabal"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 190956503
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 4
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/111861652"
##   ..$ bio           : chr "Se o mundo não têm nenhum conhecimento da variação estatística dos dados, não podia interpretar o mundo em que vivemos. http://"| __truncated__
##   ..$ photo         :List of 3
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alex Johann Zambrano Carbonell"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 111861652
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/200057332"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexa Barrantes"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 200057332
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/111801482"
##   ..$ bio           : chr "Estudiante de Estadística Universidad Santo tomás"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexander"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 111801482
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/205286272"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexander Alvis"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 205286272
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 5
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/199862444"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexander Aristizabal"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 199862444
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 23
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192414145"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexander Ramirez"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192414145
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/83604232"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexander Salamanca"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 83604232
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/189313446"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexander Torres"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 189313446
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "ec"
##   ..$ city          : chr "Quito"
##   ..$ topics        :List of 10
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/61761822"
##   ..$ bio           : chr "Hey r lo máximo espero poder comprender y aportar y desarrollar mucho este lenguaje"
##   ..$ photo         :List of 3
##   ..$ lon           : num -78.5
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alexito Barreno"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 61761822
##   ..$ lat           : num -0.19
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Bogotá"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 2
##   ..$ joined        : num 1.45e+12
##   ..$ link          : chr "http://www.meetup.com/members/113527092"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Ali Santacruz"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 113527092
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 2
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/193066337"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "alvaro"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 193066337
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/185955589"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Álvaro Andrés"
##   ..$ visited       : num 1.43e+12
##   ..$ self          :List of 1
##   ..$ id            : int 185955589
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 3
##   ..$ joined        : num 1.47e+12
##   ..$ link          : chr "http://www.meetup.com/members/91950432"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Alveiro Garcia"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 91950432
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 49
##   ..$ joined        : num 1.45e+12
##   ..$ link          : chr "http://www.meetup.com/members/199177839"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Amanda Granados"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 199177839
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 5
##   ..$ joined        : num 1.42e+12
##   ..$ link          : chr "http://www.meetup.com/members/183100389"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Ambrosio Torres"
##   ..$ visited       : num 1.42e+12
##   ..$ self          :List of 1
##   ..$ id            : int 183100389
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 16
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Bogotá"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 33
##   ..$ joined        : num 1.39e+12
##   ..$ link          : chr "http://www.meetup.com/members/132080352"
##   ..$ bio           : chr "Psicólogo 1992\nEspecialista en Orientación Educativa y desa-rrollo Humano 2001\nMagister en Investigación Social Interdiscipli"| __truncated__
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Amilkar Brunal"
##   ..$ visited       : num 1.39e+12
##   ..$ self          :List of 1
##   ..$ id            : int 132080352
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 3
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/117607032"
##   ..$ bio           : chr "Usuaria de R"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Ana"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 117607032
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192488639"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Ana Eloísa Gómez"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192488639
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 17
##   ..$ joined        : num 1.39e+12
##   ..$ link          : chr "http://www.meetup.com/members/132621982"
##   ..$ bio           : chr "Bióloga y M.Sc en conservación"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrea Calderon"
##   ..$ visited       : num 1.39e+12
##   ..$ self          :List of 1
##   ..$ id            : int 132621982
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/185012889"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrea Higuera Araque"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 185012889
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192292759"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrea Lopez"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192292759
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 15
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/206126342"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrea Ruiz "
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 206126342
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 3
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/111853742"
##   ..$ bio           : chr "Tengo 19 años y soy estudiante de estadística de la Universidad Santo Tomas."
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrea Taborda"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 111853742
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192581932"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "andres"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192581932
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 28
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/191101529"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrés Acosta Escobar"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 191101529
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Valledupar, CO"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 2
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/81695422"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrés Ariza"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 81695422
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 18
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/202550207"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "andres bocanegra"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 202550207
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 31
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/200301130"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres David Rios Ramos"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 200301130
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 34
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/112924942"
##   ..$ bio           : chr "-"
##   ..$ photo         :List of 3
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrés Fabián Corredor"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 112924942
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 6
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/203065420"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Felipe"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 203065420
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 14
##   ..$ joined        : num 1.47e+12
##   ..$ link          : chr "http://www.meetup.com/members/31163762"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "Andrés Felipe"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 31163762
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/189070626"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Felipe Bonilla"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 189070626
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 20
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/201533460"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Felipe Cruz Salinas"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 201533460
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "us"
##   ..$ city          : chr "San Francisco"
##   ..$ topics        : list()
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/18108831"
##   ..$ bio           : chr "Cordial saludo, esto nos estaba haciendo falta desde hace rato!"
##   ..$ lon           : num -122
##   ..$ other_services:List of 1
##   ..$ name          : chr "Andres Felipe Florez Rivera"
##   ..$ visited       : num 1.39e+12
##   ..$ self          :List of 1
##   ..$ id            : int 18108831
##   ..$ state         : chr "CA"
##   ..$ lat           : num 37.8
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "ar"
##   ..$ hometown      : chr "Buenos Aires"
##   ..$ city          : chr "Buenos Aires"
##   ..$ topics        :List of 23
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/189646160"
##   ..$ photo         :List of 4
##   ..$ lon           : num -58.4
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrés Fernández"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 189646160
##   ..$ lat           : num -34.6
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Bogotá"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 15
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/14519837"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "Andrés Gómez Casanova"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 14519837
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 1
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/111784892"
##   ..$ bio           : chr "Decano de la Facultad de Estadística de la Universidad Santo Tomás (Bogotá) - Consultor, estadístico, profesor, escritor de lib"| __truncated__
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "ANDRÉS GUTIÉRREZ"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 111784892
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 35
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/200033015"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Hernandez"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 200033015
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 8
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/193878700"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrés Hernández Acero"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 193878700
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 16
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/57054832"
##   ..$ photo         :List of 3
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "andres hurtado"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 57054832
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/185574485"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Jaime"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 185574485
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 30
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/199733836"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Julian Moreno"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 199733836
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Facatativá"
##   ..$ topics        :List of 5
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/187481602"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.4
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrés Luque"
##   ..$ visited       : num 1.43e+12
##   ..$ self          :List of 1
##   ..$ id            : int 187481602
##   ..$ lat           : num 4.82
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 5
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/12177891"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "Andrés Mauricio Palacios"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 12177891
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 46
##   ..$ joined        : num 1.45e+12
##   ..$ link          : chr "http://www.meetup.com/members/194423855"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Rodriguez"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 194423855
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 10
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192488665"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andrés Rodríguez "
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192488665
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 20
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/193724417"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Andres Rojas"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 193724417
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 23
##   ..$ joined        : num 1.41e+12
##   ..$ link          : chr "http://www.meetup.com/members/96271902"
##   ..$ photo         :List of 3
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 1
##   ..$ name          : chr "andres vargas"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 96271902
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 11
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192458335"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Ángela "
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192458335
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 13
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/199602071"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "angeleu"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 199602071
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192043728"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Angélica Aguirre"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192043728
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/177391472"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Angelica B."
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 177391472
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 37
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/190640369"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Angelo Rodriguez"
##   ..$ visited       : num 1.47e+12
##   ..$ self          :List of 1
##   ..$ id            : int 190640369
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/205840951"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Angodoy"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 205840951
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 3
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/111863962"
##   ..$ bio           : chr "Antonio zumaque estudiante de V sem de estadística universidad de córdoba coordinador del grupo de semillero SIE. somos interes"| __truncated__
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "antonio"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 111863962
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.42e+12
##   ..$ link          : chr "http://www.meetup.com/members/182549969"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Arlington Zahir Llerena"
##   ..$ visited       : num 1.42e+12
##   ..$ self          :List of 1
##   ..$ id            : int 182549969
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 3
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/111897022"
##   ..$ bio           : chr "usando R para investigacion por varios años"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "arturo moralez"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 111897022
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "ec"
##   ..$ city          : chr "Quito"
##   ..$ topics        :List of 6
##   ..$ joined        : num 1.41e+12
##   ..$ link          : chr "http://www.meetup.com/members/171983992"
##   ..$ photo         :List of 4
##   ..$ lon           : num -78.5
##   ..$ other_services: Named list()
##   ..$ name          : chr "Avefenix269"
##   ..$ visited       : num 1.41e+12
##   ..$ self          :List of 1
##   ..$ id            : int 171983992
##   ..$ lat           : num -0.19
##   ..$ status        : chr "active"
##  $ :List of 13
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 10
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/204057748"
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Blanca Vallejo"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 204057748
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 23
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/117055792"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Bran Arango"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 117055792
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 14
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/186310957"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Brenda Robledo"
##   ..$ visited       : num 1.43e+12
##   ..$ self          :List of 1
##   ..$ id            : int 186310957
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 30
##   ..$ joined        : num 1.43e+12
##   ..$ link          : chr "http://www.meetup.com/members/188811759"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Bryant Acero"
##   ..$ visited       : num 1.43e+12
##   ..$ self          :List of 1
##   ..$ id            : int 188811759
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.38e+12
##   ..$ link          : chr "http://www.meetup.com/members/9770097"
##   ..$ bio           : chr "Development dayly."
##   ..$ photo         :List of 3
##   ..$ lon           : num -74.1
##   ..$ other_services:List of 4
##   ..$ name          : chr "Byron Herrera"
##   ..$ visited       : num 1.38e+12
##   ..$ self          :List of 1
##   ..$ id            : int 9770097
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 50
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/191577709"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "byron tibocha velasco"
##   ..$ visited       : num 1.44e+12
##   ..$ self          :List of 1
##   ..$ id            : int 191577709
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 11
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/114084172"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "C. Eduardo Suárez G."
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 114084172
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 9
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/192742406"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Camilo Andres"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 192742406
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        : list()
##   ..$ joined        : num 1.45e+12
##   ..$ link          : chr "http://www.meetup.com/members/195016419"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Camilo Andrés Lemus"
##   ..$ visited       : num 1.45e+12
##   ..$ self          :List of 1
##   ..$ id            : int 195016419
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 1
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/198283009"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Camilo Correa"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 198283009
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 14
##   ..$ country       : chr "co"
##   ..$ city          : chr "Bogotá"
##   ..$ topics        :List of 17
##   ..$ joined        : num 1.46e+12
##   ..$ link          : chr "http://www.meetup.com/members/92551382"
##   ..$ photo         :List of 4
##   ..$ lon           : num -74.1
##   ..$ other_services: Named list()
##   ..$ name          : chr "Camilo Cortes"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 92551382
##   ..$ lat           : num 4.63
##   ..$ status        : chr "active"
##  $ :List of 15
##   ..$ country       : chr "co"
##   ..$ hometown      : chr "Cali"
##   ..$ city          : chr "Cali"
##   ..$ topics        :List of 15
##   ..$ joined        : num 1.44e+12
##   ..$ link          : chr "http://www.meetup.com/members/162405922"
##   ..$ photo         :List of 4
##   ..$ lon           : num -76.5
##   ..$ other_services:List of 3
##   ..$ name          : chr "Camilo Herrera"
##   ..$ visited       : num 1.46e+12
##   ..$ self          :List of 1
##   ..$ id            : int 162405922
##   ..$ lat           : num 3.42
##   ..$ status        : chr "active"
##   [list output truncated]
```

```r
list.map(members,names(.))
```

```
## [[1]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lang"           "lat"            "status"        
## 
## [[2]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[3]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "state"          "lat"            "status"        
## 
## [[4]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[5]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[6]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[7]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[8]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[9]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[10]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[11]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[12]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[13]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[14]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[15]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[16]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[17]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[18]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[19]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "state"          "lat"            "status"        
## 
## [[20]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[21]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[22]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[23]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[24]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[25]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[26]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[27]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[28]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[29]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[30]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[31]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[32]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[33]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[34]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[35]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[36]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[37]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[38]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[39]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[40]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[41]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[42]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[43]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[44]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[45]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "bio"            "photo"         
##  [9] "lon"            "other_services" "name"           "visited"       
## [13] "self"           "id"             "lat"            "status"        
## 
## [[46]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[47]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[48]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[49]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[50]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[51]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[52]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[53]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[54]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[55]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[56]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[57]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[58]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[59]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[60]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[61]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[62]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[63]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "state"          "lat"            "status"        
## 
## [[64]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[65]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[66]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[67]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[68]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[69]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[70]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[71]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[72]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[73]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[74]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[75]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[76]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[77]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[78]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[79]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[80]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[81]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[82]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[83]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[84]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[85]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[86]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[87]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[88]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[89]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[90]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[91]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[92]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[93]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[94]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[95]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[96]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[97]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[98]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[99]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[100]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[101]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[102]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[103]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[104]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[105]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[106]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[107]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[108]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[109]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[110]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[111]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[112]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[113]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[114]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[115]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[116]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[117]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[118]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[119]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[120]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[121]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[122]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[123]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[124]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[125]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[126]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[127]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[128]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[129]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[130]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[131]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[132]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[133]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[134]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[135]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[136]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[137]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[138]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[139]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[140]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[141]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[142]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[143]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[144]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[145]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[146]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[147]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[148]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[149]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[150]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[151]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[152]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[153]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[154]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[155]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[156]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[157]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[158]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[159]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[160]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[161]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[162]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[163]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[164]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[165]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[166]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[167]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[168]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[169]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[170]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[171]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[172]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[173]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[174]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[175]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[176]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[177]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[178]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[179]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[180]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[181]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[182]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[183]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[184]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[185]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[186]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[187]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[188]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[189]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[190]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "bio"            "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[191]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[192]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[193]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[194]]
##  [1] "country"        "hometown"       "city"           "topics"        
##  [5] "joined"         "link"           "photo"          "lon"           
##  [9] "other_services" "name"           "visited"        "self"          
## [13] "id"             "lat"            "status"        
## 
## [[195]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[196]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "photo"          "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[197]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"        
## 
## [[198]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[199]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "bio"            "lon"            "other_services"
##  [9] "name"           "visited"        "self"           "id"            
## [13] "lat"            "status"        
## 
## [[200]]
##  [1] "country"        "city"           "topics"         "joined"        
##  [5] "link"           "lon"            "other_services" "name"          
##  [9] "visited"        "self"           "id"             "lat"           
## [13] "status"
```

```r
l <- list.sort(members,(name))
list.select(l,name)
```

```
## [[1]]
## [[1]]$name
## [1] "Diana Rojas"
## 
## 
## [[2]]
## [[2]]$name
## [1] "Diana Marcela Pérez"
## 
## 
## [[3]]
## [[3]]$name
## [1] "Diana"
## 
## 
## [[4]]
## [[4]]$name
## [1] "Deysi"
## 
## 
## [[5]]
## [[5]]$name
## [1] "Deodatto Rizo"
## 
## 
## [[6]]
## [[6]]$name
## [1] "Deivyd VELASQUEZ"
## 
## 
## [[7]]
## [[7]]$name
## [1] "DavidAgM"
## 
## 
## [[8]]
## [[8]]$name
## [1] "david vidal"
## 
## 
## [[9]]
## [[9]]$name
## [1] "David Tovar"
## 
## 
## [[10]]
## [[10]]$name
## [1] "David Romero"
## 
## 
## [[11]]
## [[11]]$name
## [1] "David Mori"
## 
## 
## [[12]]
## [[12]]$name
## [1] "David Medina"
## 
## 
## [[13]]
## [[13]]$name
## [1] "David Hurtado"
## 
## 
## [[14]]
## [[14]]$name
## [1] "David Horta Quiroga"
## 
## 
## [[15]]
## [[15]]$name
## [1] "David Contreras"
## 
## 
## [[16]]
## [[16]]$name
## [1] "David Andres Zamora Avila"
## 
## 
## [[17]]
## [[17]]$name
## [1] "David Alzate"
## 
## 
## [[18]]
## [[18]]$name
## [1] "David"
## 
## 
## [[19]]
## [[19]]$name
## [1] "darknegma"
## 
## 
## [[20]]
## [[20]]$name
## [1] "Darío Zambrano"
## 
## 
## [[21]]
## [[21]]$name
## [1] "Daniela Pérez"
## 
## 
## [[22]]
## [[22]]$name
## [1] "Daniela Naranjo"
## 
## 
## [[23]]
## [[23]]$name
## [1] "Daniela Lopez"
## 
## 
## [[24]]
## [[24]]$name
## [1] "daniela espitia"
## 
## 
## [[25]]
## [[25]]$name
## [1] "Daniel Rocha Durán"
## 
## 
## [[26]]
## [[26]]$name
## [1] "Daniel R Cárdenas"
## 
## 
## [[27]]
## [[27]]$name
## [1] "Daniel Pino"
## 
## 
## [[28]]
## [[28]]$name
## [1] "Daniel Otero Robles"
## 
## 
## [[29]]
## [[29]]$name
## [1] "Daniel Osorio"
## 
## 
## [[30]]
## [[30]]$name
## [1] "Daniel Moreno"
## 
## 
## [[31]]
## [[31]]$name
## [1] "Daniel Leonardo Cruz"
## 
## 
## [[32]]
## [[32]]$name
## [1] "Daniel Gil Sánchez"
## 
## 
## [[33]]
## [[33]]$name
## [1] "Daniel Garavito"
## 
## 
## [[34]]
## [[34]]$name
## [1] "Daniel Galindo"
## 
## 
## [[35]]
## [[35]]$name
## [1] "Daniel Fuentes"
## 
## 
## [[36]]
## [[36]]$name
## [1] "DANIEL FERNANDO SANTOS BUSTOS"
## 
## 
## [[37]]
## [[37]]$name
## [1] "Daniel Cadosch"
## 
## 
## [[38]]
## [[38]]$name
## [1] "Daniel"
## 
## 
## [[39]]
## [[39]]$name
## [1] "Daniel"
## 
## 
## [[40]]
## [[40]]$name
## [1] "Cruz Julián"
## 
## 
## [[41]]
## [[41]]$name
## [1] "Cristian Socha"
## 
## 
## [[42]]
## [[42]]$name
## [1] "Cristian Quintero"
## 
## 
## [[43]]
## [[43]]$name
## [1] "cristian jhadyr guerrero herreño"
## 
## 
## [[44]]
## [[44]]$name
## [1] "cristian ibarra"
## 
## 
## [[45]]
## [[45]]$name
## [1] "Cristian Guerrero."
## 
## 
## [[46]]
## [[46]]$name
## [1] "Cristian Gaitan"
## 
## 
## [[47]]
## [[47]]$name
## [1] "Cristian Buitrago"
## 
## 
## [[48]]
## [[48]]$name
## [1] "Cristian"
## 
## 
## [[49]]
## [[49]]$name
## [1] "Crispancho Sp"
## 
## 
## [[50]]
## [[50]]$name
## [1] "Constanza Bastidas"
## 
## 
## [[51]]
## [[51]]$name
## [1] "Claudia Viviana Arévalo"
## 
## 
## [[52]]
## [[52]]$name
## [1] "CLAUDIA BAEZ"
## 
## 
## [[53]]
## [[53]]$name
## [1] "Ciro Montañez"
## 
## 
## [[54]]
## [[54]]$name
## [1] "Christian Gonzalez"
## 
## 
## [[55]]
## [[55]]$name
## [1] "Christian Camilo leguizamo"
## 
## 
## [[56]]
## [[56]]$name
## [1] "Cesar Rincon"
## 
## 
## [[57]]
## [[57]]$name
## [1] "Cesar Monroy"
## 
## 
## [[58]]
## [[58]]$name
## [1] "Cesar David Cañas Gamboa"
## 
## 
## [[59]]
## [[59]]$name
## [1] "Cesar A Basurto"
## 
## 
## [[60]]
## [[60]]$name
## [1] "CESA1973"
## 
## 
## [[61]]
## [[61]]$name
## [1] "cepardot"
## 
## 
## [[62]]
## [[62]]$name
## [1] "ccamilocr"
## 
## 
## [[63]]
## [[63]]$name
## [1] "Catalina Sikva"
## 
## 
## [[64]]
## [[64]]$name
## [1] "Catalina "
## 
## 
## [[65]]
## [[65]]$name
## [1] "Casa Roja Group Studios"
## 
## 
## [[66]]
## [[66]]$name
## [1] "Carolina Santander"
## 
## 
## [[67]]
## [[67]]$name
## [1] "Carolina Niño"
## 
## 
## [[68]]
## [[68]]$name
## [1] "Carolina BG"
## 
## 
## [[69]]
## [[69]]$name
## [1] "Carol"
## 
## 
## [[70]]
## [[70]]$name
## [1] "Carlos Vengoechea"
## 
## 
## [[71]]
## [[71]]$name
## [1] "Carlos Ruiz"
## 
## 
## [[72]]
## [[72]]$name
## [1] "Carlos Rueda"
## 
## 
## [[73]]
## [[73]]$name
## [1] "CARLOS ROMERO"
## 
## 
## [[74]]
## [[74]]$name
## [1] "Carlos Rodriguez"
## 
## 
## [[75]]
## [[75]]$name
## [1] "Carlos Reyes Charls Kings RB"
## 
## 
## [[76]]
## [[76]]$name
## [1] "Carlos Restrepo"
## 
## 
## [[77]]
## [[77]]$name
## [1] "Carlos Montoya"
## 
## 
## [[78]]
## [[78]]$name
## [1] "Carlos Manuel Arias"
## 
## 
## [[79]]
## [[79]]$name
## [1] "Carlos LESMES"
## 
## 
## [[80]]
## [[80]]$name
## [1] "Carlos Julio Díaz Varela"
## 
## 
## [[81]]
## [[81]]$name
## [1] "Carlos Jimenez"
## 
## 
## [[82]]
## [[82]]$name
## [1] "Carlos J. Gil Bellosta"
## 
## 
## [[83]]
## [[83]]$name
## [1] "carlos escobar"
## 
## 
## [[84]]
## [[84]]$name
## [1] "Carlos Eduardo Suarez Gonzalez"
## 
## 
## [[85]]
## [[85]]$name
## [1] "Carlos Eduardo Forero Marrero"
## 
## 
## [[86]]
## [[86]]$name
## [1] "Carlos Eduardo"
## 
## 
## [[87]]
## [[87]]$name
## [1] "Carlos E. Suárez G."
## 
## 
## [[88]]
## [[88]]$name
## [1] "Carlos Duque"
## 
## 
## [[89]]
## [[89]]$name
## [1] "Carlos Arturo Quiroga"
## 
## 
## [[90]]
## [[90]]$name
## [1] "Carlos Arguello"
## 
## 
## [[91]]
## [[91]]$name
## [1] "CARLOS ANDRES URREA SAMBONI"
## 
## 
## [[92]]
## [[92]]$name
## [1] "Carlos Andres"
## 
## 
## [[93]]
## [[93]]$name
## [1] "Carlos Alberto Ramírez Lara"
## 
## 
## [[94]]
## [[94]]$name
## [1] "Carlos Alberto Hernández Lozano"
## 
## 
## [[95]]
## [[95]]$name
## [1] "Carlos Alberto Arias"
## 
## 
## [[96]]
## [[96]]$name
## [1] "Carlos Albeiro Figueroa Ortiz"
## 
## 
## [[97]]
## [[97]]$name
## [1] "CARLOS"
## 
## 
## [[98]]
## [[98]]$name
## [1] "carlos"
## 
## 
## [[99]]
## [[99]]$name
## [1] "Carito Santander"
## 
## 
## [[100]]
## [[100]]$name
## [1] "camon7"
## 
## 
## [[101]]
## [[101]]$name
## [1] "Camilo Herrera R"
## 
## 
## [[102]]
## [[102]]$name
## [1] "Camilo Herrera"
## 
## 
## [[103]]
## [[103]]$name
## [1] "Camilo Cortes"
## 
## 
## [[104]]
## [[104]]$name
## [1] "Camilo Correa"
## 
## 
## [[105]]
## [[105]]$name
## [1] "Camilo Andrés Lemus"
## 
## 
## [[106]]
## [[106]]$name
## [1] "Camilo Andres"
## 
## 
## [[107]]
## [[107]]$name
## [1] "C. Eduardo Suárez G."
## 
## 
## [[108]]
## [[108]]$name
## [1] "byron tibocha velasco"
## 
## 
## [[109]]
## [[109]]$name
## [1] "Byron Herrera"
## 
## 
## [[110]]
## [[110]]$name
## [1] "Bryant Acero"
## 
## 
## [[111]]
## [[111]]$name
## [1] "Brenda Robledo"
## 
## 
## [[112]]
## [[112]]$name
## [1] "Bran Arango"
## 
## 
## [[113]]
## [[113]]$name
## [1] "Blanca Vallejo"
## 
## 
## [[114]]
## [[114]]$name
## [1] "Avefenix269"
## 
## 
## [[115]]
## [[115]]$name
## [1] "arturo moralez"
## 
## 
## [[116]]
## [[116]]$name
## [1] "Arlington Zahir Llerena"
## 
## 
## [[117]]
## [[117]]$name
## [1] "antonio"
## 
## 
## [[118]]
## [[118]]$name
## [1] "Angodoy"
## 
## 
## [[119]]
## [[119]]$name
## [1] "Angelo Rodriguez"
## 
## 
## [[120]]
## [[120]]$name
## [1] "Angelica B."
## 
## 
## [[121]]
## [[121]]$name
## [1] "Angélica Aguirre"
## 
## 
## [[122]]
## [[122]]$name
## [1] "angeleu"
## 
## 
## [[123]]
## [[123]]$name
## [1] "Ángela "
## 
## 
## [[124]]
## [[124]]$name
## [1] "andres vargas"
## 
## 
## [[125]]
## [[125]]$name
## [1] "Andres Rojas"
## 
## 
## [[126]]
## [[126]]$name
## [1] "Andrés Rodríguez "
## 
## 
## [[127]]
## [[127]]$name
## [1] "Andres Rodriguez"
## 
## 
## [[128]]
## [[128]]$name
## [1] "Andrés Mauricio Palacios"
## 
## 
## [[129]]
## [[129]]$name
## [1] "Andrés Luque"
## 
## 
## [[130]]
## [[130]]$name
## [1] "Andres Julian Moreno"
## 
## 
## [[131]]
## [[131]]$name
## [1] "Andres Jaime"
## 
## 
## [[132]]
## [[132]]$name
## [1] "andres hurtado"
## 
## 
## [[133]]
## [[133]]$name
## [1] "Andrés Hernández Acero"
## 
## 
## [[134]]
## [[134]]$name
## [1] "Andres Hernandez"
## 
## 
## [[135]]
## [[135]]$name
## [1] "ANDRÉS GUTIÉRREZ"
## 
## 
## [[136]]
## [[136]]$name
## [1] "Andrés Gómez Casanova"
## 
## 
## [[137]]
## [[137]]$name
## [1] "Andrés Fernández"
## 
## 
## [[138]]
## [[138]]$name
## [1] "Andres Felipe Florez Rivera"
## 
## 
## [[139]]
## [[139]]$name
## [1] "Andres Felipe Cruz Salinas"
## 
## 
## [[140]]
## [[140]]$name
## [1] "Andres Felipe Bonilla"
## 
## 
## [[141]]
## [[141]]$name
## [1] "Andrés Felipe"
## 
## 
## [[142]]
## [[142]]$name
## [1] "Andres Felipe"
## 
## 
## [[143]]
## [[143]]$name
## [1] "Andrés Fabián Corredor"
## 
## 
## [[144]]
## [[144]]$name
## [1] "Andres David Rios Ramos"
## 
## 
## [[145]]
## [[145]]$name
## [1] "andres bocanegra"
## 
## 
## [[146]]
## [[146]]$name
## [1] "Andrés Ariza"
## 
## 
## [[147]]
## [[147]]$name
## [1] "Andrés Acosta Escobar"
## 
## 
## [[148]]
## [[148]]$name
## [1] "andres"
## 
## 
## [[149]]
## [[149]]$name
## [1] "Andrea Taborda"
## 
## 
## [[150]]
## [[150]]$name
## [1] "Andrea Ruiz "
## 
## 
## [[151]]
## [[151]]$name
## [1] "Andrea Lopez"
## 
## 
## [[152]]
## [[152]]$name
## [1] "Andrea Higuera Araque"
## 
## 
## [[153]]
## [[153]]$name
## [1] "Andrea Calderon"
## 
## 
## [[154]]
## [[154]]$name
## [1] "Ana Eloísa Gómez"
## 
## 
## [[155]]
## [[155]]$name
## [1] "Ana"
## 
## 
## [[156]]
## [[156]]$name
## [1] "Amilkar Brunal"
## 
## 
## [[157]]
## [[157]]$name
## [1] "Ambrosio Torres"
## 
## 
## [[158]]
## [[158]]$name
## [1] "Amanda Granados"
## 
## 
## [[159]]
## [[159]]$name
## [1] "Alveiro Garcia"
## 
## 
## [[160]]
## [[160]]$name
## [1] "Álvaro Andrés"
## 
## 
## [[161]]
## [[161]]$name
## [1] "alvaro"
## 
## 
## [[162]]
## [[162]]$name
## [1] "Ali Santacruz"
## 
## 
## [[163]]
## [[163]]$name
## [1] "Alexito Barreno"
## 
## 
## [[164]]
## [[164]]$name
## [1] "Alexander Torres"
## 
## 
## [[165]]
## [[165]]$name
## [1] "Alexander Salamanca"
## 
## 
## [[166]]
## [[166]]$name
## [1] "Alexander Ramirez"
## 
## 
## [[167]]
## [[167]]$name
## [1] "Alexander Aristizabal"
## 
## 
## [[168]]
## [[168]]$name
## [1] "Alexander Alvis"
## 
## 
## [[169]]
## [[169]]$name
## [1] "Alexander"
## 
## 
## [[170]]
## [[170]]$name
## [1] "Alexa Barrantes"
## 
## 
## [[171]]
## [[171]]$name
## [1] "Alex Johann Zambrano Carbonell"
## 
## 
## [[172]]
## [[172]]$name
## [1] "Alex Aristizabal"
## 
## 
## [[173]]
## [[173]]$name
## [1] "AlejoGeek"
## 
## 
## [[174]]
## [[174]]$name
## [1] "Alejandro Zuleta Rojas"
## 
## 
## [[175]]
## [[175]]$name
## [1] "Alejandro Tobon"
## 
## 
## [[176]]
## [[176]]$name
## [1] "Alejandro Suarez"
## 
## 
## [[177]]
## [[177]]$name
## [1] "Alejandro P"
## 
## 
## [[178]]
## [[178]]$name
## [1] "Alejandro García Estrella"
## 
## 
## [[179]]
## [[179]]$name
## [1] "Alejandro Foullon"
## 
## 
## [[180]]
## [[180]]$name
## [1] "Alejandro Feged"
## 
## 
## [[181]]
## [[181]]$name
## [1] "Alejandro Correa Bahnsen"
## 
## 
## [[182]]
## [[182]]$name
## [1] "Alejandro Coca Castro"
## 
## 
## [[183]]
## [[183]]$name
## [1] "Alejandro"
## 
## 
## [[184]]
## [[184]]$name
## [1] "Alejandro"
## 
## 
## [[185]]
## [[185]]$name
## [1] "Alejandra Hincapie"
## 
## 
## [[186]]
## [[186]]$name
## [1] "Alejandra Amézquita"
## 
## 
## [[187]]
## [[187]]$name
## [1] "Alejandra"
## 
## 
## [[188]]
## [[188]]$name
## [1] "Alejandra"
## 
## 
## [[189]]
## [[189]]$name
## [1] "Alejandra"
## 
## 
## [[190]]
## [[190]]$name
## [1] "Ale Echavez"
## 
## 
## [[191]]
## [[191]]$name
## [1] "Aldo Rodriguez"
## 
## 
## [[192]]
## [[192]]$name
## [1] "Aldemar Guzman"
## 
## 
## [[193]]
## [[193]]$name
## [1] "Albert70-7"
## 
## 
## [[194]]
## [[194]]$name
## [1] "Adry"
## 
## 
## [[195]]
## [[195]]$name
## [1] "Adriana RG"
## 
## 
## [[196]]
## [[196]]$name
## [1] "Adriana Clavijo"
## 
## 
## [[197]]
## [[197]]$name
## [1] "Adrian Zuur"
## 
## 
## [[198]]
## [[198]]$name
## [1] "Abelardo Duarte Rey"
## 
## 
## [[199]]
## [[199]]$name
## [1] "1ng3"
## 
## 
## [[200]]
## [[200]]$name
## [1] "@jpmarindiaz"
```

```r
list.map(members,name)
```

```
## [[1]]
## [1] "@jpmarindiaz"
## 
## [[2]]
## [1] "1ng3"
## 
## [[3]]
## [1] "Abelardo Duarte Rey"
## 
## [[4]]
## [1] "Adrian Zuur"
## 
## [[5]]
## [1] "Adriana Clavijo"
## 
## [[6]]
## [1] "Adriana RG"
## 
## [[7]]
## [1] "Adry"
## 
## [[8]]
## [1] "Albert70-7"
## 
## [[9]]
## [1] "Aldemar Guzman"
## 
## [[10]]
## [1] "Aldo Rodriguez"
## 
## [[11]]
## [1] "Ale Echavez"
## 
## [[12]]
## [1] "Alejandra"
## 
## [[13]]
## [1] "Alejandra"
## 
## [[14]]
## [1] "Alejandra"
## 
## [[15]]
## [1] "Alejandra Amézquita"
## 
## [[16]]
## [1] "Alejandra Hincapie"
## 
## [[17]]
## [1] "Alejandro"
## 
## [[18]]
## [1] "Alejandro"
## 
## [[19]]
## [1] "Alejandro Coca Castro"
## 
## [[20]]
## [1] "Alejandro Correa Bahnsen"
## 
## [[21]]
## [1] "Alejandro Feged"
## 
## [[22]]
## [1] "Alejandro Foullon"
## 
## [[23]]
## [1] "Alejandro García Estrella"
## 
## [[24]]
## [1] "Alejandro P"
## 
## [[25]]
## [1] "Alejandro Suarez"
## 
## [[26]]
## [1] "Alejandro Tobon"
## 
## [[27]]
## [1] "Alejandro Zuleta Rojas"
## 
## [[28]]
## [1] "AlejoGeek"
## 
## [[29]]
## [1] "Alex Aristizabal"
## 
## [[30]]
## [1] "Alex Johann Zambrano Carbonell"
## 
## [[31]]
## [1] "Alexa Barrantes"
## 
## [[32]]
## [1] "Alexander"
## 
## [[33]]
## [1] "Alexander Alvis"
## 
## [[34]]
## [1] "Alexander Aristizabal"
## 
## [[35]]
## [1] "Alexander Ramirez"
## 
## [[36]]
## [1] "Alexander Salamanca"
## 
## [[37]]
## [1] "Alexander Torres"
## 
## [[38]]
## [1] "Alexito Barreno"
## 
## [[39]]
## [1] "Ali Santacruz"
## 
## [[40]]
## [1] "alvaro"
## 
## [[41]]
## [1] "Álvaro Andrés"
## 
## [[42]]
## [1] "Alveiro Garcia"
## 
## [[43]]
## [1] "Amanda Granados"
## 
## [[44]]
## [1] "Ambrosio Torres"
## 
## [[45]]
## [1] "Amilkar Brunal"
## 
## [[46]]
## [1] "Ana"
## 
## [[47]]
## [1] "Ana Eloísa Gómez"
## 
## [[48]]
## [1] "Andrea Calderon"
## 
## [[49]]
## [1] "Andrea Higuera Araque"
## 
## [[50]]
## [1] "Andrea Lopez"
## 
## [[51]]
## [1] "Andrea Ruiz "
## 
## [[52]]
## [1] "Andrea Taborda"
## 
## [[53]]
## [1] "andres"
## 
## [[54]]
## [1] "Andrés Acosta Escobar"
## 
## [[55]]
## [1] "Andrés Ariza"
## 
## [[56]]
## [1] "andres bocanegra"
## 
## [[57]]
## [1] "Andres David Rios Ramos"
## 
## [[58]]
## [1] "Andrés Fabián Corredor"
## 
## [[59]]
## [1] "Andres Felipe"
## 
## [[60]]
## [1] "Andrés Felipe"
## 
## [[61]]
## [1] "Andres Felipe Bonilla"
## 
## [[62]]
## [1] "Andres Felipe Cruz Salinas"
## 
## [[63]]
## [1] "Andres Felipe Florez Rivera"
## 
## [[64]]
## [1] "Andrés Fernández"
## 
## [[65]]
## [1] "Andrés Gómez Casanova"
## 
## [[66]]
## [1] "ANDRÉS GUTIÉRREZ"
## 
## [[67]]
## [1] "Andres Hernandez"
## 
## [[68]]
## [1] "Andrés Hernández Acero"
## 
## [[69]]
## [1] "andres hurtado"
## 
## [[70]]
## [1] "Andres Jaime"
## 
## [[71]]
## [1] "Andres Julian Moreno"
## 
## [[72]]
## [1] "Andrés Luque"
## 
## [[73]]
## [1] "Andrés Mauricio Palacios"
## 
## [[74]]
## [1] "Andres Rodriguez"
## 
## [[75]]
## [1] "Andrés Rodríguez "
## 
## [[76]]
## [1] "Andres Rojas"
## 
## [[77]]
## [1] "andres vargas"
## 
## [[78]]
## [1] "Ángela "
## 
## [[79]]
## [1] "angeleu"
## 
## [[80]]
## [1] "Angélica Aguirre"
## 
## [[81]]
## [1] "Angelica B."
## 
## [[82]]
## [1] "Angelo Rodriguez"
## 
## [[83]]
## [1] "Angodoy"
## 
## [[84]]
## [1] "antonio"
## 
## [[85]]
## [1] "Arlington Zahir Llerena"
## 
## [[86]]
## [1] "arturo moralez"
## 
## [[87]]
## [1] "Avefenix269"
## 
## [[88]]
## [1] "Blanca Vallejo"
## 
## [[89]]
## [1] "Bran Arango"
## 
## [[90]]
## [1] "Brenda Robledo"
## 
## [[91]]
## [1] "Bryant Acero"
## 
## [[92]]
## [1] "Byron Herrera"
## 
## [[93]]
## [1] "byron tibocha velasco"
## 
## [[94]]
## [1] "C. Eduardo Suárez G."
## 
## [[95]]
## [1] "Camilo Andres"
## 
## [[96]]
## [1] "Camilo Andrés Lemus"
## 
## [[97]]
## [1] "Camilo Correa"
## 
## [[98]]
## [1] "Camilo Cortes"
## 
## [[99]]
## [1] "Camilo Herrera"
## 
## [[100]]
## [1] "Camilo Herrera R"
## 
## [[101]]
## [1] "camon7"
## 
## [[102]]
## [1] "Carito Santander"
## 
## [[103]]
## [1] "carlos"
## 
## [[104]]
## [1] "CARLOS"
## 
## [[105]]
## [1] "Carlos Albeiro Figueroa Ortiz"
## 
## [[106]]
## [1] "Carlos Alberto Arias"
## 
## [[107]]
## [1] "Carlos Alberto Hernández Lozano"
## 
## [[108]]
## [1] "Carlos Alberto Ramírez Lara"
## 
## [[109]]
## [1] "Carlos Andres"
## 
## [[110]]
## [1] "CARLOS ANDRES URREA SAMBONI"
## 
## [[111]]
## [1] "Carlos Arguello"
## 
## [[112]]
## [1] "Carlos Arturo Quiroga"
## 
## [[113]]
## [1] "Carlos Duque"
## 
## [[114]]
## [1] "Carlos E. Suárez G."
## 
## [[115]]
## [1] "Carlos Eduardo"
## 
## [[116]]
## [1] "Carlos Eduardo Forero Marrero"
## 
## [[117]]
## [1] "Carlos Eduardo Suarez Gonzalez"
## 
## [[118]]
## [1] "carlos escobar"
## 
## [[119]]
## [1] "Carlos J. Gil Bellosta"
## 
## [[120]]
## [1] "Carlos Jimenez"
## 
## [[121]]
## [1] "Carlos Julio Díaz Varela"
## 
## [[122]]
## [1] "Carlos LESMES"
## 
## [[123]]
## [1] "Carlos Manuel Arias"
## 
## [[124]]
## [1] "Carlos Montoya"
## 
## [[125]]
## [1] "Carlos Restrepo"
## 
## [[126]]
## [1] "Carlos Reyes Charls Kings RB"
## 
## [[127]]
## [1] "Carlos Rodriguez"
## 
## [[128]]
## [1] "CARLOS ROMERO"
## 
## [[129]]
## [1] "Carlos Rueda"
## 
## [[130]]
## [1] "Carlos Ruiz"
## 
## [[131]]
## [1] "Carlos Vengoechea"
## 
## [[132]]
## [1] "Carol"
## 
## [[133]]
## [1] "Carolina BG"
## 
## [[134]]
## [1] "Carolina Niño"
## 
## [[135]]
## [1] "Carolina Santander"
## 
## [[136]]
## [1] "Casa Roja Group Studios"
## 
## [[137]]
## [1] "Catalina "
## 
## [[138]]
## [1] "Catalina Sikva"
## 
## [[139]]
## [1] "ccamilocr"
## 
## [[140]]
## [1] "cepardot"
## 
## [[141]]
## [1] "CESA1973"
## 
## [[142]]
## [1] "Cesar A Basurto"
## 
## [[143]]
## [1] "Cesar David Cañas Gamboa"
## 
## [[144]]
## [1] "Cesar Monroy"
## 
## [[145]]
## [1] "Cesar Rincon"
## 
## [[146]]
## [1] "Christian Camilo leguizamo"
## 
## [[147]]
## [1] "Christian Gonzalez"
## 
## [[148]]
## [1] "Ciro Montañez"
## 
## [[149]]
## [1] "CLAUDIA BAEZ"
## 
## [[150]]
## [1] "Claudia Viviana Arévalo"
## 
## [[151]]
## [1] "Constanza Bastidas"
## 
## [[152]]
## [1] "Crispancho Sp"
## 
## [[153]]
## [1] "Cristian"
## 
## [[154]]
## [1] "Cristian Buitrago"
## 
## [[155]]
## [1] "Cristian Gaitan"
## 
## [[156]]
## [1] "Cristian Guerrero."
## 
## [[157]]
## [1] "cristian ibarra"
## 
## [[158]]
## [1] "cristian jhadyr guerrero herreño"
## 
## [[159]]
## [1] "Cristian Quintero"
## 
## [[160]]
## [1] "Cristian Socha"
## 
## [[161]]
## [1] "Cruz Julián"
## 
## [[162]]
## [1] "Daniel"
## 
## [[163]]
## [1] "Daniel"
## 
## [[164]]
## [1] "Daniel Cadosch"
## 
## [[165]]
## [1] "DANIEL FERNANDO SANTOS BUSTOS"
## 
## [[166]]
## [1] "Daniel Fuentes"
## 
## [[167]]
## [1] "Daniel Galindo"
## 
## [[168]]
## [1] "Daniel Garavito"
## 
## [[169]]
## [1] "Daniel Gil Sánchez"
## 
## [[170]]
## [1] "Daniel Leonardo Cruz"
## 
## [[171]]
## [1] "Daniel Moreno"
## 
## [[172]]
## [1] "Daniel Osorio"
## 
## [[173]]
## [1] "Daniel Otero Robles"
## 
## [[174]]
## [1] "Daniel Pino"
## 
## [[175]]
## [1] "Daniel R Cárdenas"
## 
## [[176]]
## [1] "Daniel Rocha Durán"
## 
## [[177]]
## [1] "daniela espitia"
## 
## [[178]]
## [1] "Daniela Lopez"
## 
## [[179]]
## [1] "Daniela Naranjo"
## 
## [[180]]
## [1] "Daniela Pérez"
## 
## [[181]]
## [1] "Darío Zambrano"
## 
## [[182]]
## [1] "darknegma"
## 
## [[183]]
## [1] "David"
## 
## [[184]]
## [1] "David Alzate"
## 
## [[185]]
## [1] "David Andres Zamora Avila"
## 
## [[186]]
## [1] "David Contreras"
## 
## [[187]]
## [1] "David Horta Quiroga"
## 
## [[188]]
## [1] "David Hurtado"
## 
## [[189]]
## [1] "David Medina"
## 
## [[190]]
## [1] "David Mori"
## 
## [[191]]
## [1] "David Romero"
## 
## [[192]]
## [1] "David Tovar"
## 
## [[193]]
## [1] "david vidal"
## 
## [[194]]
## [1] "DavidAgM"
## 
## [[195]]
## [1] "Deivyd VELASQUEZ"
## 
## [[196]]
## [1] "Deodatto Rizo"
## 
## [[197]]
## [1] "Deysi"
## 
## [[198]]
## [1] "Diana"
## 
## [[199]]
## [1] "Diana Marcela Pérez"
## 
## [[200]]
## [1] "Diana Rojas"
```

```r
list.mapv(members,name)
```

```
##   [1] "@jpmarindiaz"                     "1ng3"                            
##   [3] "Abelardo Duarte Rey"              "Adrian Zuur"                     
##   [5] "Adriana Clavijo"                  "Adriana RG"                      
##   [7] "Adry"                             "Albert70-7"                      
##   [9] "Aldemar Guzman"                   "Aldo Rodriguez"                  
##  [11] "Ale Echavez"                      "Alejandra"                       
##  [13] "Alejandra"                        "Alejandra"                       
##  [15] "Alejandra Amézquita"              "Alejandra Hincapie"              
##  [17] "Alejandro"                        "Alejandro"                       
##  [19] "Alejandro Coca Castro"            "Alejandro Correa Bahnsen"        
##  [21] "Alejandro Feged"                  "Alejandro Foullon"               
##  [23] "Alejandro García Estrella"        "Alejandro P"                     
##  [25] "Alejandro Suarez"                 "Alejandro Tobon"                 
##  [27] "Alejandro Zuleta Rojas"           "AlejoGeek"                       
##  [29] "Alex Aristizabal"                 "Alex Johann Zambrano Carbonell"  
##  [31] "Alexa Barrantes"                  "Alexander"                       
##  [33] "Alexander Alvis"                  "Alexander Aristizabal"           
##  [35] "Alexander Ramirez"                "Alexander Salamanca"             
##  [37] "Alexander Torres"                 "Alexito Barreno"                 
##  [39] "Ali Santacruz"                    "alvaro"                          
##  [41] "Álvaro Andrés"                    "Alveiro Garcia"                  
##  [43] "Amanda Granados"                  "Ambrosio Torres"                 
##  [45] "Amilkar Brunal"                   "Ana"                             
##  [47] "Ana Eloísa Gómez"                 "Andrea Calderon"                 
##  [49] "Andrea Higuera Araque"            "Andrea Lopez"                    
##  [51] "Andrea Ruiz "                     "Andrea Taborda"                  
##  [53] "andres"                           "Andrés Acosta Escobar"           
##  [55] "Andrés Ariza"                     "andres bocanegra"                
##  [57] "Andres David Rios Ramos"          "Andrés Fabián Corredor"          
##  [59] "Andres Felipe"                    "Andrés Felipe"                   
##  [61] "Andres Felipe Bonilla"            "Andres Felipe Cruz Salinas"      
##  [63] "Andres Felipe Florez Rivera"      "Andrés Fernández"                
##  [65] "Andrés Gómez Casanova"            "ANDRÉS GUTIÉRREZ"                
##  [67] "Andres Hernandez"                 "Andrés Hernández Acero"          
##  [69] "andres hurtado"                   "Andres Jaime"                    
##  [71] "Andres Julian Moreno"             "Andrés Luque"                    
##  [73] "Andrés Mauricio Palacios"         "Andres Rodriguez"                
##  [75] "Andrés Rodríguez "                "Andres Rojas"                    
##  [77] "andres vargas"                    "Ángela "                         
##  [79] "angeleu"                          "Angélica Aguirre"                
##  [81] "Angelica B."                      "Angelo Rodriguez"                
##  [83] "Angodoy"                          "antonio"                         
##  [85] "Arlington Zahir Llerena"          "arturo moralez"                  
##  [87] "Avefenix269"                      "Blanca Vallejo"                  
##  [89] "Bran Arango"                      "Brenda Robledo"                  
##  [91] "Bryant Acero"                     "Byron Herrera"                   
##  [93] "byron tibocha velasco"            "C. Eduardo Suárez G."            
##  [95] "Camilo Andres"                    "Camilo Andrés Lemus"             
##  [97] "Camilo Correa"                    "Camilo Cortes"                   
##  [99] "Camilo Herrera"                   "Camilo Herrera R"                
## [101] "camon7"                           "Carito Santander"                
## [103] "carlos"                           "CARLOS"                          
## [105] "Carlos Albeiro Figueroa Ortiz"    "Carlos Alberto Arias"            
## [107] "Carlos Alberto Hernández Lozano"  "Carlos Alberto Ramírez Lara"     
## [109] "Carlos Andres"                    "CARLOS ANDRES URREA SAMBONI"     
## [111] "Carlos Arguello"                  "Carlos Arturo Quiroga"           
## [113] "Carlos Duque"                     "Carlos E. Suárez G."             
## [115] "Carlos Eduardo"                   "Carlos Eduardo Forero Marrero"   
## [117] "Carlos Eduardo Suarez Gonzalez"   "carlos escobar"                  
## [119] "Carlos J. Gil Bellosta"           "Carlos Jimenez"                  
## [121] "Carlos Julio Díaz Varela"         "Carlos LESMES"                   
## [123] "Carlos Manuel Arias"              "Carlos Montoya"                  
## [125] "Carlos Restrepo"                  "Carlos Reyes Charls Kings RB"    
## [127] "Carlos Rodriguez"                 "CARLOS ROMERO"                   
## [129] "Carlos Rueda"                     "Carlos Ruiz"                     
## [131] "Carlos Vengoechea"                "Carol"                           
## [133] "Carolina BG"                      "Carolina Niño"                   
## [135] "Carolina Santander"               "Casa Roja Group Studios"         
## [137] "Catalina "                        "Catalina Sikva"                  
## [139] "ccamilocr"                        "cepardot"                        
## [141] "CESA1973"                         "Cesar A Basurto"                 
## [143] "Cesar David Cañas Gamboa"         "Cesar Monroy"                    
## [145] "Cesar Rincon"                     "Christian Camilo leguizamo"      
## [147] "Christian Gonzalez"               "Ciro Montañez"                   
## [149] "CLAUDIA BAEZ"                     "Claudia Viviana Arévalo"         
## [151] "Constanza Bastidas"               "Crispancho Sp"                   
## [153] "Cristian"                         "Cristian Buitrago"               
## [155] "Cristian Gaitan"                  "Cristian Guerrero."              
## [157] "cristian ibarra"                  "cristian jhadyr guerrero herreño"
## [159] "Cristian Quintero"                "Cristian Socha"                  
## [161] "Cruz Julián"                      "Daniel"                          
## [163] "Daniel"                           "Daniel Cadosch"                  
## [165] "DANIEL FERNANDO SANTOS BUSTOS"    "Daniel Fuentes"                  
## [167] "Daniel Galindo"                   "Daniel Garavito"                 
## [169] "Daniel Gil Sánchez"               "Daniel Leonardo Cruz"            
## [171] "Daniel Moreno"                    "Daniel Osorio"                   
## [173] "Daniel Otero Robles"              "Daniel Pino"                     
## [175] "Daniel R Cárdenas"                "Daniel Rocha Durán"              
## [177] "daniela espitia"                  "Daniela Lopez"                   
## [179] "Daniela Naranjo"                  "Daniela Pérez"                   
## [181] "Darío Zambrano"                   "darknegma"                       
## [183] "David"                            "David Alzate"                    
## [185] "David Andres Zamora Avila"        "David Contreras"                 
## [187] "David Horta Quiroga"              "David Hurtado"                   
## [189] "David Medina"                     "David Mori"                      
## [191] "David Romero"                     "David Tovar"                     
## [193] "david vidal"                      "DavidAgM"                        
## [195] "Deivyd VELASQUEZ"                 "Deodatto Rizo"                   
## [197] "Deysi"                            "Diana"                           
## [199] "Diana Marcela Pérez"              "Diana Rojas"
```

```r
list.select(members,city)
```

```
## [[1]]
## [[1]]$city
## [1] "Bogotá"
## 
## 
## [[2]]
## [[2]]$city
## [1] "Bogotá"
## 
## 
## [[3]]
## [[3]]$city
## [1] "San Francisco"
## 
## 
## [[4]]
## [[4]]$city
## [1] "Bogotá"
## 
## 
## [[5]]
## [[5]]$city
## [1] "Bogotá"
## 
## 
## [[6]]
## [[6]]$city
## [1] "Bogotá"
## 
## 
## [[7]]
## [[7]]$city
## [1] "Bogotá"
## 
## 
## [[8]]
## [[8]]$city
## [1] "Bogotá"
## 
## 
## [[9]]
## [[9]]$city
## [1] "Bogotá"
## 
## 
## [[10]]
## [[10]]$city
## [1] "Bogotá"
## 
## 
## [[11]]
## [[11]]$city
## [1] "Cota"
## 
## 
## [[12]]
## [[12]]$city
## [1] "Brisbane"
## 
## 
## [[13]]
## [[13]]$city
## [1] "Bogotá"
## 
## 
## [[14]]
## [[14]]$city
## [1] "Bogotá"
## 
## 
## [[15]]
## [[15]]$city
## [1] "Bogotá"
## 
## 
## [[16]]
## [[16]]$city
## [1] "Bogotá"
## 
## 
## [[17]]
## [[17]]$city
## [1] "Bogotá"
## 
## 
## [[18]]
## [[18]]$city
## [1] "Bogotá"
## 
## 
## [[19]]
## [[19]]$city
## [1] "London"
## 
## 
## [[20]]
## [[20]]$city
## [1] "Bogotá"
## 
## 
## [[21]]
## [[21]]$city
## [1] "Bogotá"
## 
## 
## [[22]]
## [[22]]$city
## [1] "Bogotá"
## 
## 
## [[23]]
## [[23]]$city
## [1] "Medellín"
## 
## 
## [[24]]
## [[24]]$city
## [1] "Bogotá"
## 
## 
## [[25]]
## [[25]]$city
## [1] "Cartagena"
## 
## 
## [[26]]
## [[26]]$city
## [1] "Bogotá"
## 
## 
## [[27]]
## [[27]]$city
## [1] "Bogotá"
## 
## 
## [[28]]
## [[28]]$city
## [1] "Bogotá"
## 
## 
## [[29]]
## [[29]]$city
## [1] "Bogotá"
## 
## 
## [[30]]
## [[30]]$city
## [1] "Bogotá"
## 
## 
## [[31]]
## [[31]]$city
## [1] "Bogotá"
## 
## 
## [[32]]
## [[32]]$city
## [1] "Bogotá"
## 
## 
## [[33]]
## [[33]]$city
## [1] "Bogotá"
## 
## 
## [[34]]
## [[34]]$city
## [1] "Bogotá"
## 
## 
## [[35]]
## [[35]]$city
## [1] "Bogotá"
## 
## 
## [[36]]
## [[36]]$city
## [1] "Bogotá"
## 
## 
## [[37]]
## [[37]]$city
## [1] "Bogotá"
## 
## 
## [[38]]
## [[38]]$city
## [1] "Quito"
## 
## 
## [[39]]
## [[39]]$city
## [1] "Bogotá"
## 
## 
## [[40]]
## [[40]]$city
## [1] "Bogotá"
## 
## 
## [[41]]
## [[41]]$city
## [1] "Bogotá"
## 
## 
## [[42]]
## [[42]]$city
## [1] "Bogotá"
## 
## 
## [[43]]
## [[43]]$city
## [1] "Bogotá"
## 
## 
## [[44]]
## [[44]]$city
## [1] "Bogotá"
## 
## 
## [[45]]
## [[45]]$city
## [1] "Bogotá"
## 
## 
## [[46]]
## [[46]]$city
## [1] "Bogotá"
## 
## 
## [[47]]
## [[47]]$city
## [1] "Bogotá"
## 
## 
## [[48]]
## [[48]]$city
## [1] "Bogotá"
## 
## 
## [[49]]
## [[49]]$city
## [1] "Bogotá"
## 
## 
## [[50]]
## [[50]]$city
## [1] "Bogotá"
## 
## 
## [[51]]
## [[51]]$city
## [1] "Bogotá"
## 
## 
## [[52]]
## [[52]]$city
## [1] "Bogotá"
## 
## 
## [[53]]
## [[53]]$city
## [1] "Bogotá"
## 
## 
## [[54]]
## [[54]]$city
## [1] "Bogotá"
## 
## 
## [[55]]
## [[55]]$city
## [1] "Bogotá"
## 
## 
## [[56]]
## [[56]]$city
## [1] "Bogotá"
## 
## 
## [[57]]
## [[57]]$city
## [1] "Bogotá"
## 
## 
## [[58]]
## [[58]]$city
## [1] "Bogotá"
## 
## 
## [[59]]
## [[59]]$city
## [1] "Bogotá"
## 
## 
## [[60]]
## [[60]]$city
## [1] "Bogotá"
## 
## 
## [[61]]
## [[61]]$city
## [1] "Bogotá"
## 
## 
## [[62]]
## [[62]]$city
## [1] "Bogotá"
## 
## 
## [[63]]
## [[63]]$city
## [1] "San Francisco"
## 
## 
## [[64]]
## [[64]]$city
## [1] "Buenos Aires"
## 
## 
## [[65]]
## [[65]]$city
## [1] "Bogotá"
## 
## 
## [[66]]
## [[66]]$city
## [1] "Bogotá"
## 
## 
## [[67]]
## [[67]]$city
## [1] "Bogotá"
## 
## 
## [[68]]
## [[68]]$city
## [1] "Bogotá"
## 
## 
## [[69]]
## [[69]]$city
## [1] "Bogotá"
## 
## 
## [[70]]
## [[70]]$city
## [1] "Bogotá"
## 
## 
## [[71]]
## [[71]]$city
## [1] "Bogotá"
## 
## 
## [[72]]
## [[72]]$city
## [1] "Facatativá"
## 
## 
## [[73]]
## [[73]]$city
## [1] "Bogotá"
## 
## 
## [[74]]
## [[74]]$city
## [1] "Bogotá"
## 
## 
## [[75]]
## [[75]]$city
## [1] "Bogotá"
## 
## 
## [[76]]
## [[76]]$city
## [1] "Bogotá"
## 
## 
## [[77]]
## [[77]]$city
## [1] "Bogotá"
## 
## 
## [[78]]
## [[78]]$city
## [1] "Bogotá"
## 
## 
## [[79]]
## [[79]]$city
## [1] "Bogotá"
## 
## 
## [[80]]
## [[80]]$city
## [1] "Bogotá"
## 
## 
## [[81]]
## [[81]]$city
## [1] "Bogotá"
## 
## 
## [[82]]
## [[82]]$city
## [1] "Bogotá"
## 
## 
## [[83]]
## [[83]]$city
## [1] "Bogotá"
## 
## 
## [[84]]
## [[84]]$city
## [1] "Bogotá"
## 
## 
## [[85]]
## [[85]]$city
## [1] "Bogotá"
## 
## 
## [[86]]
## [[86]]$city
## [1] "Bogotá"
## 
## 
## [[87]]
## [[87]]$city
## [1] "Quito"
## 
## 
## [[88]]
## [[88]]$city
## [1] "Bogotá"
## 
## 
## [[89]]
## [[89]]$city
## [1] "Bogotá"
## 
## 
## [[90]]
## [[90]]$city
## [1] "Bogotá"
## 
## 
## [[91]]
## [[91]]$city
## [1] "Bogotá"
## 
## 
## [[92]]
## [[92]]$city
## [1] "Bogotá"
## 
## 
## [[93]]
## [[93]]$city
## [1] "Bogotá"
## 
## 
## [[94]]
## [[94]]$city
## [1] "Bogotá"
## 
## 
## [[95]]
## [[95]]$city
## [1] "Bogotá"
## 
## 
## [[96]]
## [[96]]$city
## [1] "Bogotá"
## 
## 
## [[97]]
## [[97]]$city
## [1] "Bogotá"
## 
## 
## [[98]]
## [[98]]$city
## [1] "Bogotá"
## 
## 
## [[99]]
## [[99]]$city
## [1] "Cali"
## 
## 
## [[100]]
## [[100]]$city
## [1] "Cali"
## 
## 
## [[101]]
## [[101]]$city
## [1] "Bogotá"
## 
## 
## [[102]]
## [[102]]$city
## [1] "Bogotá"
## 
## 
## [[103]]
## [[103]]$city
## [1] "Bogotá"
## 
## 
## [[104]]
## [[104]]$city
## [1] "Quito"
## 
## 
## [[105]]
## [[105]]$city
## [1] "Bogotá"
## 
## 
## [[106]]
## [[106]]$city
## [1] "Bogotá"
## 
## 
## [[107]]
## [[107]]$city
## [1] "Bogotá"
## 
## 
## [[108]]
## [[108]]$city
## [1] "Bogotá"
## 
## 
## [[109]]
## [[109]]$city
## [1] "Bogotá"
## 
## 
## [[110]]
## [[110]]$city
## [1] "Bogotá"
## 
## 
## [[111]]
## [[111]]$city
## [1] "Bogotá"
## 
## 
## [[112]]
## [[112]]$city
## [1] "Bogotá"
## 
## 
## [[113]]
## [[113]]$city
## [1] "Bogotá"
## 
## 
## [[114]]
## [[114]]$city
## [1] "Bogotá"
## 
## 
## [[115]]
## [[115]]$city
## [1] "Bogotá"
## 
## 
## [[116]]
## [[116]]$city
## [1] "Bogotá"
## 
## 
## [[117]]
## [[117]]$city
## [1] "Medellín"
## 
## 
## [[118]]
## [[118]]$city
## [1] "Bogotá"
## 
## 
## [[119]]
## [[119]]$city
## [1] "Madrid"
## 
## 
## [[120]]
## [[120]]$city
## [1] "Bogotá"
## 
## 
## [[121]]
## [[121]]$city
## [1] "Bogotá"
## 
## 
## [[122]]
## [[122]]$city
## [1] "Bogotá"
## 
## 
## [[123]]
## [[123]]$city
## [1] "Bogotá"
## 
## 
## [[124]]
## [[124]]$city
## [1] "Medellín"
## 
## 
## [[125]]
## [[125]]$city
## [1] "Dublin"
## 
## 
## [[126]]
## [[126]]$city
## [1] "Funza"
## 
## 
## [[127]]
## [[127]]$city
## [1] "Bogotá"
## 
## 
## [[128]]
## [[128]]$city
## [1] "Bogotá"
## 
## 
## [[129]]
## [[129]]$city
## [1] "Bogotá"
## 
## 
## [[130]]
## [[130]]$city
## [1] "Bogotá"
## 
## 
## [[131]]
## [[131]]$city
## [1] "Bogotá"
## 
## 
## [[132]]
## [[132]]$city
## [1] "Bogotá"
## 
## 
## [[133]]
## [[133]]$city
## [1] "Bogotá"
## 
## 
## [[134]]
## [[134]]$city
## [1] "Bogotá"
## 
## 
## [[135]]
## [[135]]$city
## [1] "Bogotá"
## 
## 
## [[136]]
## [[136]]$city
## [1] "Bogotá"
## 
## 
## [[137]]
## [[137]]$city
## [1] "Bogotá"
## 
## 
## [[138]]
## [[138]]$city
## [1] "Cota"
## 
## 
## [[139]]
## [[139]]$city
## [1] "Bogotá"
## 
## 
## [[140]]
## [[140]]$city
## [1] "Bogotá"
## 
## 
## [[141]]
## [[141]]$city
## [1] "Quito"
## 
## 
## [[142]]
## [[142]]$city
## [1] "Bogotá"
## 
## 
## [[143]]
## [[143]]$city
## [1] "Bogotá"
## 
## 
## [[144]]
## [[144]]$city
## [1] "Bogotá"
## 
## 
## [[145]]
## [[145]]$city
## [1] "Villavicencio"
## 
## 
## [[146]]
## [[146]]$city
## [1] "Bogotá"
## 
## 
## [[147]]
## [[147]]$city
## [1] "Bogotá"
## 
## 
## [[148]]
## [[148]]$city
## [1] "Bogotá"
## 
## 
## [[149]]
## [[149]]$city
## [1] "Bogotá"
## 
## 
## [[150]]
## [[150]]$city
## [1] "Medellín"
## 
## 
## [[151]]
## [[151]]$city
## [1] "Bogotá"
## 
## 
## [[152]]
## [[152]]$city
## [1] "Bogotá"
## 
## 
## [[153]]
## [[153]]$city
## [1] "Bogotá"
## 
## 
## [[154]]
## [[154]]$city
## [1] "Bogotá"
## 
## 
## [[155]]
## [[155]]$city
## [1] "Bogotá"
## 
## 
## [[156]]
## [[156]]$city
## [1] "Bogotá"
## 
## 
## [[157]]
## [[157]]$city
## [1] "Bogotá"
## 
## 
## [[158]]
## [[158]]$city
## [1] "Bogotá"
## 
## 
## [[159]]
## [[159]]$city
## [1] "Bogotá"
## 
## 
## [[160]]
## [[160]]$city
## [1] "Bogotá"
## 
## 
## [[161]]
## [[161]]$city
## [1] "Bogotá"
## 
## 
## [[162]]
## [[162]]$city
## [1] "Bogotá"
## 
## 
## [[163]]
## [[163]]$city
## [1] "Bogotá"
## 
## 
## [[164]]
## [[164]]$city
## [1] "Bogotá"
## 
## 
## [[165]]
## [[165]]$city
## [1] "Bogotá"
## 
## 
## [[166]]
## [[166]]$city
## [1] "Bogotá"
## 
## 
## [[167]]
## [[167]]$city
## [1] "Bogotá"
## 
## 
## [[168]]
## [[168]]$city
## [1] "Bogotá"
## 
## 
## [[169]]
## [[169]]$city
## [1] "Bogotá"
## 
## 
## [[170]]
## [[170]]$city
## [1] "Bogotá"
## 
## 
## [[171]]
## [[171]]$city
## [1] "Bogotá"
## 
## 
## [[172]]
## [[172]]$city
## [1] "Bogotá"
## 
## 
## [[173]]
## [[173]]$city
## [1] "Bogotá"
## 
## 
## [[174]]
## [[174]]$city
## [1] "Bogotá"
## 
## 
## [[175]]
## [[175]]$city
## [1] "Bogotá"
## 
## 
## [[176]]
## [[176]]$city
## [1] "Bogotá"
## 
## 
## [[177]]
## [[177]]$city
## [1] "Chía"
## 
## 
## [[178]]
## [[178]]$city
## [1] "Bogotá"
## 
## 
## [[179]]
## [[179]]$city
## [1] "Bogotá"
## 
## 
## [[180]]
## [[180]]$city
## [1] "Bogotá"
## 
## 
## [[181]]
## [[181]]$city
## [1] "Bogotá"
## 
## 
## [[182]]
## [[182]]$city
## [1] "Bogotá"
## 
## 
## [[183]]
## [[183]]$city
## [1] "Bogotá"
## 
## 
## [[184]]
## [[184]]$city
## [1] "Bogotá"
## 
## 
## [[185]]
## [[185]]$city
## [1] "Bogotá"
## 
## 
## [[186]]
## [[186]]$city
## [1] "Bogotá"
## 
## 
## [[187]]
## [[187]]$city
## [1] "Bogotá"
## 
## 
## [[188]]
## [[188]]$city
## [1] "Bogotá"
## 
## 
## [[189]]
## [[189]]$city
## [1] "Funza"
## 
## 
## [[190]]
## [[190]]$city
## [1] "Lima"
## 
## 
## [[191]]
## [[191]]$city
## [1] "Cota"
## 
## 
## [[192]]
## [[192]]$city
## [1] "Bogotá"
## 
## 
## [[193]]
## [[193]]$city
## [1] "Bogotá"
## 
## 
## [[194]]
## [[194]]$city
## [1] "Bogotá"
## 
## 
## [[195]]
## [[195]]$city
## [1] "Bogotá"
## 
## 
## [[196]]
## [[196]]$city
## [1] "Bogotá"
## 
## 
## [[197]]
## [[197]]$city
## [1] "Bogotá"
## 
## 
## [[198]]
## [[198]]$city
## [1] "Bogotá"
## 
## 
## [[199]]
## [[199]]$city
## [1] "Caldas"
## 
## 
## [[200]]
## [[200]]$city
## [1] "Bogotá"
```

```r
l <- list.filter(members, city != "Bogotá")
list.mapv(l,paste(name,city,sep = ": "))
```

```
##  [1] "Abelardo Duarte Rey: San Francisco"        
##  [2] "Ale Echavez: Cota"                         
##  [3] "Alejandra: Brisbane"                       
##  [4] "Alejandro Coca Castro: London"             
##  [5] "Alejandro García Estrella: Medellín"       
##  [6] "Alejandro Suarez: Cartagena"               
##  [7] "Alexito Barreno: Quito"                    
##  [8] "Andres Felipe Florez Rivera: San Francisco"
##  [9] "Andrés Fernández: Buenos Aires"            
## [10] "Andrés Luque: Facatativá"                  
## [11] "Avefenix269: Quito"                        
## [12] "Camilo Herrera: Cali"                      
## [13] "Camilo Herrera R: Cali"                    
## [14] "CARLOS: Quito"                             
## [15] "Carlos Eduardo Suarez Gonzalez: Medellín"  
## [16] "Carlos J. Gil Bellosta: Madrid"            
## [17] "Carlos Montoya: Medellín"                  
## [18] "Carlos Restrepo: Dublin"                   
## [19] "Carlos Reyes Charls Kings RB: Funza"       
## [20] "Catalina Sikva: Cota"                      
## [21] "CESA1973: Quito"                           
## [22] "Cesar Rincon: Villavicencio"               
## [23] "Claudia Viviana Arévalo: Medellín"         
## [24] "daniela espitia: Chía"                     
## [25] "David Medina: Funza"                       
## [26] "David Mori: Lima"                          
## [27] "David Romero: Cota"                        
## [28] "Diana Marcela Pérez: Caldas"
```

```r
l <- list.filter(members, grepl("Diana",name))
list.mapv(l,name)
```

```
## [1] "Diana"               "Diana Marcela Pérez" "Diana Rojas"
```

```r
l <- list.filter(members, grepl("Pérez",name))
list.mapv(l,name)
```

```
## [1] "Daniela Pérez"       "Diana Marcela Pérez"
```

```r
l <- list.filter(members, grepl("Daniel",name))
list.mapv(l,name)
```

```
##  [1] "Daniel"               "Daniel"               "Daniel Cadosch"      
##  [4] "Daniel Fuentes"       "Daniel Galindo"       "Daniel Garavito"     
##  [7] "Daniel Gil Sánchez"   "Daniel Leonardo Cruz" "Daniel Moreno"       
## [10] "Daniel Osorio"        "Daniel Otero Robles"  "Daniel Pino"         
## [13] "Daniel R Cárdenas"    "Daniel Rocha Durán"   "Daniela Lopez"       
## [16] "Daniela Naranjo"      "Daniela Pérez"
```

```r
l <- list.map(members, list(name = name, dateLastVisited = as.POSIXct(visited/1000, origin="1970-01-01")))
list.sort(l,dateLastVisited)
```

```
## Error in vapply(col, "class", character(1L)): values must be length 1,
##  but FUN(X[[1]]) result is length 2
```

```r
list.filter(members, visited > "en_US") %>% list.mapv(name)
```

```
## NULL
```

```r
list.search(members, . == "@jpmarindiaz")
```

```
## $other_services.twitter.identifier
## [1] "@jpmarindiaz"
## 
## $name
## [1] "@jpmarindiaz"
```

```r
list.search(members, .[grepl("Big",.)])
```

```
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data Analytics"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data Analytics"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data Analytics"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data Analytics"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data Analytics"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
## 
## $topics.name
## [1] "Big Data"
```

 ## Manipular data frames con dplyr


```r
library(dplyr)

m <- fromJSON("data/meetup-members.json")


str(m)
```

```
## List of 2
##  $ results:'data.frame':	200 obs. of  18 variables:
##   ..$ country       : chr [1:200] "co" "co" "us" "co" ...
##   ..$ city          : chr [1:200] "Bogotá" "Bogotá" "San Francisco" "Bogotá" ...
##   ..$ topics        :List of 200
##   .. ..$ :'data.frame':	4 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:4] "web-development" "javascript" "software-architecture" "critical-thinking"
##   .. .. ..$ name  : chr [1:4] "Web Development" "JavaScript" "Software Architecture" "Critical Thinking"
##   .. .. ..$ id    : int [1:4] 15582 7029 56473 15544
##   .. ..$ :'data.frame':	27 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:27] "art" "education" "newtech" "craftswap" ...
##   .. .. ..$ name  : chr [1:27] "Art" "Education" "New Technology" "Crafts" ...
##   .. .. ..$ id    : int [1:27] 1502 8476 9696 10099 10454 10581 15227 15321 15635 15720 ...
##   .. ..$ :'data.frame':	29 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:29] "future" "newtech" "web" "opensource" ...
##   .. .. ..$ name  : chr [1:29] "Futurology" "New Technology" "Web Technology" "Open Source" ...
##   .. .. ..$ id    : int [1:29] 429 9696 10209 563 3833 10553 19882 48471 38724 1064 ...
##   .. ..$ :'data.frame':	33 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:33] "latinmusic" "musicians" "opensource" "hiking" ...
##   .. .. ..$ name  : chr [1:33] "Latin Music" "Musicians" "Open Source" "Hiking" ...
##   .. .. ..$ id    : int [1:33] 130 173 563 638 1122 1502 3833 8652 15018 15083 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	47 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:47] "science" "environment" "musicians" "esl" ...
##   .. .. ..$ name  : chr [1:47] "Science" "Environment" "Musicians" "English as a Second Language" ...
##   .. .. ..$ id    : int [1:47] 85 89 173 182 206 223 242 1201 1502 2349 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "latinmusic" "musicians" "esl" "digcam" ...
##   .. .. ..$ name  : chr [1:50] "Latin Music" "Musicians" "English as a Second Language" "Digital Photography" ...
##   .. .. ..$ id    : int [1:50] 130 173 182 206 223 242 407 579 611 1122 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "art" "education" "social" "community" ...
##   .. .. ..$ name  : chr [1:5] "Art" "Education" "Social" "Community" ...
##   .. .. ..$ id    : int [1:5] 1502 8476 10581 15227 15236
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "esl" "innovation" "softwaredev" "newtech" ...
##   .. .. ..$ name  : chr [1:10] "English as a Second Language" "Innovation" "Software Development" "New Technology" ...
##   .. .. ..$ id    : int [1:10] 182 1954 3833 9696 10538 16223 17232 23199 28980 30928
##   .. ..$ :'data.frame':	8 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:8] "gameprog" "softwaredev" "edtech" "newtech" ...
##   .. .. ..$ name  : chr [1:8] "Game Programming" "Software Development" "Education & Technology" "New Technology" ...
##   .. .. ..$ id    : int [1:8] 3287 3833 7203 9696 15018 19225 21429 48471
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "latinmusic" "musicians" "esl" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "Latin Music" "Musicians" "English as a Second Language" ...
##   .. .. ..$ id    : int [1:50] 89 130 173 182 185 206 211 223 242 387 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "statistical-computing" "big-data" "data-analytics" "computer-programming" ...
##   .. .. ..$ name  : chr [1:50] "Statistical Computing" "Big Data" "Data Analytics" "Computer programming" ...
##   .. .. ..$ id    : int [1:50] 15280 18062 30928 48471 98380 115768 115913 17558 15360 19146 ...
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "prodev" "small-business-marketing-strategy" "innovation" "online-marketing" ...
##   .. .. ..$ name  : chr [1:14] "Professional Development" "Small Business Marketing Strategy" "Innovation" "Online Marketing" ...
##   .. .. ..$ id    : int [1:14] 3880 17325 1954 15585 21681 15116 15099 1998 563 9696 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "esl" "french" "digcam" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "English as a Second Language" "French Language" "Digital Photography" ...
##   .. .. ..$ id    : int [1:50] 89 182 185 206 223 242 408 485 611 638 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "science" "environment" "latinmusic" "musicians" ...
##   .. .. ..$ name  : chr [1:50] "Science" "Environment" "Latin Music" "Musicians" ...
##   .. .. ..$ id    : int [1:50] 85 89 130 173 182 185 206 211 223 242 ...
##   .. ..$ :'data.frame':	33 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:33] "opensource" "softwaredev" "javascript" "newtech" ...
##   .. .. ..$ name  : chr [1:33] "Open Source" "Software Development" "JavaScript" "New Technology" ...
##   .. .. ..$ id    : int [1:33] 563 3833 7029 9696 9886 15582 21441 48471 85951 18062 ...
##   .. ..$ :'data.frame':	8 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:8] "art" "real-estate" "finance" "bilingual-spanish-english" ...
##   .. .. ..$ name  : chr [1:8] "Art" "Real Estate" "Finance" "Bilingual Spanish/English" ...
##   .. .. ..$ id    : int [1:8] 1502 18964 22467 22885 23274 23884 25698 17558
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "creative" "language-exchange" "latinmusic" "opensource" ...
##   .. .. ..$ name  : chr [1:14] "Creativity" "Language Exchange" "Latin Music" "Open Source" ...
##   .. .. ..$ id    : int [1:14] 36229 26212 130 563 48471 15401 30928 15167 10209 9696 ...
##   .. ..$ :'data.frame':	9 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:9] "big-data" "machine-learning" "data-science" "data-analytics" ...
##   .. .. ..$ name  : chr [1:9] "Big Data" "Machine Learning" "Data Science" "Data Analytics" ...
##   .. .. ..$ id    : int [1:9] 18062 29971 102811 30928 38458 55324 15280 115913 383411
##   .. ..$ :'data.frame':	9 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:9] "photo" "art" "newtech" "spirituality" ...
##   .. .. ..$ name  : chr [1:9] "Photography" "Art" "New Technology" "Spirituality" ...
##   .. .. ..$ id    : int [1:9] 223 1502 9696 10290 10306 10581 15046 15236 15992
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "edtech" "newtech" "web-development" "computer-programming" ...
##   .. .. ..$ name  : chr [1:10] "Education & Technology" "New Technology" "Web Development" "Computer programming" ...
##   .. .. ..$ id    : int [1:10] 7203 9696 15582 48471 206 15280 16613 18062 30928 98380
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	6 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:6] "innovation" "projectmgmt" "businessintell" "creative-writing" ...
##   .. .. ..$ name  : chr [1:6] "Innovation" "Project Management" "Business Intelligence" "Creative Writing" ...
##   .. .. ..$ id    : int [1:6] 1954 3438 10538 15322 18167 44584
##   .. ..$ :'data.frame':	31 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:31] "weightloss" "fitness" "robotics" "movies" ...
##   .. .. ..$ name  : chr [1:31] "Weight Loss" "Fitness" "Robotics" "Watching Movies" ...
##   .. .. ..$ id    : int [1:31] 240 242 682 1201 1589 1954 1998 3833 3880 7203 ...
##   .. ..$ :'data.frame':	12 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:12] "opensource" "cloud-computing" "statistical-computing" "big-data" ...
##   .. .. ..$ name  : chr [1:12] "Open Source" "Cloud Computing" "Statistical Computing" "Big Data" ...
##   .. .. ..$ id    : int [1:12] 563 15167 15280 18062 30928 98380 115768 115913 417 3833 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "webstandards" "opensource" "webdesign" "softwaredev" ...
##   .. .. ..$ name  : chr [1:50] "Web Standards" "Open Source" "Web Design" "Software Development" ...
##   .. .. ..$ id    : int [1:50] 417 563 659 3833 7029 9696 9886 15582 16216 21441 ...
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "opensource" "databasepro" "newtech" "web" ...
##   .. .. ..$ name  : chr [1:10] "Open Source" "Database Professionals" "New Technology" "Web Technology" ...
##   .. .. ..$ id    : int [1:10] 563 1245 9696 10209 15401 16216 23199 48471 78565 124668
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	4 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:4] "statistical-computing" "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:4] "Statistical Computing" "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:4] 15280 98380 115768 115913
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "latinmusic" "esl" "photo" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "Latin Music" "English as a Second Language" "Photography" ...
##   .. .. ..$ id    : int [1:50] 89 130 182 223 234 242 563 611 933 1122 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "test-driven-development" "learning" "intellectual-discussion" "computer-programming" ...
##   .. .. ..$ name  : chr [1:50] "Test Driven Development" "Learning" "Intellectual Discussion" "Computer programming" ...
##   .. .. ..$ id    : int [1:50] 25435 18296 15083 48471 8476 118991 7203 37339 49687 122939 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "edtech" "education" "big-data" "learning" ...
##   .. .. ..$ name  : chr [1:5] "Education & Technology" "Education" "Big Data" "Learning" ...
##   .. .. ..$ id    : int [1:5] 7203 8476 18062 18296 65780
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "science" "innovation" "edtech" "eurofootball" ...
##   .. .. ..$ name  : chr [1:23] "Science" "Innovation" "Education & Technology" "European Football" ...
##   .. .. ..$ id    : int [1:23] 85 1954 7203 7277 9696 9753 9772 14990 15067 15099 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "hiking" "robotics" "culturalcreatives" "meditation" ...
##   .. .. ..$ name  : chr [1:50] "Hiking" "Robotics" "Cultural Creatives" "Meditation" ...
##   .. .. ..$ id    : int [1:50] 638 682 1138 1322 1954 1998 3287 3336 3438 3833 ...
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "newtech" "cloud-computing" "mobile-technology" "big-data" ...
##   .. .. ..$ name  : chr [1:10] "New Technology" "Cloud Computing" "Mobile Technology" "Big Data" ...
##   .. .. ..$ id    : int [1:10] 9696 15167 16216 18062 30928 36167 48471 98380 115768 115913
##   .. ..$ :'data.frame':	2 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:2] "livemusic" "outdoors"
##   .. .. ..$ name  : chr [1:2] "Live Music" "Outdoors"
##   .. .. ..$ id    : int [1:2] 8652 15046
##   .. ..$ :'data.frame':	2 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:2] "art" "business-networking"
##   .. .. ..$ name  : chr [1:2] "Art" "professional-networking"
##   .. .. ..$ id    : int [1:2] 1502 15236
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "softwaredev" "newtech" "mobile-development"
##   .. .. ..$ name  : chr [1:3] "Software Development" "New Technology" "Mobile Development"
##   .. .. ..$ id    : int [1:3] 3833 9696 21441
##   .. ..$ :'data.frame':	49 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:49] "latinmusic" "classical" "esl" "vegan" ...
##   .. .. ..$ name  : chr [1:49] "Latin Music" "Classical Music" "English as a Second Language" "Vegan" ...
##   .. .. ..$ id    : int [1:49] 130 133 182 408 1122 1201 1322 1502 1954 1998 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "opensource" "softwaredev" "data-analytics" "computer-programming" ...
##   .. .. ..$ name  : chr [1:5] "Open Source" "Software Development" "Data Analytics" "Computer programming" ...
##   .. .. ..$ id    : int [1:5] 563 3833 30928 48471 115768
##   .. ..$ :'data.frame':	33 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:33] "esl" "english-language" "bogota" "travel" ...
##   .. .. ..$ name  : chr [1:33] "English as a Second Language" "English Language" "Bogota" "Travel" ...
##   .. .. ..$ id    : int [1:33] 182 25698 152753 1998 10454 17571 235 713 1201 1273 ...
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:3] "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:3] 98380 115768 115913
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	17 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:17] "big-data" "data-analytics" "r-project-for-statistical-computing" "programming-in-r" ...
##   .. .. ..$ name  : chr [1:17] "Big Data" "Data Analytics" "R Project for Statistical Computing" "Programming in R" ...
##   .. .. ..$ id    : int [1:17] 18062 30928 98380 115768 115913 182 235 1998 8652 10454 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	15 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:15] "courses-and-workshops" "edtech" "communication-skills" "prodev" ...
##   .. .. ..$ name  : chr [1:15] "Courses and Workshops" "Education & Technology" "Communication Skills" "Professional Development" ...
##   .. .. ..$ id    : int [1:15] 20629 7203 20923 3880 26643 17635 63675 1481 1589 15029 ...
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:3] "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:3] 98380 115768 115913
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	28 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:28] "innovation" "softwaredev" "prodev" "newtech" ...
##   .. .. ..$ name  : chr [1:28] "Innovation" "Software Development" "Professional Development" "New Technology" ...
##   .. .. ..$ id    : int [1:28] 1954 3833 3880 9696 15401 15585 15992 16216 17232 17301 ...
##   .. ..$ :'data.frame':	2 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:2] "self-improvement" "softwaredev"
##   .. .. ..$ name  : chr [1:2] "Self-Improvement" "Software Development"
##   .. .. ..$ id    : int [1:2] 3336 3833
##   .. ..$ :'data.frame':	18 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:18] "self-empowerment" "wellness" "healthy-living" "technical-analysis" ...
##   .. .. ..$ name  : chr [1:18] "Self-Empowerment" "Wellness" "Healthy Living" "Technical Analysis" ...
##   .. .. ..$ id    : int [1:18] 38757 10306 20221 17232 3880 26643 17635 1954 10538 21681 ...
##   .. ..$ :'data.frame':	31 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:31] "esl" "bilingual-spanish-english" "japanese-culture" "international-friends" ...
##   .. .. ..$ name  : chr [1:31] "English as a Second Language" "Bilingual Spanish/English" "Japanese Culture" "International Friends" ...
##   .. .. ..$ id    : int [1:31] 182 22885 30366 50881 563 1998 3336 7203 7277 9696 ...
##   .. ..$ :'data.frame':	34 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:34] "scifi" "webdesign" "graphicdesign" "databasepro" ...
##   .. .. ..$ name  : chr [1:34] "Sci-Fi/Fantasy" "Web Design" "Graphic Design" "Database Professionals" ...
##   .. .. ..$ id    : int [1:34] 317 659 781 1245 2767 3287 15113 15321 15322 15360 ...
##   .. ..$ :'data.frame':	6 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:6] "big-data" "technology-startups" "web" "newtech" ...
##   .. .. ..$ name  : chr [1:6] "Big Data" "Technology Startups" "Web Technology" "New Technology" ...
##   .. .. ..$ id    : int [1:6] 18062 108403 10209 9696 48471 127567
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "softwaredev" "edtech" "newtech" "web-development" ...
##   .. .. ..$ name  : chr [1:14] "Software Development" "Education & Technology" "New Technology" "Web Development" ...
##   .. .. ..$ id    : int [1:14] 3833 7203 9696 15582 127567 563 7029 15167 16216 78565 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "environment" "latinmusic" "musicians" "esl" ...
##   .. .. ..$ name  : chr [1:50] "Environment" "Latin Music" "Musicians" "English as a Second Language" ...
##   .. .. ..$ id    : int [1:50] 89 130 173 182 185 206 211 223 242 407 ...
##   .. ..$ :'data.frame':	20 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:20] "coffee-lovers" "eating-drinking-talking-laughing-etc" "food-and-drink" "animation" ...
##   .. .. ..$ name  : chr [1:20] "Coffee Lovers" "Eating, Drinking, Talking, Laughing, Etc" "Food and Drink" "Animation" ...
##   .. .. ..$ id    : int [1:20] 16951 19130 87548 1589 206 1201 32623 15992 4471 15018 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "latinmusic" "opensource" "robotics" "innovation" ...
##   .. .. ..$ name  : chr [1:23] "Latin Music" "Open Source" "Robotics" "Innovation" ...
##   .. .. ..$ id    : int [1:23] 130 563 682 1954 3833 3880 6640 7277 8652 9696 ...
##   .. ..$ :'data.frame':	15 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:15] "opensource" "softwaredev" "newtech" "cloud-computing" ...
##   .. .. ..$ name  : chr [1:15] "Open Source" "Software Development" "New Technology" "Cloud Computing" ...
##   .. .. ..$ id    : int [1:15] 563 3833 9696 15167 16216 21441 48471 18062 58162 24767 ...
##   .. ..$ :'data.frame':	1 obs. of  3 variables:
##   .. .. ..$ urlkey: chr "applied-statistics"
##   .. .. ..$ name  : chr "Applied Statistics"
##   .. .. ..$ id    : int 115913
##   .. ..$ :'data.frame':	35 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:35] "esl" "opensource" "walkers" "paintball" ...
##   .. .. ..$ name  : chr [1:35] "English as a Second Language" "Open Source" "Walking" "Paintball" ...
##   .. .. ..$ id    : int [1:35] 182 563 933 1073 1122 1954 3438 4471 9696 10209 ...
##   .. ..$ :'data.frame':	8 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:8] "neuroscience" "edtech" "big-data" "bilingual-spanish-english" ...
##   .. .. ..$ name  : chr [1:8] "Neuroscience" "Education & Technology" "Big Data" "Bilingual Spanish/English" ...
##   .. .. ..$ id    : int [1:8] 6960 7203 18062 22885 29526 36229 50881 21808
##   .. ..$ :'data.frame':	16 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:16] "opensource" "softwaredev" "newtech" "ria" ...
##   .. .. ..$ name  : chr [1:16] "Open Source" "Software Development" "New Technology" "Rich Internet Applications" ...
##   .. .. ..$ id    : int [1:16] 563 3833 9696 9886 15582 21441 7029 16216 48471 36167 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	30 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:30] "ai" "robotics" "electronics" "newtech" ...
##   .. .. ..$ name  : chr [1:30] "Artificial Intelligence" "Robotics" "Electronics" "New Technology" ...
##   .. .. ..$ id    : int [1:30] 456 682 7848 9696 9903 10438 17232 17635 18062 21123 ...
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "softwaredev" "social-media" "seo-search-engine-optimization" "data-analytics" ...
##   .. .. ..$ name  : chr [1:5] "Software Development" "Social Media" "SEO (Search Engine Optimization)" "Data Analytics" ...
##   .. .. ..$ id    : int [1:5] 3833 15401 23199 30928 48471
##   .. ..$ :'data.frame':	5 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:5] "christiansocial" "cloud-computing" "social-media" "data-analytics" ...
##   .. .. ..$ name  : chr [1:5] "Christian Social" "Cloud Computing" "Social Media" "Data Analytics" ...
##   .. .. ..$ id    : int [1:5] 10187 15167 15401 30928 18062
##   .. ..$ :'data.frame':	46 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:46] "science" "french" "opensource" "wine" ...
##   .. .. ..$ name  : chr [1:46] "Science" "French Language" "Open Source" "Wine" ...
##   .. .. ..$ id    : int [1:46] 85 185 563 611 1122 1954 2767 3880 4471 6640 ...
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "art" "prodev" "newtech" "games" ...
##   .. .. ..$ name  : chr [1:10] "Art" "Professional Development" "New Technology" "Games" ...
##   .. .. ..$ id    : int [1:10] 1502 3880 9696 15992 16216 16425 16899 17232 17635 21681
##   .. ..$ :'data.frame':	20 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:20] "digcam" "photo" "opensource" "videogame" ...
##   .. .. ..$ name  : chr [1:20] "Digital Photography" "Photography" "Open Source" "Video Games" ...
##   .. .. ..$ id    : int [1:20] 206 223 563 4471 9696 10209 10538 15029 15585 16216 ...
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "webstandards" "webdesign" "softwaredev" "newtech" ...
##   .. .. ..$ name  : chr [1:23] "Web Standards" "Web Design" "Software Development" "New Technology" ...
##   .. .. ..$ id    : int [1:23] 417 659 3833 9696 9886 15582 16216 21441 36167 48471 ...
##   .. ..$ :'data.frame':	11 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:11] "offleash" "japanese-cinema" "film" "cycling" ...
##   .. .. ..$ name  : chr [1:11] "Off-Leash Dog Recreation" "Japanese Films" "Film" "Cycling" ...
##   .. .. ..$ id    : int [1:11] 9753 14980 15029 18617 22885 25375 28980 37663 49954 50881 ...
##   .. ..$ :'data.frame':	13 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:13] "esl" "opensource" "neuroscience" "edtech" ...
##   .. .. ..$ name  : chr [1:13] "English as a Second Language" "Open Source" "Neuroscience" "Education & Technology" ...
##   .. .. ..$ id    : int [1:13] 182 563 6960 7203 9696 10454 10538 16433 26643 28980 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	37 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:37] "photo" "newtech" "social" "photography-classes" ...
##   .. .. ..$ name  : chr [1:37] "Photography" "New Technology" "Social" "Photography Classes" ...
##   .. .. ..$ id    : int [1:37] 223 9696 10581 15043 15167 15731 16216 18062 18216 206 ...
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "music" "statistical-computing" "programming-in-r"
##   .. .. ..$ name  : chr [1:3] "Music" "Statistical Computing" "Programming in R"
##   .. .. ..$ id    : int [1:3] 15018 15280 115768
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	3 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:3] "application-development" "programming-in-r" "applied-statistics"
##   .. .. ..$ name  : chr [1:3] "Application Development" "Programming in R" "Applied Statistics"
##   .. .. ..$ id    : int [1:3] 36167 115768 115913
##   .. ..$ :'data.frame':	6 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:6] "digcam" "money" "singers" "business-strategy" ...
##   .. .. ..$ name  : chr [1:6] "Digital Photography" "Money" "Singing" "Business Strategy" ...
##   .. .. ..$ id    : int [1:6] 206 15580 17301 17635 17993 98380
##   .. ..$ :'data.frame':	10 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:10] "business-development" "business-strategy" "innovation" "walkers" ...
##   .. .. ..$ name  : chr [1:10] "Business Development" "Business Strategy" "Innovation" "Walking" ...
##   .. .. ..$ id    : int [1:10] 18012 17635 1954 933 18617 22885 182 18062 9696 108403
##   .. ..$ :'data.frame':	23 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:23] "softwaredev" "technology" "cloud-computing" "mobile-development" ...
##   .. .. ..$ name  : chr [1:23] "Software Development" "Technology" "Cloud Computing" "Mobile Development" ...
##   .. .. ..$ id    : int [1:23] 3833 10579 15167 21441 48471 78565 659 9696 15582 16216 ...
##   .. ..$ :'data.frame':	14 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:14] "salsa" "meditation" "self-improvement" "lawofattraction" ...
##   .. .. ..$ name  : chr [1:14] "Salsa" "Meditation" "Self-Improvement" "Law of Attraction" ...
##   .. .. ..$ id    : int [1:14] 1122 1322 3336 3382 10290 15067 16212 18340 18874 19130 ...
##   .. ..$ :'data.frame':	30 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:30] "esl" "opensource" "innovation" "gameprog" ...
##   .. .. ..$ name  : chr [1:30] "English as a Second Language" "Open Source" "Innovation" "Game Programming" ...
##   .. .. ..$ id    : int [1:30] 182 563 1954 3287 3833 8652 9696 9753 9772 10538 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "english-language" "ruby" "javascript" "web" ...
##   .. .. ..$ name  : chr [1:50] "English Language" "Ruby" "JavaScript" "Web Technology" ...
##   .. .. ..$ id    : int [1:50] 25698 1040 7029 10209 15401 15582 21123 44584 78565 85951 ...
##   .. ..$ :'data.frame':	50 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:50] "science" "environment" "latinmusic" "musicians" ...
##   .. .. ..$ name  : chr [1:50] "Science" "Environment" "Latin Music" "Musicians" ...
##   .. .. ..$ id    : int [1:50] 85 89 130 173 182 211 242 485 563 579 ...
##   .. ..$ :'data.frame':	11 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:11] "opensource" "webdesign" "python" "softwaredev" ...
##   .. .. ..$ name  : chr [1:11] "Open Source" "Web Design" "Python" "Software Development" ...
##   .. .. ..$ id    : int [1:11] 563 659 1064 3833 9696 9886 15167 15582 48471 85951 ...
##   .. ..$ :'data.frame':	9 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:9] "art" "education" "newtech" "sports" ...
##   .. .. ..$ name  : chr [1:9] "Art" "Education" "New Technology" "Sports and Recreation" ...
##   .. .. ..$ id    : int [1:9] 1502 8476 9696 10451 15018 15046 15236 15321 15992
##   .. ..$ :'data.frame':	0 obs. of  0 variables
##   .. ..$ :'data.frame':	1 obs. of  3 variables:
##   .. .. ..$ urlkey: chr "music"
##   .. .. ..$ name  : chr "Music"
##   .. .. ..$ id    : int 15018
##   .. ..$ :'data.frame':	17 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:17] "javascript" "web-development" "html5" "courses-and-workshops" ...
##   .. .. ..$ name  : chr [1:17] "JavaScript" "Web Development" "HTML5" "Courses and Workshops" ...
##   .. .. ..$ id    : int [1:17] 7029 15582 78565 20629 189 3833 16137 16216 21441 48471 ...
##   .. ..$ :'data.frame':	15 obs. of  3 variables:
##   .. .. ..$ urlkey: chr [1:15] "opensource" "computer-programming" "digcam" "photo" ...
##   .. .. ..$ name  : chr [1:15] "Open Source" "Computer programming" "Digital Photography" "Photography" ...
##   .. .. ..$ id    : int [1:15] 563 48471 206 223 456 10438 18062 29971 30928 37381 ...
##   .. .. [list output truncated]
##   ..$ joined        : num [1:200] 1.44e+12 1.46e+12 1.45e+12 1.44e+12 1.44e+12 ...
##   ..$ link          : chr [1:200] "http://www.meetup.com/members/42308302" "http://www.meetup.com/members/136595122" "http://www.meetup.com/members/19946191" "http://www.meetup.com/members/189889100" ...
##   ..$ photo         :'data.frame':	200 obs. of  4 variables:
##   .. ..$ highres_link: chr [1:200] "http://photos4.meetupstatic.com/photos/member/8/b/7/6/highres_46895702.jpeg" "http://photos4.meetupstatic.com/photos/member/8/c/c/0/highres_192456032.jpeg" NA "http://photos2.meetupstatic.com/photos/member/2/e/1/f/highres_247871807.jpeg" ...
##   .. ..$ photo_id    : int [1:200] 46895702 192456032 18409881 247871807 247284068 242378406 247055192 254453319 NA NA ...
##   .. ..$ photo_link  : chr [1:200] "http://photos4.meetupstatic.com/photos/member/8/b/7/6/member_46895702.jpeg" "http://photos2.meetupstatic.com/photos/member/8/c/c/0/member_192456032.jpeg" "http://photos3.meetupstatic.com/photos/member/c/2/d/9/member_18409881.jpeg" "http://photos2.meetupstatic.com/photos/member/2/e/1/f/member_247871807.jpeg" ...
##   .. ..$ thumb_link  : chr [1:200] "http://photos2.meetupstatic.com/photos/member/8/b/7/6/thumb_46895702.jpeg" "http://photos2.meetupstatic.com/photos/member/8/c/c/0/thumb_192456032.jpeg" "http://photos3.meetupstatic.com/photos/member/c/2/d/9/thumb_18409881.jpeg" "http://photos4.meetupstatic.com/photos/member/2/e/1/f/thumb_247871807.jpeg" ...
##   ..$ lon           : num [1:200] -74.1 -74.1 -122.4 -74.1 -74.1 ...
##   ..$ other_services:'data.frame':	200 obs. of  4 variables:
##   .. ..$ twitter :'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] "@jpmarindiaz" NA NA NA ...
##   .. ..$ tumblr  :'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] NA NA NA NA ...
##   .. ..$ flickr  :'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] NA NA NA NA ...
##   .. ..$ facebook:'data.frame':	200 obs. of  1 variable:
##   .. .. ..$ identifier: chr [1:200] NA NA NA NA ...
##   ..$ name          : chr [1:200] "@jpmarindiaz" "1ng3" "Abelardo Duarte Rey" "Adrian Zuur" ...
##   ..$ visited       : num [1:200] 1.47e+12 1.46e+12 1.45e+12 1.44e+12 1.46e+12 ...
##   ..$ self          :'data.frame':	200 obs. of  1 variable:
##   .. ..$ common:'data.frame':	200 obs. of  0 variables
##   ..$ id            : int [1:200] 42308302 136595122 19946191 189889100 188997341 183105297 188617906 200884932 189087328 187270799 ...
##   ..$ lang          : chr [1:200] "en_US" NA NA NA ...
##   ..$ lat           : num [1:200] 4.63 4.63 37.77 4.63 4.63 ...
##   ..$ status        : chr [1:200] "active" "active" "active" "active" ...
##   ..$ hometown      : chr [1:200] NA NA "Bogotá" NA ...
##   ..$ state         : chr [1:200] NA NA "CA" NA ...
##   ..$ bio           : chr [1:200] NA NA NA NA ...
##  $ meta   :List of 12
##   ..$ next       : chr "https://api.meetup.com/2/members?offset=1&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ method     : chr "Members"
##   ..$ total_count: int 676
##   ..$ link       : chr "https://api.meetup.com/2/members"
##   ..$ count      : int 200
##   ..$ description: chr "API method for accessing members of Meetup Groups"
##   ..$ lon        : chr ""
##   ..$ title      : chr "Meetup Members v2"
##   ..$ url        : chr "https://api.meetup.com/2/members?offset=0&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ id         : chr ""
##   ..$ updated    : num 1.47e+12
##   ..$ lat        : chr ""
```

```r
str(m, max.level = 1)
```

```
## List of 2
##  $ results:'data.frame':	200 obs. of  18 variables:
##  $ meta   :List of 12
```

```r
str(m, max.level = 2)
```

```
## List of 2
##  $ results:'data.frame':	200 obs. of  18 variables:
##   ..$ country       : chr [1:200] "co" "co" "us" "co" ...
##   ..$ city          : chr [1:200] "Bogotá" "Bogotá" "San Francisco" "Bogotá" ...
##   ..$ topics        :List of 200
##   .. .. [list output truncated]
##   ..$ joined        : num [1:200] 1.44e+12 1.46e+12 1.45e+12 1.44e+12 1.44e+12 ...
##   ..$ link          : chr [1:200] "http://www.meetup.com/members/42308302" "http://www.meetup.com/members/136595122" "http://www.meetup.com/members/19946191" "http://www.meetup.com/members/189889100" ...
##   ..$ photo         :'data.frame':	200 obs. of  4 variables:
##   ..$ lon           : num [1:200] -74.1 -74.1 -122.4 -74.1 -74.1 ...
##   ..$ other_services:'data.frame':	200 obs. of  4 variables:
##   ..$ name          : chr [1:200] "@jpmarindiaz" "1ng3" "Abelardo Duarte Rey" "Adrian Zuur" ...
##   ..$ visited       : num [1:200] 1.47e+12 1.46e+12 1.45e+12 1.44e+12 1.46e+12 ...
##   ..$ self          :'data.frame':	200 obs. of  1 variable:
##   ..$ id            : int [1:200] 42308302 136595122 19946191 189889100 188997341 183105297 188617906 200884932 189087328 187270799 ...
##   ..$ lang          : chr [1:200] "en_US" NA NA NA ...
##   ..$ lat           : num [1:200] 4.63 4.63 37.77 4.63 4.63 ...
##   ..$ status        : chr [1:200] "active" "active" "active" "active" ...
##   ..$ hometown      : chr [1:200] NA NA "Bogotá" NA ...
##   ..$ state         : chr [1:200] NA NA "CA" NA ...
##   ..$ bio           : chr [1:200] NA NA NA NA ...
##  $ meta   :List of 12
##   ..$ next       : chr "https://api.meetup.com/2/members?offset=1&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ method     : chr "Members"
##   ..$ total_count: int 676
##   ..$ link       : chr "https://api.meetup.com/2/members"
##   ..$ count      : int 200
##   ..$ description: chr "API method for accessing members of Meetup Groups"
##   ..$ lon        : chr ""
##   ..$ title      : chr "Meetup Members v2"
##   ..$ url        : chr "https://api.meetup.com/2/members?offset=0&format=json&group_urlname=Bogota-R-Users-Group&page=200&key=5e4ce10350244e7467446a624"| __truncated__
##   ..$ id         : chr ""
##   ..$ updated    : num 1.47e+12
##   ..$ lat        : chr ""
```

```r
membersDf <- m$results
str(membersDf)
```

```
## 'data.frame':	200 obs. of  18 variables:
##  $ country       : chr  "co" "co" "us" "co" ...
##  $ city          : chr  "Bogotá" "Bogotá" "San Francisco" "Bogotá" ...
##  $ topics        :List of 200
##   ..$ :'data.frame':	4 obs. of  3 variables:
##   .. ..$ urlkey: chr  "web-development" "javascript" "software-architecture" "critical-thinking"
##   .. ..$ name  : chr  "Web Development" "JavaScript" "Software Architecture" "Critical Thinking"
##   .. ..$ id    : int  15582 7029 56473 15544
##   ..$ :'data.frame':	27 obs. of  3 variables:
##   .. ..$ urlkey: chr  "art" "education" "newtech" "craftswap" ...
##   .. ..$ name  : chr  "Art" "Education" "New Technology" "Crafts" ...
##   .. ..$ id    : int  1502 8476 9696 10099 10454 10581 15227 15321 15635 15720 ...
##   ..$ :'data.frame':	29 obs. of  3 variables:
##   .. ..$ urlkey: chr  "future" "newtech" "web" "opensource" ...
##   .. ..$ name  : chr  "Futurology" "New Technology" "Web Technology" "Open Source" ...
##   .. ..$ id    : int  429 9696 10209 563 3833 10553 19882 48471 38724 1064 ...
##   ..$ :'data.frame':	33 obs. of  3 variables:
##   .. ..$ urlkey: chr  "latinmusic" "musicians" "opensource" "hiking" ...
##   .. ..$ name  : chr  "Latin Music" "Musicians" "Open Source" "Hiking" ...
##   .. ..$ id    : int  130 173 563 638 1122 1502 3833 8652 15018 15083 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	47 obs. of  3 variables:
##   .. ..$ urlkey: chr  "science" "environment" "musicians" "esl" ...
##   .. ..$ name  : chr  "Science" "Environment" "Musicians" "English as a Second Language" ...
##   .. ..$ id    : int  85 89 173 182 206 223 242 1201 1502 2349 ...
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "latinmusic" "musicians" "esl" "digcam" ...
##   .. ..$ name  : chr  "Latin Music" "Musicians" "English as a Second Language" "Digital Photography" ...
##   .. ..$ id    : int  130 173 182 206 223 242 407 579 611 1122 ...
##   ..$ :'data.frame':	5 obs. of  3 variables:
##   .. ..$ urlkey: chr  "art" "education" "social" "community" ...
##   .. ..$ name  : chr  "Art" "Education" "Social" "Community" ...
##   .. ..$ id    : int  1502 8476 10581 15227 15236
##   ..$ :'data.frame':	10 obs. of  3 variables:
##   .. ..$ urlkey: chr  "esl" "innovation" "softwaredev" "newtech" ...
##   .. ..$ name  : chr  "English as a Second Language" "Innovation" "Software Development" "New Technology" ...
##   .. ..$ id    : int  182 1954 3833 9696 10538 16223 17232 23199 28980 30928
##   ..$ :'data.frame':	8 obs. of  3 variables:
##   .. ..$ urlkey: chr  "gameprog" "softwaredev" "edtech" "newtech" ...
##   .. ..$ name  : chr  "Game Programming" "Software Development" "Education & Technology" "New Technology" ...
##   .. ..$ id    : int  3287 3833 7203 9696 15018 19225 21429 48471
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "environment" "latinmusic" "musicians" "esl" ...
##   .. ..$ name  : chr  "Environment" "Latin Music" "Musicians" "English as a Second Language" ...
##   .. ..$ id    : int  89 130 173 182 185 206 211 223 242 387 ...
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "statistical-computing" "big-data" "data-analytics" "computer-programming" ...
##   .. ..$ name  : chr  "Statistical Computing" "Big Data" "Data Analytics" "Computer programming" ...
##   .. ..$ id    : int  15280 18062 30928 48471 98380 115768 115913 17558 15360 19146 ...
##   ..$ :'data.frame':	14 obs. of  3 variables:
##   .. ..$ urlkey: chr  "prodev" "small-business-marketing-strategy" "innovation" "online-marketing" ...
##   .. ..$ name  : chr  "Professional Development" "Small Business Marketing Strategy" "Innovation" "Online Marketing" ...
##   .. ..$ id    : int  3880 17325 1954 15585 21681 15116 15099 1998 563 9696 ...
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "environment" "esl" "french" "digcam" ...
##   .. ..$ name  : chr  "Environment" "English as a Second Language" "French Language" "Digital Photography" ...
##   .. ..$ id    : int  89 182 185 206 223 242 408 485 611 638 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "science" "environment" "latinmusic" "musicians" ...
##   .. ..$ name  : chr  "Science" "Environment" "Latin Music" "Musicians" ...
##   .. ..$ id    : int  85 89 130 173 182 185 206 211 223 242 ...
##   ..$ :'data.frame':	33 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "softwaredev" "javascript" "newtech" ...
##   .. ..$ name  : chr  "Open Source" "Software Development" "JavaScript" "New Technology" ...
##   .. ..$ id    : int  563 3833 7029 9696 9886 15582 21441 48471 85951 18062 ...
##   ..$ :'data.frame':	8 obs. of  3 variables:
##   .. ..$ urlkey: chr  "art" "real-estate" "finance" "bilingual-spanish-english" ...
##   .. ..$ name  : chr  "Art" "Real Estate" "Finance" "Bilingual Spanish/English" ...
##   .. ..$ id    : int  1502 18964 22467 22885 23274 23884 25698 17558
##   ..$ :'data.frame':	14 obs. of  3 variables:
##   .. ..$ urlkey: chr  "creative" "language-exchange" "latinmusic" "opensource" ...
##   .. ..$ name  : chr  "Creativity" "Language Exchange" "Latin Music" "Open Source" ...
##   .. ..$ id    : int  36229 26212 130 563 48471 15401 30928 15167 10209 9696 ...
##   ..$ :'data.frame':	9 obs. of  3 variables:
##   .. ..$ urlkey: chr  "big-data" "machine-learning" "data-science" "data-analytics" ...
##   .. ..$ name  : chr  "Big Data" "Machine Learning" "Data Science" "Data Analytics" ...
##   .. ..$ id    : int  18062 29971 102811 30928 38458 55324 15280 115913 383411
##   ..$ :'data.frame':	9 obs. of  3 variables:
##   .. ..$ urlkey: chr  "photo" "art" "newtech" "spirituality" ...
##   .. ..$ name  : chr  "Photography" "Art" "New Technology" "Spirituality" ...
##   .. ..$ id    : int  223 1502 9696 10290 10306 10581 15046 15236 15992
##   ..$ :'data.frame':	10 obs. of  3 variables:
##   .. ..$ urlkey: chr  "edtech" "newtech" "web-development" "computer-programming" ...
##   .. ..$ name  : chr  "Education & Technology" "New Technology" "Web Development" "Computer programming" ...
##   .. ..$ id    : int  7203 9696 15582 48471 206 15280 16613 18062 30928 98380
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	6 obs. of  3 variables:
##   .. ..$ urlkey: chr  "innovation" "projectmgmt" "businessintell" "creative-writing" ...
##   .. ..$ name  : chr  "Innovation" "Project Management" "Business Intelligence" "Creative Writing" ...
##   .. ..$ id    : int  1954 3438 10538 15322 18167 44584
##   ..$ :'data.frame':	31 obs. of  3 variables:
##   .. ..$ urlkey: chr  "weightloss" "fitness" "robotics" "movies" ...
##   .. ..$ name  : chr  "Weight Loss" "Fitness" "Robotics" "Watching Movies" ...
##   .. ..$ id    : int  240 242 682 1201 1589 1954 1998 3833 3880 7203 ...
##   ..$ :'data.frame':	12 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "cloud-computing" "statistical-computing" "big-data" ...
##   .. ..$ name  : chr  "Open Source" "Cloud Computing" "Statistical Computing" "Big Data" ...
##   .. ..$ id    : int  563 15167 15280 18062 30928 98380 115768 115913 417 3833 ...
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "webstandards" "opensource" "webdesign" "softwaredev" ...
##   .. ..$ name  : chr  "Web Standards" "Open Source" "Web Design" "Software Development" ...
##   .. ..$ id    : int  417 563 659 3833 7029 9696 9886 15582 16216 21441 ...
##   ..$ :'data.frame':	10 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "databasepro" "newtech" "web" ...
##   .. ..$ name  : chr  "Open Source" "Database Professionals" "New Technology" "Web Technology" ...
##   .. ..$ id    : int  563 1245 9696 10209 15401 16216 23199 48471 78565 124668
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	4 obs. of  3 variables:
##   .. ..$ urlkey: chr  "statistical-computing" "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. ..$ name  : chr  "Statistical Computing" "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. ..$ id    : int  15280 98380 115768 115913
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "environment" "latinmusic" "esl" "photo" ...
##   .. ..$ name  : chr  "Environment" "Latin Music" "English as a Second Language" "Photography" ...
##   .. ..$ id    : int  89 130 182 223 234 242 563 611 933 1122 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "test-driven-development" "learning" "intellectual-discussion" "computer-programming" ...
##   .. ..$ name  : chr  "Test Driven Development" "Learning" "Intellectual Discussion" "Computer programming" ...
##   .. ..$ id    : int  25435 18296 15083 48471 8476 118991 7203 37339 49687 122939 ...
##   ..$ :'data.frame':	5 obs. of  3 variables:
##   .. ..$ urlkey: chr  "edtech" "education" "big-data" "learning" ...
##   .. ..$ name  : chr  "Education & Technology" "Education" "Big Data" "Learning" ...
##   .. ..$ id    : int  7203 8476 18062 18296 65780
##   ..$ :'data.frame':	23 obs. of  3 variables:
##   .. ..$ urlkey: chr  "science" "innovation" "edtech" "eurofootball" ...
##   .. ..$ name  : chr  "Science" "Innovation" "Education & Technology" "European Football" ...
##   .. ..$ id    : int  85 1954 7203 7277 9696 9753 9772 14990 15067 15099 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "hiking" "robotics" "culturalcreatives" "meditation" ...
##   .. ..$ name  : chr  "Hiking" "Robotics" "Cultural Creatives" "Meditation" ...
##   .. ..$ id    : int  638 682 1138 1322 1954 1998 3287 3336 3438 3833 ...
##   ..$ :'data.frame':	10 obs. of  3 variables:
##   .. ..$ urlkey: chr  "newtech" "cloud-computing" "mobile-technology" "big-data" ...
##   .. ..$ name  : chr  "New Technology" "Cloud Computing" "Mobile Technology" "Big Data" ...
##   .. ..$ id    : int  9696 15167 16216 18062 30928 36167 48471 98380 115768 115913
##   ..$ :'data.frame':	2 obs. of  3 variables:
##   .. ..$ urlkey: chr  "livemusic" "outdoors"
##   .. ..$ name  : chr  "Live Music" "Outdoors"
##   .. ..$ id    : int  8652 15046
##   ..$ :'data.frame':	2 obs. of  3 variables:
##   .. ..$ urlkey: chr  "art" "business-networking"
##   .. ..$ name  : chr  "Art" "professional-networking"
##   .. ..$ id    : int  1502 15236
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	3 obs. of  3 variables:
##   .. ..$ urlkey: chr  "softwaredev" "newtech" "mobile-development"
##   .. ..$ name  : chr  "Software Development" "New Technology" "Mobile Development"
##   .. ..$ id    : int  3833 9696 21441
##   ..$ :'data.frame':	49 obs. of  3 variables:
##   .. ..$ urlkey: chr  "latinmusic" "classical" "esl" "vegan" ...
##   .. ..$ name  : chr  "Latin Music" "Classical Music" "English as a Second Language" "Vegan" ...
##   .. ..$ id    : int  130 133 182 408 1122 1201 1322 1502 1954 1998 ...
##   ..$ :'data.frame':	5 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "softwaredev" "data-analytics" "computer-programming" ...
##   .. ..$ name  : chr  "Open Source" "Software Development" "Data Analytics" "Computer programming" ...
##   .. ..$ id    : int  563 3833 30928 48471 115768
##   ..$ :'data.frame':	33 obs. of  3 variables:
##   .. ..$ urlkey: chr  "esl" "english-language" "bogota" "travel" ...
##   .. ..$ name  : chr  "English as a Second Language" "English Language" "Bogota" "Travel" ...
##   .. ..$ id    : int  182 25698 152753 1998 10454 17571 235 713 1201 1273 ...
##   ..$ :'data.frame':	3 obs. of  3 variables:
##   .. ..$ urlkey: chr  "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. ..$ name  : chr  "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. ..$ id    : int  98380 115768 115913
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	17 obs. of  3 variables:
##   .. ..$ urlkey: chr  "big-data" "data-analytics" "r-project-for-statistical-computing" "programming-in-r" ...
##   .. ..$ name  : chr  "Big Data" "Data Analytics" "R Project for Statistical Computing" "Programming in R" ...
##   .. ..$ id    : int  18062 30928 98380 115768 115913 182 235 1998 8652 10454 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	15 obs. of  3 variables:
##   .. ..$ urlkey: chr  "courses-and-workshops" "edtech" "communication-skills" "prodev" ...
##   .. ..$ name  : chr  "Courses and Workshops" "Education & Technology" "Communication Skills" "Professional Development" ...
##   .. ..$ id    : int  20629 7203 20923 3880 26643 17635 63675 1481 1589 15029 ...
##   ..$ :'data.frame':	3 obs. of  3 variables:
##   .. ..$ urlkey: chr  "r-project-for-statistical-computing" "programming-in-r" "applied-statistics"
##   .. ..$ name  : chr  "R Project for Statistical Computing" "Programming in R" "Applied Statistics"
##   .. ..$ id    : int  98380 115768 115913
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	28 obs. of  3 variables:
##   .. ..$ urlkey: chr  "innovation" "softwaredev" "prodev" "newtech" ...
##   .. ..$ name  : chr  "Innovation" "Software Development" "Professional Development" "New Technology" ...
##   .. ..$ id    : int  1954 3833 3880 9696 15401 15585 15992 16216 17232 17301 ...
##   ..$ :'data.frame':	2 obs. of  3 variables:
##   .. ..$ urlkey: chr  "self-improvement" "softwaredev"
##   .. ..$ name  : chr  "Self-Improvement" "Software Development"
##   .. ..$ id    : int  3336 3833
##   ..$ :'data.frame':	18 obs. of  3 variables:
##   .. ..$ urlkey: chr  "self-empowerment" "wellness" "healthy-living" "technical-analysis" ...
##   .. ..$ name  : chr  "Self-Empowerment" "Wellness" "Healthy Living" "Technical Analysis" ...
##   .. ..$ id    : int  38757 10306 20221 17232 3880 26643 17635 1954 10538 21681 ...
##   ..$ :'data.frame':	31 obs. of  3 variables:
##   .. ..$ urlkey: chr  "esl" "bilingual-spanish-english" "japanese-culture" "international-friends" ...
##   .. ..$ name  : chr  "English as a Second Language" "Bilingual Spanish/English" "Japanese Culture" "International Friends" ...
##   .. ..$ id    : int  182 22885 30366 50881 563 1998 3336 7203 7277 9696 ...
##   ..$ :'data.frame':	34 obs. of  3 variables:
##   .. ..$ urlkey: chr  "scifi" "webdesign" "graphicdesign" "databasepro" ...
##   .. ..$ name  : chr  "Sci-Fi/Fantasy" "Web Design" "Graphic Design" "Database Professionals" ...
##   .. ..$ id    : int  317 659 781 1245 2767 3287 15113 15321 15322 15360 ...
##   ..$ :'data.frame':	6 obs. of  3 variables:
##   .. ..$ urlkey: chr  "big-data" "technology-startups" "web" "newtech" ...
##   .. ..$ name  : chr  "Big Data" "Technology Startups" "Web Technology" "New Technology" ...
##   .. ..$ id    : int  18062 108403 10209 9696 48471 127567
##   ..$ :'data.frame':	14 obs. of  3 variables:
##   .. ..$ urlkey: chr  "softwaredev" "edtech" "newtech" "web-development" ...
##   .. ..$ name  : chr  "Software Development" "Education & Technology" "New Technology" "Web Development" ...
##   .. ..$ id    : int  3833 7203 9696 15582 127567 563 7029 15167 16216 78565 ...
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "environment" "latinmusic" "musicians" "esl" ...
##   .. ..$ name  : chr  "Environment" "Latin Music" "Musicians" "English as a Second Language" ...
##   .. ..$ id    : int  89 130 173 182 185 206 211 223 242 407 ...
##   ..$ :'data.frame':	20 obs. of  3 variables:
##   .. ..$ urlkey: chr  "coffee-lovers" "eating-drinking-talking-laughing-etc" "food-and-drink" "animation" ...
##   .. ..$ name  : chr  "Coffee Lovers" "Eating, Drinking, Talking, Laughing, Etc" "Food and Drink" "Animation" ...
##   .. ..$ id    : int  16951 19130 87548 1589 206 1201 32623 15992 4471 15018 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	23 obs. of  3 variables:
##   .. ..$ urlkey: chr  "latinmusic" "opensource" "robotics" "innovation" ...
##   .. ..$ name  : chr  "Latin Music" "Open Source" "Robotics" "Innovation" ...
##   .. ..$ id    : int  130 563 682 1954 3833 3880 6640 7277 8652 9696 ...
##   ..$ :'data.frame':	15 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "softwaredev" "newtech" "cloud-computing" ...
##   .. ..$ name  : chr  "Open Source" "Software Development" "New Technology" "Cloud Computing" ...
##   .. ..$ id    : int  563 3833 9696 15167 16216 21441 48471 18062 58162 24767 ...
##   ..$ :'data.frame':	1 obs. of  3 variables:
##   .. ..$ urlkey: chr "applied-statistics"
##   .. ..$ name  : chr "Applied Statistics"
##   .. ..$ id    : int 115913
##   ..$ :'data.frame':	35 obs. of  3 variables:
##   .. ..$ urlkey: chr  "esl" "opensource" "walkers" "paintball" ...
##   .. ..$ name  : chr  "English as a Second Language" "Open Source" "Walking" "Paintball" ...
##   .. ..$ id    : int  182 563 933 1073 1122 1954 3438 4471 9696 10209 ...
##   ..$ :'data.frame':	8 obs. of  3 variables:
##   .. ..$ urlkey: chr  "neuroscience" "edtech" "big-data" "bilingual-spanish-english" ...
##   .. ..$ name  : chr  "Neuroscience" "Education & Technology" "Big Data" "Bilingual Spanish/English" ...
##   .. ..$ id    : int  6960 7203 18062 22885 29526 36229 50881 21808
##   ..$ :'data.frame':	16 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "softwaredev" "newtech" "ria" ...
##   .. ..$ name  : chr  "Open Source" "Software Development" "New Technology" "Rich Internet Applications" ...
##   .. ..$ id    : int  563 3833 9696 9886 15582 21441 7029 16216 48471 36167 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	30 obs. of  3 variables:
##   .. ..$ urlkey: chr  "ai" "robotics" "electronics" "newtech" ...
##   .. ..$ name  : chr  "Artificial Intelligence" "Robotics" "Electronics" "New Technology" ...
##   .. ..$ id    : int  456 682 7848 9696 9903 10438 17232 17635 18062 21123 ...
##   ..$ :'data.frame':	5 obs. of  3 variables:
##   .. ..$ urlkey: chr  "softwaredev" "social-media" "seo-search-engine-optimization" "data-analytics" ...
##   .. ..$ name  : chr  "Software Development" "Social Media" "SEO (Search Engine Optimization)" "Data Analytics" ...
##   .. ..$ id    : int  3833 15401 23199 30928 48471
##   ..$ :'data.frame':	5 obs. of  3 variables:
##   .. ..$ urlkey: chr  "christiansocial" "cloud-computing" "social-media" "data-analytics" ...
##   .. ..$ name  : chr  "Christian Social" "Cloud Computing" "Social Media" "Data Analytics" ...
##   .. ..$ id    : int  10187 15167 15401 30928 18062
##   ..$ :'data.frame':	46 obs. of  3 variables:
##   .. ..$ urlkey: chr  "science" "french" "opensource" "wine" ...
##   .. ..$ name  : chr  "Science" "French Language" "Open Source" "Wine" ...
##   .. ..$ id    : int  85 185 563 611 1122 1954 2767 3880 4471 6640 ...
##   ..$ :'data.frame':	10 obs. of  3 variables:
##   .. ..$ urlkey: chr  "art" "prodev" "newtech" "games" ...
##   .. ..$ name  : chr  "Art" "Professional Development" "New Technology" "Games" ...
##   .. ..$ id    : int  1502 3880 9696 15992 16216 16425 16899 17232 17635 21681
##   ..$ :'data.frame':	20 obs. of  3 variables:
##   .. ..$ urlkey: chr  "digcam" "photo" "opensource" "videogame" ...
##   .. ..$ name  : chr  "Digital Photography" "Photography" "Open Source" "Video Games" ...
##   .. ..$ id    : int  206 223 563 4471 9696 10209 10538 15029 15585 16216 ...
##   ..$ :'data.frame':	23 obs. of  3 variables:
##   .. ..$ urlkey: chr  "webstandards" "webdesign" "softwaredev" "newtech" ...
##   .. ..$ name  : chr  "Web Standards" "Web Design" "Software Development" "New Technology" ...
##   .. ..$ id    : int  417 659 3833 9696 9886 15582 16216 21441 36167 48471 ...
##   ..$ :'data.frame':	11 obs. of  3 variables:
##   .. ..$ urlkey: chr  "offleash" "japanese-cinema" "film" "cycling" ...
##   .. ..$ name  : chr  "Off-Leash Dog Recreation" "Japanese Films" "Film" "Cycling" ...
##   .. ..$ id    : int  9753 14980 15029 18617 22885 25375 28980 37663 49954 50881 ...
##   ..$ :'data.frame':	13 obs. of  3 variables:
##   .. ..$ urlkey: chr  "esl" "opensource" "neuroscience" "edtech" ...
##   .. ..$ name  : chr  "English as a Second Language" "Open Source" "Neuroscience" "Education & Technology" ...
##   .. ..$ id    : int  182 563 6960 7203 9696 10454 10538 16433 26643 28980 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	37 obs. of  3 variables:
##   .. ..$ urlkey: chr  "photo" "newtech" "social" "photography-classes" ...
##   .. ..$ name  : chr  "Photography" "New Technology" "Social" "Photography Classes" ...
##   .. ..$ id    : int  223 9696 10581 15043 15167 15731 16216 18062 18216 206 ...
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	3 obs. of  3 variables:
##   .. ..$ urlkey: chr  "music" "statistical-computing" "programming-in-r"
##   .. ..$ name  : chr  "Music" "Statistical Computing" "Programming in R"
##   .. ..$ id    : int  15018 15280 115768
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	3 obs. of  3 variables:
##   .. ..$ urlkey: chr  "application-development" "programming-in-r" "applied-statistics"
##   .. ..$ name  : chr  "Application Development" "Programming in R" "Applied Statistics"
##   .. ..$ id    : int  36167 115768 115913
##   ..$ :'data.frame':	6 obs. of  3 variables:
##   .. ..$ urlkey: chr  "digcam" "money" "singers" "business-strategy" ...
##   .. ..$ name  : chr  "Digital Photography" "Money" "Singing" "Business Strategy" ...
##   .. ..$ id    : int  206 15580 17301 17635 17993 98380
##   ..$ :'data.frame':	10 obs. of  3 variables:
##   .. ..$ urlkey: chr  "business-development" "business-strategy" "innovation" "walkers" ...
##   .. ..$ name  : chr  "Business Development" "Business Strategy" "Innovation" "Walking" ...
##   .. ..$ id    : int  18012 17635 1954 933 18617 22885 182 18062 9696 108403
##   ..$ :'data.frame':	23 obs. of  3 variables:
##   .. ..$ urlkey: chr  "softwaredev" "technology" "cloud-computing" "mobile-development" ...
##   .. ..$ name  : chr  "Software Development" "Technology" "Cloud Computing" "Mobile Development" ...
##   .. ..$ id    : int  3833 10579 15167 21441 48471 78565 659 9696 15582 16216 ...
##   ..$ :'data.frame':	14 obs. of  3 variables:
##   .. ..$ urlkey: chr  "salsa" "meditation" "self-improvement" "lawofattraction" ...
##   .. ..$ name  : chr  "Salsa" "Meditation" "Self-Improvement" "Law of Attraction" ...
##   .. ..$ id    : int  1122 1322 3336 3382 10290 15067 16212 18340 18874 19130 ...
##   ..$ :'data.frame':	30 obs. of  3 variables:
##   .. ..$ urlkey: chr  "esl" "opensource" "innovation" "gameprog" ...
##   .. ..$ name  : chr  "English as a Second Language" "Open Source" "Innovation" "Game Programming" ...
##   .. ..$ id    : int  182 563 1954 3287 3833 8652 9696 9753 9772 10538 ...
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "english-language" "ruby" "javascript" "web" ...
##   .. ..$ name  : chr  "English Language" "Ruby" "JavaScript" "Web Technology" ...
##   .. ..$ id    : int  25698 1040 7029 10209 15401 15582 21123 44584 78565 85951 ...
##   ..$ :'data.frame':	50 obs. of  3 variables:
##   .. ..$ urlkey: chr  "science" "environment" "latinmusic" "musicians" ...
##   .. ..$ name  : chr  "Science" "Environment" "Latin Music" "Musicians" ...
##   .. ..$ id    : int  85 89 130 173 182 211 242 485 563 579 ...
##   ..$ :'data.frame':	11 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "webdesign" "python" "softwaredev" ...
##   .. ..$ name  : chr  "Open Source" "Web Design" "Python" "Software Development" ...
##   .. ..$ id    : int  563 659 1064 3833 9696 9886 15167 15582 48471 85951 ...
##   ..$ :'data.frame':	9 obs. of  3 variables:
##   .. ..$ urlkey: chr  "art" "education" "newtech" "sports" ...
##   .. ..$ name  : chr  "Art" "Education" "New Technology" "Sports and Recreation" ...
##   .. ..$ id    : int  1502 8476 9696 10451 15018 15046 15236 15321 15992
##   ..$ :'data.frame':	0 obs. of  0 variables
##   ..$ :'data.frame':	1 obs. of  3 variables:
##   .. ..$ urlkey: chr "music"
##   .. ..$ name  : chr "Music"
##   .. ..$ id    : int 15018
##   ..$ :'data.frame':	17 obs. of  3 variables:
##   .. ..$ urlkey: chr  "javascript" "web-development" "html5" "courses-and-workshops" ...
##   .. ..$ name  : chr  "JavaScript" "Web Development" "HTML5" "Courses and Workshops" ...
##   .. ..$ id    : int  7029 15582 78565 20629 189 3833 16137 16216 21441 48471 ...
##   ..$ :'data.frame':	15 obs. of  3 variables:
##   .. ..$ urlkey: chr  "opensource" "computer-programming" "digcam" "photo" ...
##   .. ..$ name  : chr  "Open Source" "Computer programming" "Digital Photography" "Photography" ...
##   .. ..$ id    : int  563 48471 206 223 456 10438 18062 29971 30928 37381 ...
##   .. [list output truncated]
##  $ joined        : num  1.44e+12 1.46e+12 1.45e+12 1.44e+12 1.44e+12 ...
##  $ link          : chr  "http://www.meetup.com/members/42308302" "http://www.meetup.com/members/136595122" "http://www.meetup.com/members/19946191" "http://www.meetup.com/members/189889100" ...
##  $ photo         :'data.frame':	200 obs. of  4 variables:
##   ..$ highres_link: chr  "http://photos4.meetupstatic.com/photos/member/8/b/7/6/highres_46895702.jpeg" "http://photos4.meetupstatic.com/photos/member/8/c/c/0/highres_192456032.jpeg" NA "http://photos2.meetupstatic.com/photos/member/2/e/1/f/highres_247871807.jpeg" ...
##   ..$ photo_id    : int  46895702 192456032 18409881 247871807 247284068 242378406 247055192 254453319 NA NA ...
##   ..$ photo_link  : chr  "http://photos4.meetupstatic.com/photos/member/8/b/7/6/member_46895702.jpeg" "http://photos2.meetupstatic.com/photos/member/8/c/c/0/member_192456032.jpeg" "http://photos3.meetupstatic.com/photos/member/c/2/d/9/member_18409881.jpeg" "http://photos2.meetupstatic.com/photos/member/2/e/1/f/member_247871807.jpeg" ...
##   ..$ thumb_link  : chr  "http://photos2.meetupstatic.com/photos/member/8/b/7/6/thumb_46895702.jpeg" "http://photos2.meetupstatic.com/photos/member/8/c/c/0/thumb_192456032.jpeg" "http://photos3.meetupstatic.com/photos/member/c/2/d/9/thumb_18409881.jpeg" "http://photos4.meetupstatic.com/photos/member/2/e/1/f/thumb_247871807.jpeg" ...
##  $ lon           : num  -74.1 -74.1 -122.4 -74.1 -74.1 ...
##  $ other_services:'data.frame':	200 obs. of  4 variables:
##   ..$ twitter :'data.frame':	200 obs. of  1 variable:
##   .. ..$ identifier: chr  "@jpmarindiaz" NA NA NA ...
##   ..$ tumblr  :'data.frame':	200 obs. of  1 variable:
##   .. ..$ identifier: chr  NA NA NA NA ...
##   ..$ flickr  :'data.frame':	200 obs. of  1 variable:
##   .. ..$ identifier: chr  NA NA NA NA ...
##   ..$ facebook:'data.frame':	200 obs. of  1 variable:
##   .. ..$ identifier: chr  NA NA NA NA ...
##  $ name          : chr  "@jpmarindiaz" "1ng3" "Abelardo Duarte Rey" "Adrian Zuur" ...
##  $ visited       : num  1.47e+12 1.46e+12 1.45e+12 1.44e+12 1.46e+12 ...
##  $ self          :'data.frame':	200 obs. of  1 variable:
##   ..$ common:'data.frame':	200 obs. of  0 variables
##  $ id            : int  42308302 136595122 19946191 189889100 188997341 183105297 188617906 200884932 189087328 187270799 ...
##  $ lang          : chr  "en_US" NA NA NA ...
##  $ lat           : num  4.63 4.63 37.77 4.63 4.63 ...
##  $ status        : chr  "active" "active" "active" "active" ...
##  $ hometown      : chr  NA NA "Bogotá" NA ...
##  $ state         : chr  NA NA "CA" NA ...
##  $ bio           : chr  NA NA NA NA ...
```

```r
# [1] "country"        "city"           "topics"         "joined"         "link"           "photo"
# [7] "lon"            "other_services" "name"           "visited"        "self"           "id"
# [13] "lang"           "lat"            "status"         "hometown"       "state"          "bio"
membersDf <- membersDf[c("name","country","city","bio","lang","lat","lon")]


membersDf %>%
  group_by(city) %>%
  summarise(n())
```

```
## Source: local data frame [18 x 2]
## 
##             city   n()
##            (chr) (int)
## 1         Bogotá   172
## 2       Brisbane     1
## 3   Buenos Aires     1
## 4         Caldas     1
## 5           Cali     2
## 6      Cartagena     1
## 7           Chía     1
## 8           Cota     3
## 9         Dublin     1
## 10    Facatativá     1
## 11         Funza     2
## 12          Lima     1
## 13        London     1
## 14        Madrid     1
## 15      Medellín     4
## 16         Quito     4
## 17 San Francisco     2
## 18 Villavicencio     1
```

```r
membersDf %>%
  filter(country %in% c("ar","pe"))
```

```
##               name country         city
## 1 Andrés Fernández      ar Buenos Aires
## 2       David Mori      pe         Lima
##                                                                                                                                              bio
## 1                                                                                                                                           <NA>
## 2 Hola, soy de Lima-Perú, egresado de Ing Estadística e interesado en temas econométricos, series de tiempo,metodos multivariados, programación.
##   lang    lat    lon
## 1 <NA> -34.61 -58.37
## 2 <NA> -12.07 -77.05
```

```r
membersDf %>%
  filter(!is.na(bio)) %>%
  select(name,bio)
```

```
##                              name
## 1                       Alejandra
## 2                       Alejandro
## 3        Alejandro Correa Bahnsen
## 4               Alejandro Foullon
## 5                 Alejandro Tobon
## 6  Alex Johann Zambrano Carbonell
## 7                       Alexander
## 8                 Alexito Barreno
## 9                  Amilkar Brunal
## 10                            Ana
## 11                Andrea Calderon
## 12                 Andrea Taborda
## 13         Andrés Fabián Corredor
## 14    Andres Felipe Florez Rivera
## 15               ANDRÉS GUTIÉRREZ
## 16                        antonio
## 17                 arturo moralez
## 18                  Byron Herrera
## 19                         CARLOS
## 20                  Carlos LESMES
## 21   Carlos Reyes Charls Kings RB
## 22               Carlos Rodriguez
## 23                       cepardot
## 24                Cesar A Basurto
## 25             Christian Gonzalez
## 26             Constanza Bastidas
## 27                Cristian Gaitan
## 28                    Cruz Julián
## 29                  Daniela Lopez
## 30                Daniela Naranjo
## 31                     David Mori
## 32                          Diana
## 33            Diana Marcela Pérez
##                                                                                                                                                                                                                                                            bio
## 1                                                                          Me llamo Alejandra Neira, estoy haciendo una especialización en Estadística en la Universidad Nacional de Colombia, soy biologa de profesión con gran interes en la geoestadistica.
## 2                                                                                                                                Hello there, I just started a course for R with Johns Hopkins's university, if you have some spare time I willing to learn! !
## 3                                                                                                                                                                                                                      Data Scientist, PhD in Machine Learning
## 4                                                                                                                                                                   Interesado en los análisis predictivos con R utilizando teorías de aprendizaje de máquina.
## 5                                                                                                                                                                  Gran experiencia en temas de mineria de datos, con herramientas tales como hadoop, SAS y R.
## 6                                                                                          Se o mundo não têm nenhum conhecimento da variação estatística dos dados, não podia interpretar o mundo em que vivemos. http://experienceinstatistics.blogspot.com/
## 7                                                                                                                                                                                                            Estudiante de Estadística Universidad Santo tomás
## 8                                                                                                                                                                          Hey r lo máximo espero poder comprender y aportar y desarrollar mucho este lenguaje
## 9                                                                                                                   Psicólogo 1992\nEspecialista en Orientación Educativa y desa-rrollo Humano 2001\nMagister en Investigación Social Interdiscipli-naria.2008
## 10                                                                                                                                                                                                                                                Usuaria de R
## 11                                                                                                                                                                                                                              Bióloga y M.Sc en conservación
## 12                                                                                                                                                                                Tengo 19 años y soy estudiante de estadística de la Universidad Santo Tomas.
## 13                                                                                                                                                                                                                                                           -
## 14                                                                                                                                                                                             Cordial saludo, esto nos estaba haciendo falta desde hace rato!
## 15                                                                                                                        Decano de la Facultad de Estadística de la Universidad Santo Tomás (Bogotá) - Consultor, estadístico, profesor, escritor de libros. 
## 16                                                                   Antonio zumaque estudiante de V sem de estadística universidad de córdoba coordinador del grupo de semillero SIE. somos interesados en estudiar la linea de minería de datos entre otras.
## 17                                                                                                                                                                                                                 usando R para investigacion por varios años
## 18                                                                                                                                                                                                                                          Development dayly.
## 19 Hola soy Carlos Suarez soy profesional en Modelos Matematicos, Estadisticos y Econometricos Avanzados, Bayesianos, Espacial,  manejo R,Studio, Stata, SAS, SPSS, GRETL, MATLAB, SCILAB entre otros. carlos.suarez1973@hotmail.es\r\nWhatsapp: +593999443519
## 20                                                                                                                                                                                                            Estadístico, matemático, docente universitario. 
## 21                                                                                                                                                                    Profesional En Estadística - Universidad Santo Tomás.\nPromotor De Software Libre - SFB.
## 22                                                                                                                                       Lingüista de la Universidad Nacional de Colombia.\nInvestigador en lingüística de corpus del Instituto Caro y Cuervo.
## 23                                                         Campo Elías Pardo: profesor del Departamento de Estadística de la Universidad Nacional. Paquetes en R: FactoClass, pamctdp,mpa. Temas: análisis multivariado de datos, análisis de datos textuales.
## 24                                                                                                                                                                        Me gusta la creacion de aplicaciones con proceamiento en r para estadistica espacial
## 25                                                                                                                                                                                                                                                 estadístico
## 26                                                                                                                                                                                                     Profesional de Estadistica de la Universidad del Valle.
## 27                                                                                                                                                                                                                     Soy consultor en BI y quiero aprender R
## 28                                                                                                                                                                                                         Data Dentist. Estadístico maluco. Gamín regenerado.
## 29                                                                                                                                                                           Estudiante de 5to semestre de estadística de la universidad Santo Tomas de Aquino
## 30                                                                                                                                                                                                Ingeniera  electrónica con maestría en ingeniería biomédica.
## 31                                                                                                              Hola, soy de Lima-Perú, egresado de Ing Estadística e interesado en temas econométricos, series de tiempo,metodos multivariados, programación.
## 32                                                                                                                                                                                                                                                          :)
## 33                                                     Diana Marcela Pérez, Estadística y MSc en Estadística de la Universidad Nacional de Colombia (Medellín). Actualmente trabajo en el Departamento de Ingeniería Industrial de la Universidad de Antioquia
```

