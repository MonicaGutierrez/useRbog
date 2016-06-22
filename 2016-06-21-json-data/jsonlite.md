# jsonlite: Leer y escribir json


```r
library(jsonlite)
library(httr)
```

## Leer json desde un texto


```r
txt <- "[12, 3, 7]"
x <- fromJSON(txt)
x
```

```
## [1] 12  3  7
```

## Leer json desde URL

También lee dataframes directamente


```r
d <- fromJSON("https://api.github.com/users/hadley/orgs")
#it's a data frame
str(d)
```

```
## 'data.frame':	6 obs. of  11 variables:
##  $ login             : chr  "ggobi" "rstudio" "rstats" "ropensci" ...
##  $ id                : int  423638 513560 722735 1200269 3330561 5695665
##  $ url               : chr  "https://api.github.com/orgs/ggobi" "https://api.github.com/orgs/rstudio" "https://api.github.com/orgs/rstats" "https://api.github.com/orgs/ropensci" ...
##  $ repos_url         : chr  "https://api.github.com/orgs/ggobi/repos" "https://api.github.com/orgs/rstudio/repos" "https://api.github.com/orgs/rstats/repos" "https://api.github.com/orgs/ropensci/repos" ...
##  $ events_url        : chr  "https://api.github.com/orgs/ggobi/events" "https://api.github.com/orgs/rstudio/events" "https://api.github.com/orgs/rstats/events" "https://api.github.com/orgs/ropensci/events" ...
##  $ hooks_url         : chr  "https://api.github.com/orgs/ggobi/hooks" "https://api.github.com/orgs/rstudio/hooks" "https://api.github.com/orgs/rstats/hooks" "https://api.github.com/orgs/ropensci/hooks" ...
##  $ issues_url        : chr  "https://api.github.com/orgs/ggobi/issues" "https://api.github.com/orgs/rstudio/issues" "https://api.github.com/orgs/rstats/issues" "https://api.github.com/orgs/ropensci/issues" ...
##  $ members_url       : chr  "https://api.github.com/orgs/ggobi/members{/member}" "https://api.github.com/orgs/rstudio/members{/member}" "https://api.github.com/orgs/rstats/members{/member}" "https://api.github.com/orgs/ropensci/members{/member}" ...
##  $ public_members_url: chr  "https://api.github.com/orgs/ggobi/public_members{/member}" "https://api.github.com/orgs/rstudio/public_members{/member}" "https://api.github.com/orgs/rstats/public_members{/member}" "https://api.github.com/orgs/ropensci/public_members{/member}" ...
##  $ avatar_url        : chr  "https://avatars.githubusercontent.com/u/423638?v=3" "https://avatars.githubusercontent.com/u/513560?v=3" "https://avatars.githubusercontent.com/u/722735?v=3" "https://avatars.githubusercontent.com/u/1200269?v=3" ...
##  $ description       : chr  "" NA NA "" ...
```

```r
names(d)
```

```
##  [1] "login"              "id"                 "url"               
##  [4] "repos_url"          "events_url"         "hooks_url"         
##  [7] "issues_url"         "members_url"        "public_members_url"
## [10] "avatar_url"         "description"
```

> Ojo puede haber data.frames no puros... donde las "celdas" son vectores o también data.frames. Esto puede ser problemático al usar otras funciones sobre los data.frames.


```r
d <- fromJSON("https://api.github.com/users/hadley/repos")
#it's a data frame...
names(d)
```

```
##  [1] "id"                "name"              "full_name"        
##  [4] "owner"             "private"           "html_url"         
##  [7] "description"       "fork"              "url"              
## [10] "forks_url"         "keys_url"          "collaborators_url"
## [13] "teams_url"         "hooks_url"         "issue_events_url" 
## [16] "events_url"        "assignees_url"     "branches_url"     
## [19] "tags_url"          "blobs_url"         "git_tags_url"     
## [22] "git_refs_url"      "trees_url"         "statuses_url"     
## [25] "languages_url"     "stargazers_url"    "contributors_url" 
## [28] "subscribers_url"   "subscription_url"  "commits_url"      
## [31] "git_commits_url"   "comments_url"      "issue_comment_url"
## [34] "contents_url"      "compare_url"       "merges_url"       
## [37] "archive_url"       "downloads_url"     "issues_url"       
## [40] "pulls_url"         "milestones_url"    "notifications_url"
## [43] "labels_url"        "releases_url"      "deployments_url"  
## [46] "created_at"        "updated_at"        "pushed_at"        
## [49] "git_url"           "ssh_url"           "clone_url"        
## [52] "svn_url"           "homepage"          "size"             
## [55] "stargazers_count"  "watchers_count"    "language"         
## [58] "has_issues"        "has_downloads"     "has_wiki"         
## [61] "has_pages"         "forks_count"       "mirror_url"       
## [64] "open_issues_count" "forks"             "open_issues"      
## [67] "watchers"          "default_branch"
```

```r
d$name
```

```
##  [1] "15-state-of-the-union" "15-student-papers"    
##  [3] "500lines"              "adv-r"                
##  [5] "appdirs"               "assertthat"           
##  [7] "babynames"             "beautiful-data"       
##  [9] "bench"                 "bigvis"               
## [11] "bigvis-infovis"        "boxplots-paper"       
## [13] "broom"                 "builder"              
## [15] "cellranger"            "classifly"            
## [17] "clusterfly"            "cran-downloads"       
## [19] "cran-logs-dplyr"       "cran-packages"        
## [21] "cranatics"             "crantastic"           
## [23] "data-baby-names"       "data-counties"        
## [25] "data-fuel-economy"     "data-gbd"             
## [27] "data-housing-crisis"   "data-movies"          
## [29] "data-stride"           "decumar"
```

```r
#... it has a nested data frame
names(d$owner)
```

```
##  [1] "login"               "id"                  "avatar_url"         
##  [4] "gravatar_id"         "url"                 "html_url"           
##  [7] "followers_url"       "following_url"       "gists_url"          
## [10] "starred_url"         "subscriptions_url"   "organizations_url"  
## [13] "repos_url"           "events_url"          "received_events_url"
## [16] "type"                "site_admin"
```

```r
str(d)
```

```
## 'data.frame':	30 obs. of  68 variables:
##  $ id               : int  40423928 40544418 14984909 12241750 5154874 9324319 20228011 82348 888200 3116998 ...
##  $ name             : chr  "15-state-of-the-union" "15-student-papers" "500lines" "adv-r" ...
##  $ full_name        : chr  "hadley/15-state-of-the-union" "hadley/15-student-papers" "hadley/500lines" "hadley/adv-r" ...
##  $ owner            :'data.frame':	30 obs. of  17 variables:
##   ..$ login              : chr  "hadley" "hadley" "hadley" "hadley" ...
##   ..$ id                 : int  4196 4196 4196 4196 4196 4196 4196 4196 4196 4196 ...
##   ..$ avatar_url         : chr  "https://avatars.githubusercontent.com/u/4196?v=3" "https://avatars.githubusercontent.com/u/4196?v=3" "https://avatars.githubusercontent.com/u/4196?v=3" "https://avatars.githubusercontent.com/u/4196?v=3" ...
##   ..$ gravatar_id        : chr  "" "" "" "" ...
##   ..$ url                : chr  "https://api.github.com/users/hadley" "https://api.github.com/users/hadley" "https://api.github.com/users/hadley" "https://api.github.com/users/hadley" ...
##   ..$ html_url           : chr  "https://github.com/hadley" "https://github.com/hadley" "https://github.com/hadley" "https://github.com/hadley" ...
##   ..$ followers_url      : chr  "https://api.github.com/users/hadley/followers" "https://api.github.com/users/hadley/followers" "https://api.github.com/users/hadley/followers" "https://api.github.com/users/hadley/followers" ...
##   ..$ following_url      : chr  "https://api.github.com/users/hadley/following{/other_user}" "https://api.github.com/users/hadley/following{/other_user}" "https://api.github.com/users/hadley/following{/other_user}" "https://api.github.com/users/hadley/following{/other_user}" ...
##   ..$ gists_url          : chr  "https://api.github.com/users/hadley/gists{/gist_id}" "https://api.github.com/users/hadley/gists{/gist_id}" "https://api.github.com/users/hadley/gists{/gist_id}" "https://api.github.com/users/hadley/gists{/gist_id}" ...
##   ..$ starred_url        : chr  "https://api.github.com/users/hadley/starred{/owner}{/repo}" "https://api.github.com/users/hadley/starred{/owner}{/repo}" "https://api.github.com/users/hadley/starred{/owner}{/repo}" "https://api.github.com/users/hadley/starred{/owner}{/repo}" ...
##   ..$ subscriptions_url  : chr  "https://api.github.com/users/hadley/subscriptions" "https://api.github.com/users/hadley/subscriptions" "https://api.github.com/users/hadley/subscriptions" "https://api.github.com/users/hadley/subscriptions" ...
##   ..$ organizations_url  : chr  "https://api.github.com/users/hadley/orgs" "https://api.github.com/users/hadley/orgs" "https://api.github.com/users/hadley/orgs" "https://api.github.com/users/hadley/orgs" ...
##   ..$ repos_url          : chr  "https://api.github.com/users/hadley/repos" "https://api.github.com/users/hadley/repos" "https://api.github.com/users/hadley/repos" "https://api.github.com/users/hadley/repos" ...
##   ..$ events_url         : chr  "https://api.github.com/users/hadley/events{/privacy}" "https://api.github.com/users/hadley/events{/privacy}" "https://api.github.com/users/hadley/events{/privacy}" "https://api.github.com/users/hadley/events{/privacy}" ...
##   ..$ received_events_url: chr  "https://api.github.com/users/hadley/received_events" "https://api.github.com/users/hadley/received_events" "https://api.github.com/users/hadley/received_events" "https://api.github.com/users/hadley/received_events" ...
##   ..$ type               : chr  "User" "User" "User" "User" ...
##   ..$ site_admin         : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
##  $ private          : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
##  $ html_url         : chr  "https://github.com/hadley/15-state-of-the-union" "https://github.com/hadley/15-student-papers" "https://github.com/hadley/500lines" "https://github.com/hadley/adv-r" ...
##  $ description      : chr  "" "Graphics & computing student paper winners @ JSM 2015" "500 Lines or Less" "Advanced R programming: a book" ...
##  $ fork             : logi  FALSE FALSE TRUE FALSE TRUE FALSE ...
##  $ url              : chr  "https://api.github.com/repos/hadley/15-state-of-the-union" "https://api.github.com/repos/hadley/15-student-papers" "https://api.github.com/repos/hadley/500lines" "https://api.github.com/repos/hadley/adv-r" ...
##  $ forks_url        : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/forks" "https://api.github.com/repos/hadley/15-student-papers/forks" "https://api.github.com/repos/hadley/500lines/forks" "https://api.github.com/repos/hadley/adv-r/forks" ...
##  $ keys_url         : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/keys{/key_id}" "https://api.github.com/repos/hadley/15-student-papers/keys{/key_id}" "https://api.github.com/repos/hadley/500lines/keys{/key_id}" "https://api.github.com/repos/hadley/adv-r/keys{/key_id}" ...
##  $ collaborators_url: chr  "https://api.github.com/repos/hadley/15-state-of-the-union/collaborators{/collaborator}" "https://api.github.com/repos/hadley/15-student-papers/collaborators{/collaborator}" "https://api.github.com/repos/hadley/500lines/collaborators{/collaborator}" "https://api.github.com/repos/hadley/adv-r/collaborators{/collaborator}" ...
##  $ teams_url        : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/teams" "https://api.github.com/repos/hadley/15-student-papers/teams" "https://api.github.com/repos/hadley/500lines/teams" "https://api.github.com/repos/hadley/adv-r/teams" ...
##  $ hooks_url        : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/hooks" "https://api.github.com/repos/hadley/15-student-papers/hooks" "https://api.github.com/repos/hadley/500lines/hooks" "https://api.github.com/repos/hadley/adv-r/hooks" ...
##  $ issue_events_url : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/issues/events{/number}" "https://api.github.com/repos/hadley/15-student-papers/issues/events{/number}" "https://api.github.com/repos/hadley/500lines/issues/events{/number}" "https://api.github.com/repos/hadley/adv-r/issues/events{/number}" ...
##  $ events_url       : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/events" "https://api.github.com/repos/hadley/15-student-papers/events" "https://api.github.com/repos/hadley/500lines/events" "https://api.github.com/repos/hadley/adv-r/events" ...
##  $ assignees_url    : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/assignees{/user}" "https://api.github.com/repos/hadley/15-student-papers/assignees{/user}" "https://api.github.com/repos/hadley/500lines/assignees{/user}" "https://api.github.com/repos/hadley/adv-r/assignees{/user}" ...
##  $ branches_url     : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/branches{/branch}" "https://api.github.com/repos/hadley/15-student-papers/branches{/branch}" "https://api.github.com/repos/hadley/500lines/branches{/branch}" "https://api.github.com/repos/hadley/adv-r/branches{/branch}" ...
##  $ tags_url         : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/tags" "https://api.github.com/repos/hadley/15-student-papers/tags" "https://api.github.com/repos/hadley/500lines/tags" "https://api.github.com/repos/hadley/adv-r/tags" ...
##  $ blobs_url        : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/git/blobs{/sha}" "https://api.github.com/repos/hadley/15-student-papers/git/blobs{/sha}" "https://api.github.com/repos/hadley/500lines/git/blobs{/sha}" "https://api.github.com/repos/hadley/adv-r/git/blobs{/sha}" ...
##  $ git_tags_url     : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/git/tags{/sha}" "https://api.github.com/repos/hadley/15-student-papers/git/tags{/sha}" "https://api.github.com/repos/hadley/500lines/git/tags{/sha}" "https://api.github.com/repos/hadley/adv-r/git/tags{/sha}" ...
##  $ git_refs_url     : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/git/refs{/sha}" "https://api.github.com/repos/hadley/15-student-papers/git/refs{/sha}" "https://api.github.com/repos/hadley/500lines/git/refs{/sha}" "https://api.github.com/repos/hadley/adv-r/git/refs{/sha}" ...
##  $ trees_url        : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/git/trees{/sha}" "https://api.github.com/repos/hadley/15-student-papers/git/trees{/sha}" "https://api.github.com/repos/hadley/500lines/git/trees{/sha}" "https://api.github.com/repos/hadley/adv-r/git/trees{/sha}" ...
##  $ statuses_url     : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/statuses/{sha}" "https://api.github.com/repos/hadley/15-student-papers/statuses/{sha}" "https://api.github.com/repos/hadley/500lines/statuses/{sha}" "https://api.github.com/repos/hadley/adv-r/statuses/{sha}" ...
##  $ languages_url    : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/languages" "https://api.github.com/repos/hadley/15-student-papers/languages" "https://api.github.com/repos/hadley/500lines/languages" "https://api.github.com/repos/hadley/adv-r/languages" ...
##  $ stargazers_url   : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/stargazers" "https://api.github.com/repos/hadley/15-student-papers/stargazers" "https://api.github.com/repos/hadley/500lines/stargazers" "https://api.github.com/repos/hadley/adv-r/stargazers" ...
##  $ contributors_url : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/contributors" "https://api.github.com/repos/hadley/15-student-papers/contributors" "https://api.github.com/repos/hadley/500lines/contributors" "https://api.github.com/repos/hadley/adv-r/contributors" ...
##  $ subscribers_url  : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/subscribers" "https://api.github.com/repos/hadley/15-student-papers/subscribers" "https://api.github.com/repos/hadley/500lines/subscribers" "https://api.github.com/repos/hadley/adv-r/subscribers" ...
##  $ subscription_url : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/subscription" "https://api.github.com/repos/hadley/15-student-papers/subscription" "https://api.github.com/repos/hadley/500lines/subscription" "https://api.github.com/repos/hadley/adv-r/subscription" ...
##  $ commits_url      : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/commits{/sha}" "https://api.github.com/repos/hadley/15-student-papers/commits{/sha}" "https://api.github.com/repos/hadley/500lines/commits{/sha}" "https://api.github.com/repos/hadley/adv-r/commits{/sha}" ...
##  $ git_commits_url  : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/git/commits{/sha}" "https://api.github.com/repos/hadley/15-student-papers/git/commits{/sha}" "https://api.github.com/repos/hadley/500lines/git/commits{/sha}" "https://api.github.com/repos/hadley/adv-r/git/commits{/sha}" ...
##  $ comments_url     : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/comments{/number}" "https://api.github.com/repos/hadley/15-student-papers/comments{/number}" "https://api.github.com/repos/hadley/500lines/comments{/number}" "https://api.github.com/repos/hadley/adv-r/comments{/number}" ...
##  $ issue_comment_url: chr  "https://api.github.com/repos/hadley/15-state-of-the-union/issues/comments{/number}" "https://api.github.com/repos/hadley/15-student-papers/issues/comments{/number}" "https://api.github.com/repos/hadley/500lines/issues/comments{/number}" "https://api.github.com/repos/hadley/adv-r/issues/comments{/number}" ...
##  $ contents_url     : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/contents/{+path}" "https://api.github.com/repos/hadley/15-student-papers/contents/{+path}" "https://api.github.com/repos/hadley/500lines/contents/{+path}" "https://api.github.com/repos/hadley/adv-r/contents/{+path}" ...
##  $ compare_url      : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/compare/{base}...{head}" "https://api.github.com/repos/hadley/15-student-papers/compare/{base}...{head}" "https://api.github.com/repos/hadley/500lines/compare/{base}...{head}" "https://api.github.com/repos/hadley/adv-r/compare/{base}...{head}" ...
##  $ merges_url       : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/merges" "https://api.github.com/repos/hadley/15-student-papers/merges" "https://api.github.com/repos/hadley/500lines/merges" "https://api.github.com/repos/hadley/adv-r/merges" ...
##  $ archive_url      : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/{archive_format}{/ref}" "https://api.github.com/repos/hadley/15-student-papers/{archive_format}{/ref}" "https://api.github.com/repos/hadley/500lines/{archive_format}{/ref}" "https://api.github.com/repos/hadley/adv-r/{archive_format}{/ref}" ...
##  $ downloads_url    : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/downloads" "https://api.github.com/repos/hadley/15-student-papers/downloads" "https://api.github.com/repos/hadley/500lines/downloads" "https://api.github.com/repos/hadley/adv-r/downloads" ...
##  $ issues_url       : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/issues{/number}" "https://api.github.com/repos/hadley/15-student-papers/issues{/number}" "https://api.github.com/repos/hadley/500lines/issues{/number}" "https://api.github.com/repos/hadley/adv-r/issues{/number}" ...
##  $ pulls_url        : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/pulls{/number}" "https://api.github.com/repos/hadley/15-student-papers/pulls{/number}" "https://api.github.com/repos/hadley/500lines/pulls{/number}" "https://api.github.com/repos/hadley/adv-r/pulls{/number}" ...
##  $ milestones_url   : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/milestones{/number}" "https://api.github.com/repos/hadley/15-student-papers/milestones{/number}" "https://api.github.com/repos/hadley/500lines/milestones{/number}" "https://api.github.com/repos/hadley/adv-r/milestones{/number}" ...
##  $ notifications_url: chr  "https://api.github.com/repos/hadley/15-state-of-the-union/notifications{?since,all,participating}" "https://api.github.com/repos/hadley/15-student-papers/notifications{?since,all,participating}" "https://api.github.com/repos/hadley/500lines/notifications{?since,all,participating}" "https://api.github.com/repos/hadley/adv-r/notifications{?since,all,participating}" ...
##  $ labels_url       : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/labels{/name}" "https://api.github.com/repos/hadley/15-student-papers/labels{/name}" "https://api.github.com/repos/hadley/500lines/labels{/name}" "https://api.github.com/repos/hadley/adv-r/labels{/name}" ...
##  $ releases_url     : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/releases{/id}" "https://api.github.com/repos/hadley/15-student-papers/releases{/id}" "https://api.github.com/repos/hadley/500lines/releases{/id}" "https://api.github.com/repos/hadley/adv-r/releases{/id}" ...
##  $ deployments_url  : chr  "https://api.github.com/repos/hadley/15-state-of-the-union/deployments" "https://api.github.com/repos/hadley/15-student-papers/deployments" "https://api.github.com/repos/hadley/500lines/deployments" "https://api.github.com/repos/hadley/adv-r/deployments" ...
##  $ created_at       : chr  "2015-08-09T03:22:26Z" "2015-08-11T13:51:29Z" "2013-12-06T14:35:23Z" "2013-08-20T11:43:03Z" ...
##  $ updated_at       : chr  "2016-02-23T16:38:41Z" "2016-02-04T23:28:15Z" "2014-04-29T13:52:08Z" "2016-06-21T07:26:41Z" ...
##  $ pushed_at        : chr  "2015-08-10T20:29:10Z" "2015-08-21T15:27:51Z" "2013-12-06T01:16:37Z" "2016-06-20T19:20:44Z" ...
##  $ git_url          : chr  "git://github.com/hadley/15-state-of-the-union.git" "git://github.com/hadley/15-student-papers.git" "git://github.com/hadley/500lines.git" "git://github.com/hadley/adv-r.git" ...
##  $ ssh_url          : chr  "git@github.com:hadley/15-state-of-the-union.git" "git@github.com:hadley/15-student-papers.git" "git@github.com:hadley/500lines.git" "git@github.com:hadley/adv-r.git" ...
##  $ clone_url        : chr  "https://github.com/hadley/15-state-of-the-union.git" "https://github.com/hadley/15-student-papers.git" "https://github.com/hadley/500lines.git" "https://github.com/hadley/adv-r.git" ...
##  $ svn_url          : chr  "https://github.com/hadley/15-state-of-the-union" "https://github.com/hadley/15-student-papers" "https://github.com/hadley/500lines" "https://github.com/hadley/adv-r" ...
##  $ homepage         : chr  NA NA NA NA ...
##  $ size             : int  4519 2956 490 11525 105 364 32470 5740 96 2217 ...
##  $ stargazers_count : int  24 13 0 777 3 61 39 7 3 238 ...
##  $ watchers_count   : int  24 13 0 777 3 61 39 7 3 238 ...
##  $ language         : chr  "R" "R" "CSS" "TeX" ...
##  $ has_issues       : logi  TRUE TRUE FALSE TRUE FALSE TRUE ...
##  $ has_downloads    : logi  TRUE TRUE TRUE TRUE TRUE TRUE ...
##  $ has_wiki         : logi  TRUE TRUE TRUE TRUE TRUE TRUE ...
##  $ has_pages        : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
##  $ forks_count      : int  6 0 2 828 0 19 23 1 0 31 ...
##  $ mirror_url       : logi  NA NA NA NA NA NA ...
##  $ open_issues_count: int  0 0 0 94 0 18 3 0 0 4 ...
##  $ forks            : int  6 0 2 828 0 19 23 1 0 31 ...
##  $ open_issues      : int  0 0 0 94 0 18 3 0 0 4 ...
##  $ watchers         : int  24 13 0 777 3 61 39 7 3 238 ...
##  $ default_branch   : chr  "master" "master" "master" "master" ...
```

```r
d$owner
```

```
##     login   id                                       avatar_url
## 1  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 2  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 3  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 4  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 5  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 6  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 7  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 8  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 9  hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 10 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 11 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 12 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 13 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 14 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 15 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 16 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 17 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 18 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 19 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 20 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 21 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 22 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 23 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 24 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 25 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 26 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 27 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 28 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 29 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
## 30 hadley 4196 https://avatars.githubusercontent.com/u/4196?v=3
##    gravatar_id                                 url
## 1              https://api.github.com/users/hadley
## 2              https://api.github.com/users/hadley
## 3              https://api.github.com/users/hadley
## 4              https://api.github.com/users/hadley
## 5              https://api.github.com/users/hadley
## 6              https://api.github.com/users/hadley
## 7              https://api.github.com/users/hadley
## 8              https://api.github.com/users/hadley
## 9              https://api.github.com/users/hadley
## 10             https://api.github.com/users/hadley
## 11             https://api.github.com/users/hadley
## 12             https://api.github.com/users/hadley
## 13             https://api.github.com/users/hadley
## 14             https://api.github.com/users/hadley
## 15             https://api.github.com/users/hadley
## 16             https://api.github.com/users/hadley
## 17             https://api.github.com/users/hadley
## 18             https://api.github.com/users/hadley
## 19             https://api.github.com/users/hadley
## 20             https://api.github.com/users/hadley
## 21             https://api.github.com/users/hadley
## 22             https://api.github.com/users/hadley
## 23             https://api.github.com/users/hadley
## 24             https://api.github.com/users/hadley
## 25             https://api.github.com/users/hadley
## 26             https://api.github.com/users/hadley
## 27             https://api.github.com/users/hadley
## 28             https://api.github.com/users/hadley
## 29             https://api.github.com/users/hadley
## 30             https://api.github.com/users/hadley
##                     html_url                                 followers_url
## 1  https://github.com/hadley https://api.github.com/users/hadley/followers
## 2  https://github.com/hadley https://api.github.com/users/hadley/followers
## 3  https://github.com/hadley https://api.github.com/users/hadley/followers
## 4  https://github.com/hadley https://api.github.com/users/hadley/followers
## 5  https://github.com/hadley https://api.github.com/users/hadley/followers
## 6  https://github.com/hadley https://api.github.com/users/hadley/followers
## 7  https://github.com/hadley https://api.github.com/users/hadley/followers
## 8  https://github.com/hadley https://api.github.com/users/hadley/followers
## 9  https://github.com/hadley https://api.github.com/users/hadley/followers
## 10 https://github.com/hadley https://api.github.com/users/hadley/followers
## 11 https://github.com/hadley https://api.github.com/users/hadley/followers
## 12 https://github.com/hadley https://api.github.com/users/hadley/followers
## 13 https://github.com/hadley https://api.github.com/users/hadley/followers
## 14 https://github.com/hadley https://api.github.com/users/hadley/followers
## 15 https://github.com/hadley https://api.github.com/users/hadley/followers
## 16 https://github.com/hadley https://api.github.com/users/hadley/followers
## 17 https://github.com/hadley https://api.github.com/users/hadley/followers
## 18 https://github.com/hadley https://api.github.com/users/hadley/followers
## 19 https://github.com/hadley https://api.github.com/users/hadley/followers
## 20 https://github.com/hadley https://api.github.com/users/hadley/followers
## 21 https://github.com/hadley https://api.github.com/users/hadley/followers
## 22 https://github.com/hadley https://api.github.com/users/hadley/followers
## 23 https://github.com/hadley https://api.github.com/users/hadley/followers
## 24 https://github.com/hadley https://api.github.com/users/hadley/followers
## 25 https://github.com/hadley https://api.github.com/users/hadley/followers
## 26 https://github.com/hadley https://api.github.com/users/hadley/followers
## 27 https://github.com/hadley https://api.github.com/users/hadley/followers
## 28 https://github.com/hadley https://api.github.com/users/hadley/followers
## 29 https://github.com/hadley https://api.github.com/users/hadley/followers
## 30 https://github.com/hadley https://api.github.com/users/hadley/followers
##                                                 following_url
## 1  https://api.github.com/users/hadley/following{/other_user}
## 2  https://api.github.com/users/hadley/following{/other_user}
## 3  https://api.github.com/users/hadley/following{/other_user}
## 4  https://api.github.com/users/hadley/following{/other_user}
## 5  https://api.github.com/users/hadley/following{/other_user}
## 6  https://api.github.com/users/hadley/following{/other_user}
## 7  https://api.github.com/users/hadley/following{/other_user}
## 8  https://api.github.com/users/hadley/following{/other_user}
## 9  https://api.github.com/users/hadley/following{/other_user}
## 10 https://api.github.com/users/hadley/following{/other_user}
## 11 https://api.github.com/users/hadley/following{/other_user}
## 12 https://api.github.com/users/hadley/following{/other_user}
## 13 https://api.github.com/users/hadley/following{/other_user}
## 14 https://api.github.com/users/hadley/following{/other_user}
## 15 https://api.github.com/users/hadley/following{/other_user}
## 16 https://api.github.com/users/hadley/following{/other_user}
## 17 https://api.github.com/users/hadley/following{/other_user}
## 18 https://api.github.com/users/hadley/following{/other_user}
## 19 https://api.github.com/users/hadley/following{/other_user}
## 20 https://api.github.com/users/hadley/following{/other_user}
## 21 https://api.github.com/users/hadley/following{/other_user}
## 22 https://api.github.com/users/hadley/following{/other_user}
## 23 https://api.github.com/users/hadley/following{/other_user}
## 24 https://api.github.com/users/hadley/following{/other_user}
## 25 https://api.github.com/users/hadley/following{/other_user}
## 26 https://api.github.com/users/hadley/following{/other_user}
## 27 https://api.github.com/users/hadley/following{/other_user}
## 28 https://api.github.com/users/hadley/following{/other_user}
## 29 https://api.github.com/users/hadley/following{/other_user}
## 30 https://api.github.com/users/hadley/following{/other_user}
##                                              gists_url
## 1  https://api.github.com/users/hadley/gists{/gist_id}
## 2  https://api.github.com/users/hadley/gists{/gist_id}
## 3  https://api.github.com/users/hadley/gists{/gist_id}
## 4  https://api.github.com/users/hadley/gists{/gist_id}
## 5  https://api.github.com/users/hadley/gists{/gist_id}
## 6  https://api.github.com/users/hadley/gists{/gist_id}
## 7  https://api.github.com/users/hadley/gists{/gist_id}
## 8  https://api.github.com/users/hadley/gists{/gist_id}
## 9  https://api.github.com/users/hadley/gists{/gist_id}
## 10 https://api.github.com/users/hadley/gists{/gist_id}
## 11 https://api.github.com/users/hadley/gists{/gist_id}
## 12 https://api.github.com/users/hadley/gists{/gist_id}
## 13 https://api.github.com/users/hadley/gists{/gist_id}
## 14 https://api.github.com/users/hadley/gists{/gist_id}
## 15 https://api.github.com/users/hadley/gists{/gist_id}
## 16 https://api.github.com/users/hadley/gists{/gist_id}
## 17 https://api.github.com/users/hadley/gists{/gist_id}
## 18 https://api.github.com/users/hadley/gists{/gist_id}
## 19 https://api.github.com/users/hadley/gists{/gist_id}
## 20 https://api.github.com/users/hadley/gists{/gist_id}
## 21 https://api.github.com/users/hadley/gists{/gist_id}
## 22 https://api.github.com/users/hadley/gists{/gist_id}
## 23 https://api.github.com/users/hadley/gists{/gist_id}
## 24 https://api.github.com/users/hadley/gists{/gist_id}
## 25 https://api.github.com/users/hadley/gists{/gist_id}
## 26 https://api.github.com/users/hadley/gists{/gist_id}
## 27 https://api.github.com/users/hadley/gists{/gist_id}
## 28 https://api.github.com/users/hadley/gists{/gist_id}
## 29 https://api.github.com/users/hadley/gists{/gist_id}
## 30 https://api.github.com/users/hadley/gists{/gist_id}
##                                                   starred_url
## 1  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 2  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 3  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 4  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 5  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 6  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 7  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 8  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 9  https://api.github.com/users/hadley/starred{/owner}{/repo}
## 10 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 11 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 12 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 13 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 14 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 15 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 16 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 17 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 18 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 19 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 20 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 21 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 22 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 23 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 24 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 25 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 26 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 27 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 28 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 29 https://api.github.com/users/hadley/starred{/owner}{/repo}
## 30 https://api.github.com/users/hadley/starred{/owner}{/repo}
##                                    subscriptions_url
## 1  https://api.github.com/users/hadley/subscriptions
## 2  https://api.github.com/users/hadley/subscriptions
## 3  https://api.github.com/users/hadley/subscriptions
## 4  https://api.github.com/users/hadley/subscriptions
## 5  https://api.github.com/users/hadley/subscriptions
## 6  https://api.github.com/users/hadley/subscriptions
## 7  https://api.github.com/users/hadley/subscriptions
## 8  https://api.github.com/users/hadley/subscriptions
## 9  https://api.github.com/users/hadley/subscriptions
## 10 https://api.github.com/users/hadley/subscriptions
## 11 https://api.github.com/users/hadley/subscriptions
## 12 https://api.github.com/users/hadley/subscriptions
## 13 https://api.github.com/users/hadley/subscriptions
## 14 https://api.github.com/users/hadley/subscriptions
## 15 https://api.github.com/users/hadley/subscriptions
## 16 https://api.github.com/users/hadley/subscriptions
## 17 https://api.github.com/users/hadley/subscriptions
## 18 https://api.github.com/users/hadley/subscriptions
## 19 https://api.github.com/users/hadley/subscriptions
## 20 https://api.github.com/users/hadley/subscriptions
## 21 https://api.github.com/users/hadley/subscriptions
## 22 https://api.github.com/users/hadley/subscriptions
## 23 https://api.github.com/users/hadley/subscriptions
## 24 https://api.github.com/users/hadley/subscriptions
## 25 https://api.github.com/users/hadley/subscriptions
## 26 https://api.github.com/users/hadley/subscriptions
## 27 https://api.github.com/users/hadley/subscriptions
## 28 https://api.github.com/users/hadley/subscriptions
## 29 https://api.github.com/users/hadley/subscriptions
## 30 https://api.github.com/users/hadley/subscriptions
##                           organizations_url
## 1  https://api.github.com/users/hadley/orgs
## 2  https://api.github.com/users/hadley/orgs
## 3  https://api.github.com/users/hadley/orgs
## 4  https://api.github.com/users/hadley/orgs
## 5  https://api.github.com/users/hadley/orgs
## 6  https://api.github.com/users/hadley/orgs
## 7  https://api.github.com/users/hadley/orgs
## 8  https://api.github.com/users/hadley/orgs
## 9  https://api.github.com/users/hadley/orgs
## 10 https://api.github.com/users/hadley/orgs
## 11 https://api.github.com/users/hadley/orgs
## 12 https://api.github.com/users/hadley/orgs
## 13 https://api.github.com/users/hadley/orgs
## 14 https://api.github.com/users/hadley/orgs
## 15 https://api.github.com/users/hadley/orgs
## 16 https://api.github.com/users/hadley/orgs
## 17 https://api.github.com/users/hadley/orgs
## 18 https://api.github.com/users/hadley/orgs
## 19 https://api.github.com/users/hadley/orgs
## 20 https://api.github.com/users/hadley/orgs
## 21 https://api.github.com/users/hadley/orgs
## 22 https://api.github.com/users/hadley/orgs
## 23 https://api.github.com/users/hadley/orgs
## 24 https://api.github.com/users/hadley/orgs
## 25 https://api.github.com/users/hadley/orgs
## 26 https://api.github.com/users/hadley/orgs
## 27 https://api.github.com/users/hadley/orgs
## 28 https://api.github.com/users/hadley/orgs
## 29 https://api.github.com/users/hadley/orgs
## 30 https://api.github.com/users/hadley/orgs
##                                    repos_url
## 1  https://api.github.com/users/hadley/repos
## 2  https://api.github.com/users/hadley/repos
## 3  https://api.github.com/users/hadley/repos
## 4  https://api.github.com/users/hadley/repos
## 5  https://api.github.com/users/hadley/repos
## 6  https://api.github.com/users/hadley/repos
## 7  https://api.github.com/users/hadley/repos
## 8  https://api.github.com/users/hadley/repos
## 9  https://api.github.com/users/hadley/repos
## 10 https://api.github.com/users/hadley/repos
## 11 https://api.github.com/users/hadley/repos
## 12 https://api.github.com/users/hadley/repos
## 13 https://api.github.com/users/hadley/repos
## 14 https://api.github.com/users/hadley/repos
## 15 https://api.github.com/users/hadley/repos
## 16 https://api.github.com/users/hadley/repos
## 17 https://api.github.com/users/hadley/repos
## 18 https://api.github.com/users/hadley/repos
## 19 https://api.github.com/users/hadley/repos
## 20 https://api.github.com/users/hadley/repos
## 21 https://api.github.com/users/hadley/repos
## 22 https://api.github.com/users/hadley/repos
## 23 https://api.github.com/users/hadley/repos
## 24 https://api.github.com/users/hadley/repos
## 25 https://api.github.com/users/hadley/repos
## 26 https://api.github.com/users/hadley/repos
## 27 https://api.github.com/users/hadley/repos
## 28 https://api.github.com/users/hadley/repos
## 29 https://api.github.com/users/hadley/repos
## 30 https://api.github.com/users/hadley/repos
##                                              events_url
## 1  https://api.github.com/users/hadley/events{/privacy}
## 2  https://api.github.com/users/hadley/events{/privacy}
## 3  https://api.github.com/users/hadley/events{/privacy}
## 4  https://api.github.com/users/hadley/events{/privacy}
## 5  https://api.github.com/users/hadley/events{/privacy}
## 6  https://api.github.com/users/hadley/events{/privacy}
## 7  https://api.github.com/users/hadley/events{/privacy}
## 8  https://api.github.com/users/hadley/events{/privacy}
## 9  https://api.github.com/users/hadley/events{/privacy}
## 10 https://api.github.com/users/hadley/events{/privacy}
## 11 https://api.github.com/users/hadley/events{/privacy}
## 12 https://api.github.com/users/hadley/events{/privacy}
## 13 https://api.github.com/users/hadley/events{/privacy}
## 14 https://api.github.com/users/hadley/events{/privacy}
## 15 https://api.github.com/users/hadley/events{/privacy}
## 16 https://api.github.com/users/hadley/events{/privacy}
## 17 https://api.github.com/users/hadley/events{/privacy}
## 18 https://api.github.com/users/hadley/events{/privacy}
## 19 https://api.github.com/users/hadley/events{/privacy}
## 20 https://api.github.com/users/hadley/events{/privacy}
## 21 https://api.github.com/users/hadley/events{/privacy}
## 22 https://api.github.com/users/hadley/events{/privacy}
## 23 https://api.github.com/users/hadley/events{/privacy}
## 24 https://api.github.com/users/hadley/events{/privacy}
## 25 https://api.github.com/users/hadley/events{/privacy}
## 26 https://api.github.com/users/hadley/events{/privacy}
## 27 https://api.github.com/users/hadley/events{/privacy}
## 28 https://api.github.com/users/hadley/events{/privacy}
## 29 https://api.github.com/users/hadley/events{/privacy}
## 30 https://api.github.com/users/hadley/events{/privacy}
##                                    received_events_url type site_admin
## 1  https://api.github.com/users/hadley/received_events User      FALSE
## 2  https://api.github.com/users/hadley/received_events User      FALSE
## 3  https://api.github.com/users/hadley/received_events User      FALSE
## 4  https://api.github.com/users/hadley/received_events User      FALSE
## 5  https://api.github.com/users/hadley/received_events User      FALSE
## 6  https://api.github.com/users/hadley/received_events User      FALSE
## 7  https://api.github.com/users/hadley/received_events User      FALSE
## 8  https://api.github.com/users/hadley/received_events User      FALSE
## 9  https://api.github.com/users/hadley/received_events User      FALSE
## 10 https://api.github.com/users/hadley/received_events User      FALSE
## 11 https://api.github.com/users/hadley/received_events User      FALSE
## 12 https://api.github.com/users/hadley/received_events User      FALSE
## 13 https://api.github.com/users/hadley/received_events User      FALSE
## 14 https://api.github.com/users/hadley/received_events User      FALSE
## 15 https://api.github.com/users/hadley/received_events User      FALSE
## 16 https://api.github.com/users/hadley/received_events User      FALSE
## 17 https://api.github.com/users/hadley/received_events User      FALSE
## 18 https://api.github.com/users/hadley/received_events User      FALSE
## 19 https://api.github.com/users/hadley/received_events User      FALSE
## 20 https://api.github.com/users/hadley/received_events User      FALSE
## 21 https://api.github.com/users/hadley/received_events User      FALSE
## 22 https://api.github.com/users/hadley/received_events User      FALSE
## 23 https://api.github.com/users/hadley/received_events User      FALSE
## 24 https://api.github.com/users/hadley/received_events User      FALSE
## 25 https://api.github.com/users/hadley/received_events User      FALSE
## 26 https://api.github.com/users/hadley/received_events User      FALSE
## 27 https://api.github.com/users/hadley/received_events User      FALSE
## 28 https://api.github.com/users/hadley/received_events User      FALSE
## 29 https://api.github.com/users/hadley/received_events User      FALSE
## 30 https://api.github.com/users/hadley/received_events User      FALSE
```

```r
str(d$owner)
```

```
## 'data.frame':	30 obs. of  17 variables:
##  $ login              : chr  "hadley" "hadley" "hadley" "hadley" ...
##  $ id                 : int  4196 4196 4196 4196 4196 4196 4196 4196 4196 4196 ...
##  $ avatar_url         : chr  "https://avatars.githubusercontent.com/u/4196?v=3" "https://avatars.githubusercontent.com/u/4196?v=3" "https://avatars.githubusercontent.com/u/4196?v=3" "https://avatars.githubusercontent.com/u/4196?v=3" ...
##  $ gravatar_id        : chr  "" "" "" "" ...
##  $ url                : chr  "https://api.github.com/users/hadley" "https://api.github.com/users/hadley" "https://api.github.com/users/hadley" "https://api.github.com/users/hadley" ...
##  $ html_url           : chr  "https://github.com/hadley" "https://github.com/hadley" "https://github.com/hadley" "https://github.com/hadley" ...
##  $ followers_url      : chr  "https://api.github.com/users/hadley/followers" "https://api.github.com/users/hadley/followers" "https://api.github.com/users/hadley/followers" "https://api.github.com/users/hadley/followers" ...
##  $ following_url      : chr  "https://api.github.com/users/hadley/following{/other_user}" "https://api.github.com/users/hadley/following{/other_user}" "https://api.github.com/users/hadley/following{/other_user}" "https://api.github.com/users/hadley/following{/other_user}" ...
##  $ gists_url          : chr  "https://api.github.com/users/hadley/gists{/gist_id}" "https://api.github.com/users/hadley/gists{/gist_id}" "https://api.github.com/users/hadley/gists{/gist_id}" "https://api.github.com/users/hadley/gists{/gist_id}" ...
##  $ starred_url        : chr  "https://api.github.com/users/hadley/starred{/owner}{/repo}" "https://api.github.com/users/hadley/starred{/owner}{/repo}" "https://api.github.com/users/hadley/starred{/owner}{/repo}" "https://api.github.com/users/hadley/starred{/owner}{/repo}" ...
##  $ subscriptions_url  : chr  "https://api.github.com/users/hadley/subscriptions" "https://api.github.com/users/hadley/subscriptions" "https://api.github.com/users/hadley/subscriptions" "https://api.github.com/users/hadley/subscriptions" ...
##  $ organizations_url  : chr  "https://api.github.com/users/hadley/orgs" "https://api.github.com/users/hadley/orgs" "https://api.github.com/users/hadley/orgs" "https://api.github.com/users/hadley/orgs" ...
##  $ repos_url          : chr  "https://api.github.com/users/hadley/repos" "https://api.github.com/users/hadley/repos" "https://api.github.com/users/hadley/repos" "https://api.github.com/users/hadley/repos" ...
##  $ events_url         : chr  "https://api.github.com/users/hadley/events{/privacy}" "https://api.github.com/users/hadley/events{/privacy}" "https://api.github.com/users/hadley/events{/privacy}" "https://api.github.com/users/hadley/events{/privacy}" ...
##  $ received_events_url: chr  "https://api.github.com/users/hadley/received_events" "https://api.github.com/users/hadley/received_events" "https://api.github.com/users/hadley/received_events" "https://api.github.com/users/hadley/received_events" ...
##  $ type               : chr  "User" "User" "User" "User" ...
##  $ site_admin         : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
```

## Leer desde un archivo


```r
x <- fromJSON("data/meetup-members.json")
str(x)
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

## Más lecturas desde texto
### Vectores


```r
fromJSON('["Mario", "Peach", null, "Bowser"]')
```

```
## [1] "Mario"  "Peach"  NA       "Bowser"
```

```r
fromJSON('["Mario", "Peach", null, "Bowser"]', simplifyVector = FALSE)
```

```
## [[1]]
## [1] "Mario"
## 
## [[2]]
## [1] "Peach"
## 
## [[3]]
## NULL
## 
## [[4]]
## [1] "Bowser"
```

### Dataframes


```r
json <-
  '[
{"Name" : "Mario", "Age" : 32, "Occupation" : "Plumber"},
{"Name" : "Peach", "Age" : 21, "Occupation" : "Princess"},
{},
{"Name" : "Bowser", "Occupation" : "Koopa"}
]'
fromJSON(json)
```

```
##     Name Age Occupation
## 1  Mario  32    Plumber
## 2  Peach  21   Princess
## 3   <NA>  NA       <NA>
## 4 Bowser  NA      Koopa
```

```r
fromJSON(json, simplifyDataFrame = FALSE)
```

```
## [[1]]
## [[1]]$Name
## [1] "Mario"
## 
## [[1]]$Age
## [1] 32
## 
## [[1]]$Occupation
## [1] "Plumber"
## 
## 
## [[2]]
## [[2]]$Name
## [1] "Peach"
## 
## [[2]]$Age
## [1] 21
## 
## [[2]]$Occupation
## [1] "Princess"
## 
## 
## [[3]]
## named list()
## 
## [[4]]
## [[4]]$Name
## [1] "Bowser"
## 
## [[4]]$Occupation
## [1] "Koopa"
```

### Matrices


```r
json <- '[
  [1, 2, 3, 4],
[5, 6, 7, 8],
[9, 10, 11, 12]
]'
fromJSON(json)
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    2    3    4
## [2,]    5    6    7    8
## [3,]    9   10   11   12
```

```r
fromJSON(json, simplifyMatrix = FALSE)
```

```
## [[1]]
## [1] 1 2 3 4
## 
## [[2]]
## [1] 5 6 7 8
## 
## [[3]]
## [1]  9 10 11 12
```

### Arreglos de cualquier dimensión


```r
json <- '[
   [[1, 2],
[3, 4]],
[[5, 6],
[7, 8]],
[[9, 10],
[11, 12]]
]'
myarray <- fromJSON(json)
myarray[1, , ]
```

```
##      [,1] [,2]
## [1,]    1    2
## [2,]    3    4
```

## Tip: Usar unbox


```r
fromJSON('[1,2,3]')
```

```
## [1] 1 2 3
```

```r
toJSON(c(1,2,3))
```

```
## [1,2,3]
```

```r
fromJSON('["a"]')
```

```
## [1] "a"
```

```r
toJSON("a")
```

```
## ["a"]
```

```r
toJSON(unbox("a"))
```

```
## "a"
```

## Tip: Usar Pretty


```r
toJSON(mtcars)
```

```
## [{"mpg":21,"cyl":6,"disp":160,"hp":110,"drat":3.9,"wt":2.62,"qsec":16.46,"vs":0,"am":1,"gear":4,"carb":4,"_row":"Mazda RX4"},{"mpg":21,"cyl":6,"disp":160,"hp":110,"drat":3.9,"wt":2.875,"qsec":17.02,"vs":0,"am":1,"gear":4,"carb":4,"_row":"Mazda RX4 Wag"},{"mpg":22.8,"cyl":4,"disp":108,"hp":93,"drat":3.85,"wt":2.32,"qsec":18.61,"vs":1,"am":1,"gear":4,"carb":1,"_row":"Datsun 710"},{"mpg":21.4,"cyl":6,"disp":258,"hp":110,"drat":3.08,"wt":3.215,"qsec":19.44,"vs":1,"am":0,"gear":3,"carb":1,"_row":"Hornet 4 Drive"},{"mpg":18.7,"cyl":8,"disp":360,"hp":175,"drat":3.15,"wt":3.44,"qsec":17.02,"vs":0,"am":0,"gear":3,"carb":2,"_row":"Hornet Sportabout"},{"mpg":18.1,"cyl":6,"disp":225,"hp":105,"drat":2.76,"wt":3.46,"qsec":20.22,"vs":1,"am":0,"gear":3,"carb":1,"_row":"Valiant"},{"mpg":14.3,"cyl":8,"disp":360,"hp":245,"drat":3.21,"wt":3.57,"qsec":15.84,"vs":0,"am":0,"gear":3,"carb":4,"_row":"Duster 360"},{"mpg":24.4,"cyl":4,"disp":146.7,"hp":62,"drat":3.69,"wt":3.19,"qsec":20,"vs":1,"am":0,"gear":4,"carb":2,"_row":"Merc 240D"},{"mpg":22.8,"cyl":4,"disp":140.8,"hp":95,"drat":3.92,"wt":3.15,"qsec":22.9,"vs":1,"am":0,"gear":4,"carb":2,"_row":"Merc 230"},{"mpg":19.2,"cyl":6,"disp":167.6,"hp":123,"drat":3.92,"wt":3.44,"qsec":18.3,"vs":1,"am":0,"gear":4,"carb":4,"_row":"Merc 280"},{"mpg":17.8,"cyl":6,"disp":167.6,"hp":123,"drat":3.92,"wt":3.44,"qsec":18.9,"vs":1,"am":0,"gear":4,"carb":4,"_row":"Merc 280C"},{"mpg":16.4,"cyl":8,"disp":275.8,"hp":180,"drat":3.07,"wt":4.07,"qsec":17.4,"vs":0,"am":0,"gear":3,"carb":3,"_row":"Merc 450SE"},{"mpg":17.3,"cyl":8,"disp":275.8,"hp":180,"drat":3.07,"wt":3.73,"qsec":17.6,"vs":0,"am":0,"gear":3,"carb":3,"_row":"Merc 450SL"},{"mpg":15.2,"cyl":8,"disp":275.8,"hp":180,"drat":3.07,"wt":3.78,"qsec":18,"vs":0,"am":0,"gear":3,"carb":3,"_row":"Merc 450SLC"},{"mpg":10.4,"cyl":8,"disp":472,"hp":205,"drat":2.93,"wt":5.25,"qsec":17.98,"vs":0,"am":0,"gear":3,"carb":4,"_row":"Cadillac Fleetwood"},{"mpg":10.4,"cyl":8,"disp":460,"hp":215,"drat":3,"wt":5.424,"qsec":17.82,"vs":0,"am":0,"gear":3,"carb":4,"_row":"Lincoln Continental"},{"mpg":14.7,"cyl":8,"disp":440,"hp":230,"drat":3.23,"wt":5.345,"qsec":17.42,"vs":0,"am":0,"gear":3,"carb":4,"_row":"Chrysler Imperial"},{"mpg":32.4,"cyl":4,"disp":78.7,"hp":66,"drat":4.08,"wt":2.2,"qsec":19.47,"vs":1,"am":1,"gear":4,"carb":1,"_row":"Fiat 128"},{"mpg":30.4,"cyl":4,"disp":75.7,"hp":52,"drat":4.93,"wt":1.615,"qsec":18.52,"vs":1,"am":1,"gear":4,"carb":2,"_row":"Honda Civic"},{"mpg":33.9,"cyl":4,"disp":71.1,"hp":65,"drat":4.22,"wt":1.835,"qsec":19.9,"vs":1,"am":1,"gear":4,"carb":1,"_row":"Toyota Corolla"},{"mpg":21.5,"cyl":4,"disp":120.1,"hp":97,"drat":3.7,"wt":2.465,"qsec":20.01,"vs":1,"am":0,"gear":3,"carb":1,"_row":"Toyota Corona"},{"mpg":15.5,"cyl":8,"disp":318,"hp":150,"drat":2.76,"wt":3.52,"qsec":16.87,"vs":0,"am":0,"gear":3,"carb":2,"_row":"Dodge Challenger"},{"mpg":15.2,"cyl":8,"disp":304,"hp":150,"drat":3.15,"wt":3.435,"qsec":17.3,"vs":0,"am":0,"gear":3,"carb":2,"_row":"AMC Javelin"},{"mpg":13.3,"cyl":8,"disp":350,"hp":245,"drat":3.73,"wt":3.84,"qsec":15.41,"vs":0,"am":0,"gear":3,"carb":4,"_row":"Camaro Z28"},{"mpg":19.2,"cyl":8,"disp":400,"hp":175,"drat":3.08,"wt":3.845,"qsec":17.05,"vs":0,"am":0,"gear":3,"carb":2,"_row":"Pontiac Firebird"},{"mpg":27.3,"cyl":4,"disp":79,"hp":66,"drat":4.08,"wt":1.935,"qsec":18.9,"vs":1,"am":1,"gear":4,"carb":1,"_row":"Fiat X1-9"},{"mpg":26,"cyl":4,"disp":120.3,"hp":91,"drat":4.43,"wt":2.14,"qsec":16.7,"vs":0,"am":1,"gear":5,"carb":2,"_row":"Porsche 914-2"},{"mpg":30.4,"cyl":4,"disp":95.1,"hp":113,"drat":3.77,"wt":1.513,"qsec":16.9,"vs":1,"am":1,"gear":5,"carb":2,"_row":"Lotus Europa"},{"mpg":15.8,"cyl":8,"disp":351,"hp":264,"drat":4.22,"wt":3.17,"qsec":14.5,"vs":0,"am":1,"gear":5,"carb":4,"_row":"Ford Pantera L"},{"mpg":19.7,"cyl":6,"disp":145,"hp":175,"drat":3.62,"wt":2.77,"qsec":15.5,"vs":0,"am":1,"gear":5,"carb":6,"_row":"Ferrari Dino"},{"mpg":15,"cyl":8,"disp":301,"hp":335,"drat":3.54,"wt":3.57,"qsec":14.6,"vs":0,"am":1,"gear":5,"carb":8,"_row":"Maserati Bora"},{"mpg":21.4,"cyl":4,"disp":121,"hp":109,"drat":4.11,"wt":2.78,"qsec":18.6,"vs":1,"am":1,"gear":4,"carb":2,"_row":"Volvo 142E"}]
```

```r
toJSON(mtcars, pretty = TRUE)
```

```
## [
##   {
##     "mpg": 21,
##     "cyl": 6,
##     "disp": 160,
##     "hp": 110,
##     "drat": 3.9,
##     "wt": 2.62,
##     "qsec": 16.46,
##     "vs": 0,
##     "am": 1,
##     "gear": 4,
##     "carb": 4,
##     "_row": "Mazda RX4"
##   },
##   {
##     "mpg": 21,
##     "cyl": 6,
##     "disp": 160,
##     "hp": 110,
##     "drat": 3.9,
##     "wt": 2.875,
##     "qsec": 17.02,
##     "vs": 0,
##     "am": 1,
##     "gear": 4,
##     "carb": 4,
##     "_row": "Mazda RX4 Wag"
##   },
##   {
##     "mpg": 22.8,
##     "cyl": 4,
##     "disp": 108,
##     "hp": 93,
##     "drat": 3.85,
##     "wt": 2.32,
##     "qsec": 18.61,
##     "vs": 1,
##     "am": 1,
##     "gear": 4,
##     "carb": 1,
##     "_row": "Datsun 710"
##   },
##   {
##     "mpg": 21.4,
##     "cyl": 6,
##     "disp": 258,
##     "hp": 110,
##     "drat": 3.08,
##     "wt": 3.215,
##     "qsec": 19.44,
##     "vs": 1,
##     "am": 0,
##     "gear": 3,
##     "carb": 1,
##     "_row": "Hornet 4 Drive"
##   },
##   {
##     "mpg": 18.7,
##     "cyl": 8,
##     "disp": 360,
##     "hp": 175,
##     "drat": 3.15,
##     "wt": 3.44,
##     "qsec": 17.02,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 2,
##     "_row": "Hornet Sportabout"
##   },
##   {
##     "mpg": 18.1,
##     "cyl": 6,
##     "disp": 225,
##     "hp": 105,
##     "drat": 2.76,
##     "wt": 3.46,
##     "qsec": 20.22,
##     "vs": 1,
##     "am": 0,
##     "gear": 3,
##     "carb": 1,
##     "_row": "Valiant"
##   },
##   {
##     "mpg": 14.3,
##     "cyl": 8,
##     "disp": 360,
##     "hp": 245,
##     "drat": 3.21,
##     "wt": 3.57,
##     "qsec": 15.84,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 4,
##     "_row": "Duster 360"
##   },
##   {
##     "mpg": 24.4,
##     "cyl": 4,
##     "disp": 146.7,
##     "hp": 62,
##     "drat": 3.69,
##     "wt": 3.19,
##     "qsec": 20,
##     "vs": 1,
##     "am": 0,
##     "gear": 4,
##     "carb": 2,
##     "_row": "Merc 240D"
##   },
##   {
##     "mpg": 22.8,
##     "cyl": 4,
##     "disp": 140.8,
##     "hp": 95,
##     "drat": 3.92,
##     "wt": 3.15,
##     "qsec": 22.9,
##     "vs": 1,
##     "am": 0,
##     "gear": 4,
##     "carb": 2,
##     "_row": "Merc 230"
##   },
##   {
##     "mpg": 19.2,
##     "cyl": 6,
##     "disp": 167.6,
##     "hp": 123,
##     "drat": 3.92,
##     "wt": 3.44,
##     "qsec": 18.3,
##     "vs": 1,
##     "am": 0,
##     "gear": 4,
##     "carb": 4,
##     "_row": "Merc 280"
##   },
##   {
##     "mpg": 17.8,
##     "cyl": 6,
##     "disp": 167.6,
##     "hp": 123,
##     "drat": 3.92,
##     "wt": 3.44,
##     "qsec": 18.9,
##     "vs": 1,
##     "am": 0,
##     "gear": 4,
##     "carb": 4,
##     "_row": "Merc 280C"
##   },
##   {
##     "mpg": 16.4,
##     "cyl": 8,
##     "disp": 275.8,
##     "hp": 180,
##     "drat": 3.07,
##     "wt": 4.07,
##     "qsec": 17.4,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 3,
##     "_row": "Merc 450SE"
##   },
##   {
##     "mpg": 17.3,
##     "cyl": 8,
##     "disp": 275.8,
##     "hp": 180,
##     "drat": 3.07,
##     "wt": 3.73,
##     "qsec": 17.6,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 3,
##     "_row": "Merc 450SL"
##   },
##   {
##     "mpg": 15.2,
##     "cyl": 8,
##     "disp": 275.8,
##     "hp": 180,
##     "drat": 3.07,
##     "wt": 3.78,
##     "qsec": 18,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 3,
##     "_row": "Merc 450SLC"
##   },
##   {
##     "mpg": 10.4,
##     "cyl": 8,
##     "disp": 472,
##     "hp": 205,
##     "drat": 2.93,
##     "wt": 5.25,
##     "qsec": 17.98,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 4,
##     "_row": "Cadillac Fleetwood"
##   },
##   {
##     "mpg": 10.4,
##     "cyl": 8,
##     "disp": 460,
##     "hp": 215,
##     "drat": 3,
##     "wt": 5.424,
##     "qsec": 17.82,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 4,
##     "_row": "Lincoln Continental"
##   },
##   {
##     "mpg": 14.7,
##     "cyl": 8,
##     "disp": 440,
##     "hp": 230,
##     "drat": 3.23,
##     "wt": 5.345,
##     "qsec": 17.42,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 4,
##     "_row": "Chrysler Imperial"
##   },
##   {
##     "mpg": 32.4,
##     "cyl": 4,
##     "disp": 78.7,
##     "hp": 66,
##     "drat": 4.08,
##     "wt": 2.2,
##     "qsec": 19.47,
##     "vs": 1,
##     "am": 1,
##     "gear": 4,
##     "carb": 1,
##     "_row": "Fiat 128"
##   },
##   {
##     "mpg": 30.4,
##     "cyl": 4,
##     "disp": 75.7,
##     "hp": 52,
##     "drat": 4.93,
##     "wt": 1.615,
##     "qsec": 18.52,
##     "vs": 1,
##     "am": 1,
##     "gear": 4,
##     "carb": 2,
##     "_row": "Honda Civic"
##   },
##   {
##     "mpg": 33.9,
##     "cyl": 4,
##     "disp": 71.1,
##     "hp": 65,
##     "drat": 4.22,
##     "wt": 1.835,
##     "qsec": 19.9,
##     "vs": 1,
##     "am": 1,
##     "gear": 4,
##     "carb": 1,
##     "_row": "Toyota Corolla"
##   },
##   {
##     "mpg": 21.5,
##     "cyl": 4,
##     "disp": 120.1,
##     "hp": 97,
##     "drat": 3.7,
##     "wt": 2.465,
##     "qsec": 20.01,
##     "vs": 1,
##     "am": 0,
##     "gear": 3,
##     "carb": 1,
##     "_row": "Toyota Corona"
##   },
##   {
##     "mpg": 15.5,
##     "cyl": 8,
##     "disp": 318,
##     "hp": 150,
##     "drat": 2.76,
##     "wt": 3.52,
##     "qsec": 16.87,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 2,
##     "_row": "Dodge Challenger"
##   },
##   {
##     "mpg": 15.2,
##     "cyl": 8,
##     "disp": 304,
##     "hp": 150,
##     "drat": 3.15,
##     "wt": 3.435,
##     "qsec": 17.3,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 2,
##     "_row": "AMC Javelin"
##   },
##   {
##     "mpg": 13.3,
##     "cyl": 8,
##     "disp": 350,
##     "hp": 245,
##     "drat": 3.73,
##     "wt": 3.84,
##     "qsec": 15.41,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 4,
##     "_row": "Camaro Z28"
##   },
##   {
##     "mpg": 19.2,
##     "cyl": 8,
##     "disp": 400,
##     "hp": 175,
##     "drat": 3.08,
##     "wt": 3.845,
##     "qsec": 17.05,
##     "vs": 0,
##     "am": 0,
##     "gear": 3,
##     "carb": 2,
##     "_row": "Pontiac Firebird"
##   },
##   {
##     "mpg": 27.3,
##     "cyl": 4,
##     "disp": 79,
##     "hp": 66,
##     "drat": 4.08,
##     "wt": 1.935,
##     "qsec": 18.9,
##     "vs": 1,
##     "am": 1,
##     "gear": 4,
##     "carb": 1,
##     "_row": "Fiat X1-9"
##   },
##   {
##     "mpg": 26,
##     "cyl": 4,
##     "disp": 120.3,
##     "hp": 91,
##     "drat": 4.43,
##     "wt": 2.14,
##     "qsec": 16.7,
##     "vs": 0,
##     "am": 1,
##     "gear": 5,
##     "carb": 2,
##     "_row": "Porsche 914-2"
##   },
##   {
##     "mpg": 30.4,
##     "cyl": 4,
##     "disp": 95.1,
##     "hp": 113,
##     "drat": 3.77,
##     "wt": 1.513,
##     "qsec": 16.9,
##     "vs": 1,
##     "am": 1,
##     "gear": 5,
##     "carb": 2,
##     "_row": "Lotus Europa"
##   },
##   {
##     "mpg": 15.8,
##     "cyl": 8,
##     "disp": 351,
##     "hp": 264,
##     "drat": 4.22,
##     "wt": 3.17,
##     "qsec": 14.5,
##     "vs": 0,
##     "am": 1,
##     "gear": 5,
##     "carb": 4,
##     "_row": "Ford Pantera L"
##   },
##   {
##     "mpg": 19.7,
##     "cyl": 6,
##     "disp": 145,
##     "hp": 175,
##     "drat": 3.62,
##     "wt": 2.77,
##     "qsec": 15.5,
##     "vs": 0,
##     "am": 1,
##     "gear": 5,
##     "carb": 6,
##     "_row": "Ferrari Dino"
##   },
##   {
##     "mpg": 15,
##     "cyl": 8,
##     "disp": 301,
##     "hp": 335,
##     "drat": 3.54,
##     "wt": 3.57,
##     "qsec": 14.6,
##     "vs": 0,
##     "am": 1,
##     "gear": 5,
##     "carb": 8,
##     "_row": "Maserati Bora"
##   },
##   {
##     "mpg": 21.4,
##     "cyl": 4,
##     "disp": 121,
##     "hp": 109,
##     "drat": 4.11,
##     "wt": 2.78,
##     "qsec": 18.6,
##     "vs": 1,
##     "am": 1,
##     "gear": 4,
##     "carb": 2,
##     "_row": "Volvo 142E"
##   }
## ]
```

## Serialization


```r
No solo para tipos de datos estándar, en general para cualquier objeto.

myobject <- list(
  mynull = NULL,
  mycomplex = lapply(eigen(matrix(-rnorm(9),3)), round, 3),
  mymatrix = round(matrix(rnorm(9), 3),3),
  myint = as.integer(c(1,2,3)),
  mydf = cars,
  mylist = list(foo='bar', 123, NA, NULL, list('test')),
  mylogical = c(TRUE,FALSE,NA),
  mychar = c('foo', NA, 'bar'),
  somemissings = c(1,2,NA,NaN,5, Inf, 7 -Inf, 9, NA),
  myrawvec = charToRaw('This is a test')
)

print(serializeJSON(myobject))
```

```
## Error: <text>:1:4: unexpected symbol
## 1: No solo
##        ^
```

Ejemplo con una regresión lineal


```r
fit <- lm(mpg ~ ., data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ ., data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -3.4506 -1.6044 -0.1196  1.2193  4.6271 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)  
## (Intercept) 12.30337   18.71788   0.657   0.5181  
## cyl         -0.11144    1.04502  -0.107   0.9161  
## disp         0.01334    0.01786   0.747   0.4635  
## hp          -0.02148    0.02177  -0.987   0.3350  
## drat         0.78711    1.63537   0.481   0.6353  
## wt          -3.71530    1.89441  -1.961   0.0633 .
## qsec         0.82104    0.73084   1.123   0.2739  
## vs           0.31776    2.10451   0.151   0.8814  
## am           2.52023    2.05665   1.225   0.2340  
## gear         0.65541    1.49326   0.439   0.6652  
## carb        -0.19942    0.82875  -0.241   0.8122  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.65 on 21 degrees of freedom
## Multiple R-squared:  0.869,	Adjusted R-squared:  0.8066 
## F-statistic: 13.93 on 10 and 21 DF,  p-value: 3.793e-07
```

```r
cat(serializeJSON(fit,pretty = TRUE))
```

```
## {
##   "type": "list",
##   "attributes": {
##     "names": {
##       "type": "character",
##       "attributes": {},
##       "value": ["coefficients", "residuals", "effects", "rank", "fitted.values", "assign", "qr", "df.residual", "xlevels", "call", "terms", "model"]
##     },
##     "class": {
##       "type": "character",
##       "attributes": {},
##       "value": ["lm"]
##     }
##   },
##   "value": [
##     {
##       "type": "double",
##       "attributes": {
##         "names": {
##           "type": "character",
##           "attributes": {},
##           "value": ["(Intercept)", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##         }
##       },
##       "value": [12.30337416, -0.11144048, 0.01333524, -0.02148212, 0.78711097, -3.71530393, 0.82104075, 0.31776281, 2.52022689, 0.65541302, -0.19941925]
##     },
##     {
##       "type": "double",
##       "attributes": {
##         "names": {
##           "type": "character",
##           "attributes": {},
##           "value": ["Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", "Hornet Sportabout", "Valiant", "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", "Merc 450SLC", "Cadillac Fleetwood", "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla", "Toyota Corona", "Dodge Challenger", "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", "Lotus Europa", "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E"]
##         }
##       },
##       "value": [-1.59950576, -1.11188608, -3.45064408, 0.16259545, 1.00656597, -2.28303904, -0.08625625, 1.90398812, -1.6190899, 0.50097006, -1.39165439, 2.22783789, 1.7004264, -0.5422247, -1.63401342, -0.53643771, 4.20637064, 4.62709419, 0.50326109, 4.3876309, -2.14310344, -1.44305322, -2.5321815, -0.00602198, 2.50832101, -0.99346869, -0.15295396, 2.76372742, -3.0700408, 0.00617185, 1.05888162, -2.96826768]
##     },
##     {
##       "type": "double",
##       "attributes": {
##         "names": {
##           "type": "character",
##           "attributes": {},
##           "value": ["(Intercept)", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
##         }
##       },
##       "value": [-113.64973741, -28.59568066, 6.13139078, -3.06119736, -4.05800874, -8.80203356, -1.98728663, 0.36023424, 3.80450222, -0.98575377, -0.63770585, 2.679169, 2.07295049, -0.00631892, -1.25456252, 0.02453586, 4.73074979, 5.6543909, -0.96298589, 5.28547574, -1.33394996, -0.9287503, -2.20464611, -0.77234424, 3.22813661, -0.28493638, 2.54927189, 4.11672086, -1.85436522, 0.0485934, 0.93566759, -2.20575321]
##     },
##     {
##       "type": "integer",
##       "attributes": {},
##       "value": [11]
##     },
##     {
##       "type": "double",
##       "attributes": {
##         "names": {
##           "type": "character",
##           "attributes": {},
##           "value": ["Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", "Hornet Sportabout", "Valiant", "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", "Merc 450SLC", "Cadillac Fleetwood", "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla", "Toyota Corona", "Dodge Challenger", "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", "Lotus Europa", "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E"]
##         }
##       },
##       "value": [22.59950576, 22.11188608, 26.25064408, 21.23740455, 17.69343403, 20.38303904, 14.38625625, 22.49601188, 24.4190899, 18.69902994, 19.19165439, 14.17216211, 15.5995736, 15.7422247, 12.03401342, 10.93643771, 10.49362936, 27.77290581, 29.89673891, 29.5123691, 23.64310344, 16.94305322, 17.7321815, 13.30602198, 16.69167899, 28.29346869, 26.15295396, 27.63627258, 18.8700408, 19.69382815, 13.94111838, 24.36826768]
##     },
##     {
##       "type": "integer",
##       "attributes": {},
##       "value": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
##     },
##     {
##       "type": "list",
##       "attributes": {
##         "names": {
##           "type": "character",
##           "attributes": {},
##           "value": ["qr", "qraux", "pivot", "tol", "rank"]
##         },
##         "class": {
##           "type": "character",
##           "attributes": {},
##           "value": ["qr"]
##         }
##       },
##       "value": [
##         {
##           "type": "double",
##           "attributes": {
##             "dim": {
##               "type": "integer",
##               "attributes": {},
##               "value": [32, 11]
##             },
##             "dimnames": {
##               "type": "list",
##               "attributes": {},
##               "value": [
##                 {
##                   "type": "character",
##                   "attributes": {},
##                   "value": ["Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", "Hornet Sportabout", "Valiant", "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", "Merc 450SLC", "Cadillac Fleetwood", "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla", "Toyota Corona", "Dodge Challenger", "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", "Lotus Europa", "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E"]
##                 },
##                 {
##                   "type": "character",
##                   "attributes": {},
##                   "value": ["(Intercept)", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##                 }
##               ]
##             },
##             "assign": {
##               "type": "integer",
##               "attributes": {},
##               "value": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
##             }
##           },
##           "value": [-5.65685425, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, 0.1767767, -35.00178567, 9.9435909, 0.21715832, 0.01602374, -0.18511084, 0.01602374, -0.18511084, 0.21715832, 0.21715832, 0.01602374, 0.01602374, -0.18511084, -0.18511084, -0.18511084, -0.18511084, -0.18511084, -0.18511084, 0.21715832, 0.21715832, 0.21715832, 0.21715832, -0.18511084, -0.18511084, -0.18511084, -0.18511084, 0.21715832, 0.21715832, 0.21715832, -0.18511084, 0.01602374, -0.18511084, 0.21715832, -1305.16001904, 622.45810511, -297.87699151, 0.16337837, 0.05218988, 0.05259438, 0.05218988, 0.24334591, 0.22353908, -0.14010261, -0.14010261, -0.23047714, -0.23047714, -0.23047714, 0.42818401, 0.38789892, 0.32075711, 0.01506376, 0.00499249, -0.01045012, 0.15404731, -0.08880792, -0.13580718, 0.01861898, 0.1864735, 0.01607089, 0.15471873, 0.07012005, 0.02197607, -0.21597285, -0.14587846, 0.15706869, -829.78980772, 317.78006875, -35.42112892, 208.53787794, 0.15657216, 0.16109028, -0.17909828, 0.08682158, -0.07669726, 0.02346322, 0.02346322, 0.05732646, 0.05732646, 0.05732646, 0.112834, 0.05415388, -0.03565418, 0.00685291, 0.07130519, 0.0048543, -0.10479228, 0.23890923, 0.22639415, -0.18803762, 0.19232952, 0.00712109, -0.07584174, -0.2038653, -0.27825423, -0.24609487, -0.66341665, -0.16153124, -20.34522986, -2.08369142, 0.54376131, 0.82206584, -1.8839011, -0.37171623, -0.08793686, -0.09193016, -0.07434489, 0.08588521, 0.08588521, -0.13528319, -0.13528319, -0.13528319, 0.08582482, 0.07225159, 0.11451002, -0.02318037, 0.46207265, 0.03977957, -0.23543047, -0.13607129, 0.04481216, 0.16941914, 0.11603386, -0.02262036, 0.16943455, -0.29026866, 0.37755782, -0.26286111, -0.27787174, -0.05011268, -18.19951433, 4.26289662, -2.29871992, -0.31703753, 0.61638094, 2.39622806, 0.24210587, -0.15649242, -0.17333316, -0.32991502, -0.32991502, -0.19400666, -0.05211699, -0.07298312, -0.18532801, -0.2908476, -0.34395346, 0.00974935, 0.01121482, 0.10787329, 0.12575831, 0.17381962, 0.07751455, -0.02703911, 0.16706533, 0.12100567, 0.06625108, 0.46837285, 0.15068632, 0.03837416, 0.13217608, -0.0954059, -100.96777729, -5.88243227, -2.29613411, -4.32479912, 2.52242149, 3.08910716, -4.95013416, -0.05882167, 0.69886385, 0.0384392, 0.15964804, 0.0073691, 0.11588341, 0.18667292, -0.05580502, -0.07269231, -0.03967092, 0.12122451, 0.14748209, 0.30308962, 0.22136404, -0.15871218, 0.0160296, 0.00631989, -0.04218267, 0.05914552, -0.27333286, -0.14292856, 0.11499007, -0.25301234, 0.19872866, -0.00857418, -2.47487373, -2.27533496, -0.1362792, -0.27043559, 0.40689594, 0.23629172, -0.8412313, -1.29501939, -0.31362899, 0.50333194, 0.42600461, -0.04623898, -0.11956769, -0.16412617, -0.1111845, -0.06109372, 0.00143165, 0.07661686, 0.22142337, -0.00967399, -0.0496024, -0.08446204, -0.10245426, 0.14213862, -0.10097742, 0.11283548, -0.3584822, 0.22532767, 0.19875711, -0.06849232, 0.13364794, 0.20744185, -2.29809704, -1.45194026, 0.77116527, 1.10663695, -0.81757676, -0.69455059, 0.83436011, 0.29969249, 1.36179058, -0.00736638, -0.07004267, -0.0106895, 0.00661633, -0.0407852, -0.12632761, -0.12668141, -0.07501279, -0.2374744, -0.09790777, -0.24670352, 0.45144848, 0.1025337, 0.05644033, 0.28003572, 0.08360499, -0.14807253, 0.5259077, 0.15194127, -0.27838831, 0.10507164, -0.28584771, -0.16909378, -20.85965005, -2.02391673, 1.05774493, 2.31853284, -0.98585837, -0.27191345, 0.97278576, 0.13528414, 0.65748269, -1.95999774, 0.17981601, -0.10814794, -0.04158895, 0.03372733, 0.21197339, 0.12051264, -0.03719881, 0.0586715, -0.14606322, 0.14798929, -0.48302966, -0.01135677, 0.01839298, -0.5461013, 0.05867197, -0.03280582, -0.01710709, 0.08406615, 0.43150754, 0.09937047, 0.26904434, -0.17183832, -15.90990258, 4.73923359, 1.67466143, 5.40625729, -1.10916641, 2.91869977, 1.986097, 0.36213558, 0.29305961, -1.49862291, 3.19781483, 0.4285521, 0.24945286, 0.25962216, -0.35158231, -0.12657909, 0.08421755, 0.27814023, -0.1564949, 0.14737805, 0.01523328, 0.03264996, 0.13933456, 0.09743337, -0.0941839, 0.1641559, 0.20104607, -0.03694607, 0.37393255, -0.23377891, -0.20724412, 0.25595958]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [1.1767767, 1.01602374, 1.11342651, 1.16661364, 1.07852284, 1.06742249, 1.05331383, 1.06898682, 1.0734536, 1.06090305, 1.07525606]
##         },
##         {
##           "type": "integer",
##           "attributes": {},
##           "value": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [1e-07]
##         },
##         {
##           "type": "integer",
##           "attributes": {},
##           "value": [11]
##         }
##       ]
##     },
##     {
##       "type": "integer",
##       "attributes": {},
##       "value": [21]
##     },
##     {
##       "type": "list",
##       "attributes": {
##         "names": {
##           "type": "character",
##           "attributes": {},
##           "value": []
##         }
##       },
##       "value": []
##     },
##     {
##       "type": "language",
##       "attributes": {},
##       "value": ["lm(formula = mpg ~ ., data = mtcars)"]
##     },
##     {
##       "type": "language",
##       "attributes": {
##         "variables": {
##           "type": "language",
##           "attributes": {},
##           "value": ["list(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)"]
##         },
##         "factors": {
##           "type": "integer",
##           "attributes": {
##             "dim": {
##               "type": "integer",
##               "attributes": {},
##               "value": [11, 10]
##             },
##             "dimnames": {
##               "type": "list",
##               "attributes": {},
##               "value": [
##                 {
##                   "type": "character",
##                   "attributes": {},
##                   "value": ["mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##                 },
##                 {
##                   "type": "character",
##                   "attributes": {},
##                   "value": ["cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##                 }
##               ]
##             }
##           },
##           "value": [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
##         },
##         "term.labels": {
##           "type": "character",
##           "attributes": {},
##           "value": ["cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##         },
##         "order": {
##           "type": "integer",
##           "attributes": {},
##           "value": [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
##         },
##         "intercept": {
##           "type": "integer",
##           "attributes": {},
##           "value": [1]
##         },
##         "response": {
##           "type": "integer",
##           "attributes": {},
##           "value": [1]
##         },
##         "class": {
##           "type": "character",
##           "attributes": {},
##           "value": ["terms", "formula"]
##         },
##         ".Environment": {
##           "type": "environment",
##           "attributes": {},
##           "value": {}
##         },
##         "predvars": {
##           "type": "language",
##           "attributes": {},
##           "value": ["list(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)"]
##         },
##         "dataClasses": {
##           "type": "character",
##           "attributes": {
##             "names": {
##               "type": "character",
##               "attributes": {},
##               "value": ["mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##             }
##           },
##           "value": ["numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"]
##         }
##       },
##       "value": ["mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb"]
##     },
##     {
##       "type": "list",
##       "attributes": {
##         "names": {
##           "type": "character",
##           "attributes": {},
##           "value": ["mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##         },
##         "terms": {
##           "type": "language",
##           "attributes": {
##             "variables": {
##               "type": "language",
##               "attributes": {},
##               "value": ["list(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)"]
##             },
##             "factors": {
##               "type": "integer",
##               "attributes": {
##                 "dim": {
##                   "type": "integer",
##                   "attributes": {},
##                   "value": [11, 10]
##                 },
##                 "dimnames": {
##                   "type": "list",
##                   "attributes": {},
##                   "value": [
##                     {
##                       "type": "character",
##                       "attributes": {},
##                       "value": ["mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##                     },
##                     {
##                       "type": "character",
##                       "attributes": {},
##                       "value": ["cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##                     }
##                   ]
##                 }
##               },
##               "value": [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
##             },
##             "term.labels": {
##               "type": "character",
##               "attributes": {},
##               "value": ["cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##             },
##             "order": {
##               "type": "integer",
##               "attributes": {},
##               "value": [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
##             },
##             "intercept": {
##               "type": "integer",
##               "attributes": {},
##               "value": [1]
##             },
##             "response": {
##               "type": "integer",
##               "attributes": {},
##               "value": [1]
##             },
##             "class": {
##               "type": "character",
##               "attributes": {},
##               "value": ["terms", "formula"]
##             },
##             ".Environment": {
##               "type": "environment",
##               "attributes": {},
##               "value": {}
##             },
##             "predvars": {
##               "type": "language",
##               "attributes": {},
##               "value": ["list(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)"]
##             },
##             "dataClasses": {
##               "type": "character",
##               "attributes": {
##                 "names": {
##                   "type": "character",
##                   "attributes": {},
##                   "value": ["mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"]
##                 }
##               },
##               "value": ["numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"]
##             }
##           },
##           "value": ["mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb"]
##         },
##         "row.names": {
##           "type": "character",
##           "attributes": {},
##           "value": ["Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", "Hornet Sportabout", "Valiant", "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", "Merc 450SLC", "Cadillac Fleetwood", "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla", "Toyota Corona", "Dodge Challenger", "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", "Lotus Europa", "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E"]
##         },
##         "class": {
##           "type": "character",
##           "attributes": {},
##           "value": ["data.frame"]
##         }
##       },
##       "value": [
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [21, 21, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2, 17.8, 16.4, 17.3, 15.2, 10.4, 10.4, 14.7, 32.4, 30.4, 33.9, 21.5, 15.5, 15.2, 13.3, 19.2, 27.3, 26, 30.4, 15.8, 19.7, 15, 21.4]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [6, 6, 4, 6, 8, 6, 8, 4, 4, 6, 6, 8, 8, 8, 8, 8, 8, 4, 4, 4, 4, 8, 8, 8, 8, 4, 4, 4, 8, 6, 8, 4]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [160, 160, 108, 258, 360, 225, 360, 146.7, 140.8, 167.6, 167.6, 275.8, 275.8, 275.8, 472, 460, 440, 78.7, 75.7, 71.1, 120.1, 318, 304, 350, 400, 79, 120.3, 95.1, 351, 145, 301, 121]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [110, 110, 93, 110, 175, 105, 245, 62, 95, 123, 123, 180, 180, 180, 205, 215, 230, 66, 52, 65, 97, 150, 150, 245, 175, 66, 91, 113, 264, 175, 335, 109]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [3.9, 3.9, 3.85, 3.08, 3.15, 2.76, 3.21, 3.69, 3.92, 3.92, 3.92, 3.07, 3.07, 3.07, 2.93, 3, 3.23, 4.08, 4.93, 4.22, 3.7, 2.76, 3.15, 3.73, 3.08, 4.08, 4.43, 3.77, 4.22, 3.62, 3.54, 4.11]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44, 3.44, 4.07, 3.73, 3.78, 5.25, 5.424, 5.345, 2.2, 1.615, 1.835, 2.465, 3.52, 3.435, 3.84, 3.845, 1.935, 2.14, 1.513, 3.17, 2.77, 3.57, 2.78]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [16.46, 17.02, 18.61, 19.44, 17.02, 20.22, 15.84, 20, 22.9, 18.3, 18.9, 17.4, 17.6, 18, 17.98, 17.82, 17.42, 19.47, 18.52, 19.9, 20.01, 16.87, 17.3, 15.41, 17.05, 18.9, 16.7, 16.9, 14.5, 15.5, 14.6, 18.6]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3, 3, 3, 3, 3, 4, 5, 5, 5, 5, 5, 4]
##         },
##         {
##           "type": "double",
##           "attributes": {},
##           "value": [4, 4, 1, 1, 2, 1, 4, 2, 2, 4, 4, 3, 3, 3, 4, 4, 4, 1, 2, 1, 1, 2, 2, 4, 2, 1, 2, 2, 4, 6, 8, 2]
##         }
##       ]
##     }
##   ]
## }
```

## JSON para dataframes


```r
toJSON(cars, pretty=T)
```

```
## [
##   {
##     "speed": 4,
##     "dist": 2
##   },
##   {
##     "speed": 4,
##     "dist": 10
##   },
##   {
##     "speed": 7,
##     "dist": 4
##   },
##   {
##     "speed": 7,
##     "dist": 22
##   },
##   {
##     "speed": 8,
##     "dist": 16
##   },
##   {
##     "speed": 9,
##     "dist": 10
##   },
##   {
##     "speed": 10,
##     "dist": 18
##   },
##   {
##     "speed": 10,
##     "dist": 26
##   },
##   {
##     "speed": 10,
##     "dist": 34
##   },
##   {
##     "speed": 11,
##     "dist": 17
##   },
##   {
##     "speed": 11,
##     "dist": 28
##   },
##   {
##     "speed": 12,
##     "dist": 14
##   },
##   {
##     "speed": 12,
##     "dist": 20
##   },
##   {
##     "speed": 12,
##     "dist": 24
##   },
##   {
##     "speed": 12,
##     "dist": 28
##   },
##   {
##     "speed": 13,
##     "dist": 26
##   },
##   {
##     "speed": 13,
##     "dist": 34
##   },
##   {
##     "speed": 13,
##     "dist": 34
##   },
##   {
##     "speed": 13,
##     "dist": 46
##   },
##   {
##     "speed": 14,
##     "dist": 26
##   },
##   {
##     "speed": 14,
##     "dist": 36
##   },
##   {
##     "speed": 14,
##     "dist": 60
##   },
##   {
##     "speed": 14,
##     "dist": 80
##   },
##   {
##     "speed": 15,
##     "dist": 20
##   },
##   {
##     "speed": 15,
##     "dist": 26
##   },
##   {
##     "speed": 15,
##     "dist": 54
##   },
##   {
##     "speed": 16,
##     "dist": 32
##   },
##   {
##     "speed": 16,
##     "dist": 40
##   },
##   {
##     "speed": 17,
##     "dist": 32
##   },
##   {
##     "speed": 17,
##     "dist": 40
##   },
##   {
##     "speed": 17,
##     "dist": 50
##   },
##   {
##     "speed": 18,
##     "dist": 42
##   },
##   {
##     "speed": 18,
##     "dist": 56
##   },
##   {
##     "speed": 18,
##     "dist": 76
##   },
##   {
##     "speed": 18,
##     "dist": 84
##   },
##   {
##     "speed": 19,
##     "dist": 36
##   },
##   {
##     "speed": 19,
##     "dist": 46
##   },
##   {
##     "speed": 19,
##     "dist": 68
##   },
##   {
##     "speed": 20,
##     "dist": 32
##   },
##   {
##     "speed": 20,
##     "dist": 48
##   },
##   {
##     "speed": 20,
##     "dist": 52
##   },
##   {
##     "speed": 20,
##     "dist": 56
##   },
##   {
##     "speed": 20,
##     "dist": 64
##   },
##   {
##     "speed": 22,
##     "dist": 66
##   },
##   {
##     "speed": 23,
##     "dist": 54
##   },
##   {
##     "speed": 24,
##     "dist": 70
##   },
##   {
##     "speed": 24,
##     "dist": 92
##   },
##   {
##     "speed": 24,
##     "dist": 93
##   },
##   {
##     "speed": 24,
##     "dist": 120
##   },
##   {
##     "speed": 25,
##     "dist": 85
##   }
## ]
```

```r
toJSON(cars, pretty=T, dataframe = "col")
```

```
## {
##   "speed": [4, 4, 7, 7, 8, 9, 10, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 16, 16, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 20, 20, 20, 20, 20, 22, 23, 24, 24, 24, 24, 25],
##   "dist": [2, 10, 4, 22, 16, 10, 18, 26, 34, 17, 28, 14, 20, 24, 28, 26, 34, 34, 46, 26, 36, 60, 80, 20, 26, 54, 32, 40, 32, 40, 50, 42, 56, 76, 84, 36, 46, 68, 32, 48, 52, 56, 64, 66, 54, 70, 92, 93, 120, 85]
## }
```

## Write JSON


```r
json <- toJSON(cars, pretty=T, dataframe = "col")
write(json, "tmp")
writeLines(json,"tmp.json")
```

