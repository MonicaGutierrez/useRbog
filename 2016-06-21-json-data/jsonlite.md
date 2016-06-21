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

# Obtener datos

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
##  $ forks_count      : int  6 0 2 827 0 19 23 1 0 31 ...
##  $ mirror_url       : logi  NA NA NA NA NA NA ...
##  $ open_issues_count: int  0 0 0 94 0 18 3 0 0 4 ...
##  $ forks            : int  6 0 2 827 0 19 23 1 0 31 ...
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

