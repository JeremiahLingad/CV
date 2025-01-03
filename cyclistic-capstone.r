{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "362e9a6a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-01-03T17:42:18.368510Z",
     "iopub.status.busy": "2025-01-03T17:42:18.366052Z",
     "iopub.status.idle": "2025-01-03T17:45:31.016770Z",
     "shell.execute_reply": "2025-01-03T17:45:31.014719Z"
    },
    "papermill": {
     "duration": 192.65943,
     "end_time": "2025-01-03T17:45:31.020532",
     "exception": false,
     "start_time": "2025-01-03T17:42:18.361102",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“unable to access index for repository http://cran.rstudio.com/src/contrib:\n",
      "  cannot open URL 'http://cran.rstudio.com/src/contrib/PACKAGES'”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“package ‘tidyverse’ is not available for this version of R\n",
      "\n",
      "A version of this package for your version of R might be available elsewhere,\n",
      "see the ideas at\n",
      "https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“unable to access index for repository http://cran.rstudio.com/src/contrib:\n",
      "  cannot open URL 'http://cran.rstudio.com/src/contrib/PACKAGES'”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“package ‘dplyr’ is not available for this version of R\n",
      "\n",
      "A version of this package for your version of R might be available elsewhere,\n",
      "see the ideas at\n",
      "https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages”\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"tidyverse\")\n",
    "install.packages(\"dplyr\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "ab6ced34",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-01-03T17:45:31.076639Z",
     "iopub.status.busy": "2025-01-03T17:45:31.039592Z",
     "iopub.status.idle": "2025-01-03T17:45:32.198544Z",
     "shell.execute_reply": "2025-01-03T17:45:32.196804Z"
    },
    "papermill": {
     "duration": 1.175993,
     "end_time": "2025-01-03T17:45:32.200899",
     "exception": false,
     "start_time": "2025-01-03T17:45:31.024906",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dplyr’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "library(dplyr)\n",
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "5678bf09",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-01-03T17:45:32.210610Z",
     "iopub.status.busy": "2025-01-03T17:45:32.208657Z",
     "iopub.status.idle": "2025-01-03T17:45:42.407090Z",
     "shell.execute_reply": "2025-01-03T17:45:42.405205Z"
    },
    "papermill": {
     "duration": 10.207011,
     "end_time": "2025-01-03T17:45:42.410656",
     "exception": false,
     "start_time": "2025-01-03T17:45:32.203645",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "Divvy_Trips_2019_Q1 <- read.csv(\"../input/cyclistic-dataset/Divvy_Trips_2019_Q1.csv\")\n",
    "Divvy_Trips_2020_Q1 <- read.csv(\"../input/cyclistic-dataset/Divvy_Trips_2020_Q1.csv\")\n",
    "\n",
    "\n",
    "q1_2019 <- data.frame(Divvy_Trips_2019_Q1)\n",
    "q1_2020 <- data.frame(Divvy_Trips_2020_Q1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "c912b605",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-01-03T17:45:42.419574Z",
     "iopub.status.busy": "2025-01-03T17:45:42.418053Z",
     "iopub.status.idle": "2025-01-03T17:46:08.220240Z",
     "shell.execute_reply": "2025-01-03T17:46:08.218566Z"
    },
    "papermill": {
     "duration": 25.809494,
     "end_time": "2025-01-03T17:46:08.222948",
     "exception": false,
     "start_time": "2025-01-03T17:45:42.413454",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 365069 × 12</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>rideable_type</th><th scope=col>tripduration</th><th scope=col>start_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_id</th><th scope=col>end_station_name</th><th scope=col>member_casual</th><th scope=col>gender</th><th scope=col>birthyear</th></tr>\n",
       "\t<tr><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>21742443</td><td>2019-01-01 0:04:37</td><td>2019-01-01 0:11:07</td><td>2167</td><td><span style=white-space:pre-wrap>390     </span></td><td>199</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave             </span></td><td> 84</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Grand Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>21742444</td><td>2019-01-01 0:08:13</td><td>2019-01-01 0:15:34</td><td>4386</td><td><span style=white-space:pre-wrap>441     </span></td><td> 44</td><td><span style=white-space:pre-wrap>State St &amp; Randolph St             </span></td><td>624</td><td>Dearborn St &amp; Van Buren St (*)</td><td>Subscriber</td><td>Female</td><td>1990</td></tr>\n",
       "\t<tr><td>21742445</td><td>2019-01-01 0:13:23</td><td>2019-01-01 0:27:12</td><td>1524</td><td><span style=white-space:pre-wrap>829     </span></td><td> 15</td><td><span style=white-space:pre-wrap>Racine Ave &amp; 18th St               </span></td><td>644</td><td>Western Ave &amp; Fillmore St (*) </td><td>Subscriber</td><td>Female</td><td>1994</td></tr>\n",
       "\t<tr><td>21742446</td><td>2019-01-01 0:13:45</td><td>2019-01-01 0:43:28</td><td> 252</td><td>1,783.00</td><td>123</td><td><span style=white-space:pre-wrap>California Ave &amp; Milwaukee Ave     </span></td><td>176</td><td><span style=white-space:pre-wrap>Clark St &amp; Elm St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>21742447</td><td>2019-01-01 0:14:52</td><td>2019-01-01 0:20:56</td><td>1170</td><td><span style=white-space:pre-wrap>364     </span></td><td>173</td><td>Mies van der Rohe Way &amp; Chicago Ave</td><td> 35</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>21742448</td><td>2019-01-01 0:15:33</td><td>2019-01-01 0:19:09</td><td>2437</td><td><span style=white-space:pre-wrap>216     </span></td><td> 98</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Washington St         </span></td><td> 49</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St       </span></td><td>Subscriber</td><td>Female</td><td>1983</td></tr>\n",
       "\t<tr><td>21742449</td><td>2019-01-01 0:16:06</td><td>2019-01-01 0:19:03</td><td>2708</td><td><span style=white-space:pre-wrap>177     </span></td><td> 98</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Washington St         </span></td><td> 49</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1984</td></tr>\n",
       "\t<tr><td>21742450</td><td>2019-01-01 0:18:41</td><td>2019-01-01 0:20:21</td><td>2796</td><td><span style=white-space:pre-wrap>100     </span></td><td>211</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St             </span></td><td>142</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Erie St          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>21742451</td><td>2019-01-01 0:18:43</td><td>2019-01-01 0:47:30</td><td>6205</td><td>1,727.00</td><td>150</td><td><span style=white-space:pre-wrap>Fort Dearborn Dr &amp; 31st St         </span></td><td>148</td><td><span style=white-space:pre-wrap>State St &amp; 33rd St            </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1995</td></tr>\n",
       "\t<tr><td>21742452</td><td>2019-01-01 0:19:18</td><td>2019-01-01 0:24:54</td><td>3939</td><td><span style=white-space:pre-wrap>336     </span></td><td>268</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; North Blvd         </span></td><td>141</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1996</td></tr>\n",
       "\t<tr><td>21742453</td><td>2019-01-01 0:20:34</td><td>2019-01-01 0:35:20</td><td>6243</td><td><span style=white-space:pre-wrap>886     </span></td><td>299</td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St             </span></td><td>295</td><td><span style=white-space:pre-wrap>Broadway &amp; Argyle St          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>21742454</td><td>2019-01-01 0:21:52</td><td>2019-01-01 0:32:45</td><td>6300</td><td><span style=white-space:pre-wrap>653     </span></td><td>204</td><td><span style=white-space:pre-wrap>Prairie Ave &amp; Garfield Blvd        </span></td><td>420</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 55th St           </span></td><td>Subscriber</td><td>Female</td><td>1994</td></tr>\n",
       "\t<tr><td>21742455</td><td>2019-01-01 0:23:04</td><td>2019-01-01 0:33:05</td><td>3029</td><td><span style=white-space:pre-wrap>601     </span></td><td> 90</td><td><span style=white-space:pre-wrap>Millennium Park                    </span></td><td>255</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd    </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1986</td></tr>\n",
       "\t<tr><td>21742456</td><td>2019-01-01 0:23:43</td><td>2019-01-01 0:33:05</td><td><span style=white-space:pre-wrap>  84</span></td><td><span style=white-space:pre-wrap>562     </span></td><td> 90</td><td><span style=white-space:pre-wrap>Millennium Park                    </span></td><td>255</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Female</td><td>1990</td></tr>\n",
       "\t<tr><td>21742457</td><td>2019-01-01 0:23:54</td><td>2019-01-01 0:39:00</td><td>5019</td><td><span style=white-space:pre-wrap>906     </span></td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln              </span></td><td>324</td><td><span style=white-space:pre-wrap>Stockton Dr &amp; Wrightwood Ave  </span></td><td>Subscriber</td><td>Female</td><td>1989</td></tr>\n",
       "\t<tr><td>21742458</td><td>2019-01-01 0:24:08</td><td>2019-01-01 0:39:00</td><td>5526</td><td><span style=white-space:pre-wrap>892     </span></td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln              </span></td><td>324</td><td><span style=white-space:pre-wrap>Stockton Dr &amp; Wrightwood Ave  </span></td><td>Subscriber</td><td>Female</td><td>1989</td></tr>\n",
       "\t<tr><td>21742459</td><td>2019-01-01 0:24:13</td><td>2019-01-01 0:31:00</td><td>3373</td><td><span style=white-space:pre-wrap>407     </span></td><td>152</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Diversey Pkwy        </span></td><td>166</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Wrightwood Ave  </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1967</td></tr>\n",
       "\t<tr><td>21742460</td><td>2019-01-01 0:24:27</td><td>2019-01-01 0:47:03</td><td>5777</td><td>1,356.00</td><td>268</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; North Blvd         </span></td><td>319</td><td>Greenview Ave &amp; Diversey Pkwy </td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Female</td><td>1990</td></tr>\n",
       "\t<tr><td>21742461</td><td>2019-01-01 0:25:28</td><td>2019-01-01 0:27:10</td><td>3940</td><td><span style=white-space:pre-wrap>102     </span></td><td> 35</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave            </span></td><td> 35</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1985</td></tr>\n",
       "\t<tr><td>21742463</td><td>2019-01-01 0:29:19</td><td>2019-01-01 1:08:12</td><td>3914</td><td>2,333.00</td><td> 35</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave            </span></td><td> 39</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Adams St         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>      </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>21742464</td><td>2019-01-01 0:29:21</td><td>2019-01-01 0:45:21</td><td> 140</td><td><span style=white-space:pre-wrap>960     </span></td><td> 47</td><td><span style=white-space:pre-wrap>State St &amp; Kinzie St               </span></td><td>111</td><td><span style=white-space:pre-wrap>Sedgwick St &amp; Huron St        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1957</td></tr>\n",
       "\t<tr><td>21742465</td><td>2019-01-01 0:29:28</td><td>2019-01-01 1:07:49</td><td>3355</td><td>2,301.00</td><td> 35</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave            </span></td><td> 39</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Adams St         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>      </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>21742466</td><td>2019-01-01 0:29:47</td><td>2019-01-01 0:49:15</td><td>5026</td><td>1,168.00</td><td> 85</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St              </span></td><td>329</td><td>Lake Shore Dr &amp; Diversey Pkwy </td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1959</td></tr>\n",
       "\t<tr><td>21742467</td><td>2019-01-01 0:30:48</td><td>2019-01-01 0:38:42</td><td>1998</td><td><span style=white-space:pre-wrap>474     </span></td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln              </span></td><td>313</td><td>Lakeview Ave &amp; Fullerton Pkwy </td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>21742468</td><td>2019-01-01 0:33:09</td><td>2019-01-01 0:50:25</td><td>2630</td><td>1,036.00</td><td> 13</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Diversey Pkwy         </span></td><td> 61</td><td><span style=white-space:pre-wrap>Wood St &amp; Milwaukee Ave       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1991</td></tr>\n",
       "\t<tr><td>21742469</td><td>2019-01-01 0:34:35</td><td>2019-01-01 0:38:25</td><td>3722</td><td><span style=white-space:pre-wrap>230     </span></td><td>520</td><td><span style=white-space:pre-wrap>Greenview Ave &amp; Jarvis Ave         </span></td><td>523</td><td><span style=white-space:pre-wrap>Eastlake Ter &amp; Rogers Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1961</td></tr>\n",
       "\t<tr><td>21742471</td><td>2019-01-01 0:38:11</td><td>2019-01-01 0:50:38</td><td>1166</td><td><span style=white-space:pre-wrap>747     </span></td><td>256</td><td><span style=white-space:pre-wrap>Broadway &amp; Sheridan Rd             </span></td><td>297</td><td><span style=white-space:pre-wrap>Paulina St &amp; Montrose Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1968</td></tr>\n",
       "\t<tr><td>21742472</td><td>2019-01-01 0:38:47</td><td>2019-01-01 0:50:38</td><td>1704</td><td><span style=white-space:pre-wrap>711     </span></td><td>256</td><td><span style=white-space:pre-wrap>Broadway &amp; Sheridan Rd             </span></td><td>297</td><td><span style=white-space:pre-wrap>Paulina St &amp; Montrose Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1964</td></tr>\n",
       "\t<tr><td>21742473</td><td>2019-01-01 0:40:16</td><td>2019-01-01 0:49:29</td><td>1476</td><td><span style=white-space:pre-wrap>553     </span></td><td>254</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Irving Park Rd    </span></td><td>465</td><td><span style=white-space:pre-wrap>Marine Dr &amp; Ainslie St        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>21742474</td><td>2019-01-01 0:41:46</td><td>2019-01-01 0:50:27</td><td>4614</td><td><span style=white-space:pre-wrap>521     </span></td><td> 66</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St               </span></td><td> 52</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Lake St        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>22178488</td><td>2019-03-31 22:51:02</td><td>2019-03-31 22:54:00</td><td>4602</td><td>178</td><td>460</td><td><span style=white-space:pre-wrap>Clark St &amp; Bryn Mawr Ave           </span></td><td>461</td><td><span style=white-space:pre-wrap>Broadway &amp; Ridge Ave                </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1986</td></tr>\n",
       "\t<tr><td>22178489</td><td>2019-03-31 22:54:00</td><td>2019-03-31 23:02:49</td><td>4151</td><td>529</td><td> 47</td><td><span style=white-space:pre-wrap>State St &amp; Kinzie St               </span></td><td> 26</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Illinois St            </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>22178490</td><td>2019-03-31 22:55:28</td><td>2019-03-31 23:02:10</td><td>3833</td><td>402</td><td>108</td><td><span style=white-space:pre-wrap>Halsted St &amp; Polk St               </span></td><td> 19</td><td><span style=white-space:pre-wrap>Loomis St &amp; Taylor St (*)           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>22178491</td><td>2019-03-31 22:58:00</td><td>2019-03-31 23:06:12</td><td>1374</td><td>492</td><td>108</td><td><span style=white-space:pre-wrap>Halsted St &amp; Polk St               </span></td><td> 41</td><td><span style=white-space:pre-wrap>Federal St &amp; Polk St                </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>22178492</td><td>2019-03-31 22:59:35</td><td>2019-03-31 23:01:38</td><td>3723</td><td>123</td><td> 66</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St               </span></td><td> 77</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St             </span></td><td>Subscriber</td><td>Female</td><td>1985</td></tr>\n",
       "\t<tr><td>22178493</td><td>2019-03-31 23:00:17</td><td>2019-03-31 23:10:52</td><td>2331</td><td>635</td><td> 51</td><td><span style=white-space:pre-wrap>Clark St &amp; Randolph St             </span></td><td>364</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Oak St                </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1972</td></tr>\n",
       "\t<tr><td>22178494</td><td>2019-03-31 23:00:28</td><td>2019-03-31 23:09:20</td><td>1312</td><td>532</td><td> 98</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Washington St         </span></td><td> 22</td><td><span style=white-space:pre-wrap>May St &amp; Taylor St                  </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>22178495</td><td>2019-03-31 23:00:43</td><td>2019-03-31 23:13:04</td><td>6205</td><td>741</td><td>301</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St             </span></td><td>115</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Wellington Ave      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1988</td></tr>\n",
       "\t<tr><td>22178502</td><td>2019-03-31 23:03:01</td><td>2019-03-31 23:15:20</td><td>3360</td><td>739</td><td>295</td><td><span style=white-space:pre-wrap>Broadway &amp; Argyle St               </span></td><td>451</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Loyola Ave            </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>22178503</td><td>2019-03-31 23:09:40</td><td>2019-03-31 23:19:30</td><td>6416</td><td>590</td><td>114</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Waveland Ave       </span></td><td>330</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Addison St            </span></td><td>Subscriber</td><td>Female</td><td>1985</td></tr>\n",
       "\t<tr><td>22178504</td><td>2019-03-31 23:10:19</td><td>2019-03-31 23:21:33</td><td>3767</td><td>674</td><td> 50</td><td><span style=white-space:pre-wrap>Clark St &amp; Ida B Wells Dr          </span></td><td> 50</td><td><span style=white-space:pre-wrap>Clark St &amp; Ida B Wells Dr           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1957</td></tr>\n",
       "\t<tr><td>22178505</td><td>2019-03-31 23:11:15</td><td>2019-03-31 23:20:27</td><td>1646</td><td>552</td><td>111</td><td><span style=white-space:pre-wrap>Sedgwick St &amp; Huron St             </span></td><td>301</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>22178506</td><td>2019-03-31 23:15:53</td><td>2019-03-31 23:20:27</td><td> 632</td><td>274</td><td> 16</td><td><span style=white-space:pre-wrap>Paulina Ave &amp; North Ave            </span></td><td>158</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Wabansia Ave        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1991</td></tr>\n",
       "\t<tr><td>22178507</td><td>2019-03-31 23:16:57</td><td>2019-03-31 23:22:42</td><td>1537</td><td>345</td><td>173</td><td>Mies van der Rohe Way &amp; Chicago Ave</td><td>172</td><td><span style=white-space:pre-wrap>Rush St &amp; Cedar St                  </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1980</td></tr>\n",
       "\t<tr><td>22178508</td><td>2019-03-31 23:18:42</td><td>2019-03-31 23:30:40</td><td>1952</td><td>718</td><td>301</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St             </span></td><td>210</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Division St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1988</td></tr>\n",
       "\t<tr><td>22178509</td><td>2019-03-31 23:20:36</td><td>2019-03-31 23:28:12</td><td>5331</td><td>456</td><td>115</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Wellington Ave     </span></td><td>313</td><td><span style=white-space:pre-wrap>Lakeview Ave &amp; Fullerton Pkwy       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>22178510</td><td>2019-03-31 23:21:07</td><td>2019-03-31 23:25:12</td><td><span style=white-space:pre-wrap>  67</span></td><td>245</td><td>325</td><td><span style=white-space:pre-wrap>Clark St &amp; Winnemac Ave            </span></td><td>464</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Foster Ave              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1983</td></tr>\n",
       "\t<tr><td>22178515</td><td>2019-03-31 23:26:00</td><td>2019-03-31 23:37:24</td><td>2965</td><td>684</td><td>403</td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; 33rd St            </span></td><td>263</td><td><span style=white-space:pre-wrap>Rhodes Ave &amp; 32nd St                </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1984</td></tr>\n",
       "\t<tr><td>22178516</td><td>2019-03-31 23:31:30</td><td>2019-03-31 23:35:29</td><td>5747</td><td>239</td><td>309</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Armitage Ave          </span></td><td>219</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Cortland St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1970</td></tr>\n",
       "\t<tr><td>22178517</td><td>2019-03-31 23:32:54</td><td>2019-03-31 23:37:50</td><td>2846</td><td>296</td><td>181</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Illinois St           </span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave            </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>      </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>22178518</td><td>2019-03-31 23:33:02</td><td>2019-03-31 23:43:15</td><td>2772</td><td>613</td><td>210</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Division St          </span></td><td>210</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Division St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1972</td></tr>\n",
       "\t<tr><td>22178519</td><td>2019-03-31 23:33:14</td><td>2019-03-31 23:37:40</td><td>4304</td><td>266</td><td>181</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Illinois St           </span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave            </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>      </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>22178520</td><td>2019-03-31 23:34:08</td><td>2019-03-31 23:38:07</td><td> 667</td><td>239</td><td>199</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave             </span></td><td> 26</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Illinois St            </span></td><td>Subscriber</td><td>Female</td><td>1984</td></tr>\n",
       "\t<tr><td>22178521</td><td>2019-03-31 23:39:48</td><td>2019-03-31 23:41:41</td><td>4814</td><td>113</td><td>198</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St              </span></td><td>233</td><td><span style=white-space:pre-wrap>Sangamon St &amp; Washington Blvd (*)   </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1971</td></tr>\n",
       "\t<tr><td>22178522</td><td>2019-03-31 23:47:05</td><td>2019-03-31 23:51:35</td><td>3873</td><td>270</td><td> 69</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Pierce Ave             </span></td><td>183</td><td>Damen Ave &amp; Thomas St (Augusta Blvd)</td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1985</td></tr>\n",
       "\t<tr><td>22178524</td><td>2019-03-31 23:51:32</td><td>2019-04-01 0:04:09 </td><td>1501</td><td>757</td><td> 38</td><td><span style=white-space:pre-wrap>Clark St &amp; Lake St                 </span></td><td> 29</td><td><span style=white-space:pre-wrap>Noble St &amp; Milwaukee Ave            </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>22178525</td><td>2019-03-31 23:52:37</td><td>2019-03-31 23:58:09</td><td>3270</td><td>332</td><td>129</td><td><span style=white-space:pre-wrap>Blue Island Ave &amp; 18th St          </span></td><td>202</td><td><span style=white-space:pre-wrap>Halsted St &amp; 18th St                </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>22178526</td><td>2019-03-31 23:52:38</td><td>2019-04-01 0:06:44 </td><td>3584</td><td>846</td><td>283</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd          </span></td><td>273</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 18th St              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1984</td></tr>\n",
       "\t<tr><td>22178527</td><td>2019-03-31 23:53:08</td><td>2019-03-31 23:56:06</td><td>4384</td><td>178</td><td>321</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; 9th St                </span></td><td> 39</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Adams St               </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1969</td></tr>\n",
       "\t<tr><td>22178528</td><td>2019-03-31 23:53:48</td><td>2019-04-01 0:01:16 </td><td>5589</td><td>448</td><td>248</td><td><span style=white-space:pre-wrap>Woodlawn Ave &amp; 55th St             </span></td><td>247</td><td><span style=white-space:pre-wrap>Shore Dr &amp; 55th St                  </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1998</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 365069 × 12\n",
       "\\begin{tabular}{llllllllllll}\n",
       " ride\\_id & started\\_at & ended\\_at & rideable\\_type & tripduration & start\\_station\\_id & start\\_station\\_name & end\\_station\\_id & end\\_station\\_name & member\\_casual & gender & birthyear\\\\\n",
       " <int> & <chr> & <chr> & <int> & <chr> & <int> & <chr> & <int> & <chr> & <chr> & <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t 21742443 & 2019-01-01 0:04:37 & 2019-01-01 0:11:07 & 2167 & 390      & 199 & Wabash Ave \\& Grand Ave              &  84 & Milwaukee Ave \\& Grand Ave      & Subscriber & Male   & 1989\\\\\n",
       "\t 21742444 & 2019-01-01 0:08:13 & 2019-01-01 0:15:34 & 4386 & 441      &  44 & State St \\& Randolph St              & 624 & Dearborn St \\& Van Buren St (*) & Subscriber & Female & 1990\\\\\n",
       "\t 21742445 & 2019-01-01 0:13:23 & 2019-01-01 0:27:12 & 1524 & 829      &  15 & Racine Ave \\& 18th St                & 644 & Western Ave \\& Fillmore St (*)  & Subscriber & Female & 1994\\\\\n",
       "\t 21742446 & 2019-01-01 0:13:45 & 2019-01-01 0:43:28 &  252 & 1,783.00 & 123 & California Ave \\& Milwaukee Ave      & 176 & Clark St \\& Elm St              & Subscriber & Male   & 1993\\\\\n",
       "\t 21742447 & 2019-01-01 0:14:52 & 2019-01-01 0:20:56 & 1170 & 364      & 173 & Mies van der Rohe Way \\& Chicago Ave &  35 & Streeter Dr \\& Grand Ave        & Subscriber & Male   & 1994\\\\\n",
       "\t 21742448 & 2019-01-01 0:15:33 & 2019-01-01 0:19:09 & 2437 & 216      &  98 & LaSalle St \\& Washington St          &  49 & Dearborn St \\& Monroe St        & Subscriber & Female & 1983\\\\\n",
       "\t 21742449 & 2019-01-01 0:16:06 & 2019-01-01 0:19:03 & 2708 & 177      &  98 & LaSalle St \\& Washington St          &  49 & Dearborn St \\& Monroe St        & Subscriber & Male   & 1984\\\\\n",
       "\t 21742450 & 2019-01-01 0:18:41 & 2019-01-01 0:20:21 & 2796 & 100      & 211 & St. Clair St \\& Erie St              & 142 & McClurg Ct \\& Erie St           & Subscriber & Male   & 1990\\\\\n",
       "\t 21742451 & 2019-01-01 0:18:43 & 2019-01-01 0:47:30 & 6205 & 1,727.00 & 150 & Fort Dearborn Dr \\& 31st St          & 148 & State St \\& 33rd St             & Subscriber & Male   & 1995\\\\\n",
       "\t 21742452 & 2019-01-01 0:19:18 & 2019-01-01 0:24:54 & 3939 & 336      & 268 & Lake Shore Dr \\& North Blvd          & 141 & Clark St \\& Lincoln Ave         & Subscriber & Male   & 1996\\\\\n",
       "\t 21742453 & 2019-01-01 0:20:34 & 2019-01-01 0:35:20 & 6243 & 886      & 299 & Halsted St \\& Roscoe St              & 295 & Broadway \\& Argyle St           & Subscriber & Male   & 1994\\\\\n",
       "\t 21742454 & 2019-01-01 0:21:52 & 2019-01-01 0:32:45 & 6300 & 653      & 204 & Prairie Ave \\& Garfield Blvd         & 420 & Ellis Ave \\& 55th St            & Subscriber & Female & 1994\\\\\n",
       "\t 21742455 & 2019-01-01 0:23:04 & 2019-01-01 0:33:05 & 3029 & 601      &  90 & Millennium Park                     & 255 & Indiana Ave \\& Roosevelt Rd     & Subscriber & Male   & 1986\\\\\n",
       "\t 21742456 & 2019-01-01 0:23:43 & 2019-01-01 0:33:05 &   84 & 562      &  90 & Millennium Park                     & 255 & Indiana Ave \\& Roosevelt Rd     & Customer   & Female & 1990\\\\\n",
       "\t 21742457 & 2019-01-01 0:23:54 & 2019-01-01 0:39:00 & 5019 & 906      & 289 & Wells St \\& Concord Ln               & 324 & Stockton Dr \\& Wrightwood Ave   & Subscriber & Female & 1989\\\\\n",
       "\t 21742458 & 2019-01-01 0:24:08 & 2019-01-01 0:39:00 & 5526 & 892      & 289 & Wells St \\& Concord Ln               & 324 & Stockton Dr \\& Wrightwood Ave   & Subscriber & Female & 1989\\\\\n",
       "\t 21742459 & 2019-01-01 0:24:13 & 2019-01-01 0:31:00 & 3373 & 407      & 152 & Lincoln Ave \\& Diversey Pkwy         & 166 & Ashland Ave \\& Wrightwood Ave   & Subscriber & Male   & 1967\\\\\n",
       "\t 21742460 & 2019-01-01 0:24:27 & 2019-01-01 0:47:03 & 5777 & 1,356.00 & 268 & Lake Shore Dr \\& North Blvd          & 319 & Greenview Ave \\& Diversey Pkwy  & Customer   & Female & 1990\\\\\n",
       "\t 21742461 & 2019-01-01 0:25:28 & 2019-01-01 0:27:10 & 3940 & 102      &  35 & Streeter Dr \\& Grand Ave             &  35 & Streeter Dr \\& Grand Ave        & Subscriber & Male   & 1985\\\\\n",
       "\t 21742463 & 2019-01-01 0:29:19 & 2019-01-01 1:08:12 & 3914 & 2,333.00 &  35 & Streeter Dr \\& Grand Ave             &  39 & Wabash Ave \\& Adams St          & Customer   &        &   NA\\\\\n",
       "\t 21742464 & 2019-01-01 0:29:21 & 2019-01-01 0:45:21 &  140 & 960      &  47 & State St \\& Kinzie St                & 111 & Sedgwick St \\& Huron St         & Subscriber & Male   & 1957\\\\\n",
       "\t 21742465 & 2019-01-01 0:29:28 & 2019-01-01 1:07:49 & 3355 & 2,301.00 &  35 & Streeter Dr \\& Grand Ave             &  39 & Wabash Ave \\& Adams St          & Customer   &        &   NA\\\\\n",
       "\t 21742466 & 2019-01-01 0:29:47 & 2019-01-01 0:49:15 & 5026 & 1,168.00 &  85 & Michigan Ave \\& Oak St               & 329 & Lake Shore Dr \\& Diversey Pkwy  & Subscriber & Male   & 1959\\\\\n",
       "\t 21742467 & 2019-01-01 0:30:48 & 2019-01-01 0:38:42 & 1998 & 474      & 289 & Wells St \\& Concord Ln               & 313 & Lakeview Ave \\& Fullerton Pkwy  & Subscriber & Male   & 1994\\\\\n",
       "\t 21742468 & 2019-01-01 0:33:09 & 2019-01-01 0:50:25 & 2630 & 1,036.00 &  13 & Wilton Ave \\& Diversey Pkwy          &  61 & Wood St \\& Milwaukee Ave        & Subscriber & Male   & 1991\\\\\n",
       "\t 21742469 & 2019-01-01 0:34:35 & 2019-01-01 0:38:25 & 3722 & 230      & 520 & Greenview Ave \\& Jarvis Ave          & 523 & Eastlake Ter \\& Rogers Ave      & Subscriber & Male   & 1961\\\\\n",
       "\t 21742471 & 2019-01-01 0:38:11 & 2019-01-01 0:50:38 & 1166 & 747      & 256 & Broadway \\& Sheridan Rd              & 297 & Paulina St \\& Montrose Ave      & Subscriber & Male   & 1968\\\\\n",
       "\t 21742472 & 2019-01-01 0:38:47 & 2019-01-01 0:50:38 & 1704 & 711      & 256 & Broadway \\& Sheridan Rd              & 297 & Paulina St \\& Montrose Ave      & Subscriber & Male   & 1964\\\\\n",
       "\t 21742473 & 2019-01-01 0:40:16 & 2019-01-01 0:49:29 & 1476 & 553      & 254 & Pine Grove Ave \\& Irving Park Rd     & 465 & Marine Dr \\& Ainslie St         & Subscriber & Male   & 1990\\\\\n",
       "\t 21742474 & 2019-01-01 0:41:46 & 2019-01-01 0:50:27 & 4614 & 521      &  66 & Clinton St \\& Lake St                &  52 & Michigan Ave \\& Lake St         & Subscriber & Male   & 1994\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t 22178488 & 2019-03-31 22:51:02 & 2019-03-31 22:54:00 & 4602 & 178 & 460 & Clark St \\& Bryn Mawr Ave            & 461 & Broadway \\& Ridge Ave                 & Subscriber & Male   & 1986\\\\\n",
       "\t 22178489 & 2019-03-31 22:54:00 & 2019-03-31 23:02:49 & 4151 & 529 &  47 & State St \\& Kinzie St                &  26 & McClurg Ct \\& Illinois St             & Subscriber & Male   & 1990\\\\\n",
       "\t 22178490 & 2019-03-31 22:55:28 & 2019-03-31 23:02:10 & 3833 & 402 & 108 & Halsted St \\& Polk St                &  19 & Loomis St \\& Taylor St (*)            & Subscriber & Male   & 1992\\\\\n",
       "\t 22178491 & 2019-03-31 22:58:00 & 2019-03-31 23:06:12 & 1374 & 492 & 108 & Halsted St \\& Polk St                &  41 & Federal St \\& Polk St                 & Subscriber & Male   & 1992\\\\\n",
       "\t 22178492 & 2019-03-31 22:59:35 & 2019-03-31 23:01:38 & 3723 & 123 &  66 & Clinton St \\& Lake St                &  77 & Clinton St \\& Madison St              & Subscriber & Female & 1985\\\\\n",
       "\t 22178493 & 2019-03-31 23:00:17 & 2019-03-31 23:10:52 & 2331 & 635 &  51 & Clark St \\& Randolph St              & 364 & Larrabee St \\& Oak St                 & Subscriber & Male   & 1972\\\\\n",
       "\t 22178494 & 2019-03-31 23:00:28 & 2019-03-31 23:09:20 & 1312 & 532 &  98 & LaSalle St \\& Washington St          &  22 & May St \\& Taylor St                   & Customer   & Male   & 1993\\\\\n",
       "\t 22178495 & 2019-03-31 23:00:43 & 2019-03-31 23:13:04 & 6205 & 741 & 301 & Clark St \\& Schiller St              & 115 & Sheffield Ave \\& Wellington Ave       & Subscriber & Male   & 1988\\\\\n",
       "\t 22178502 & 2019-03-31 23:03:01 & 2019-03-31 23:15:20 & 3360 & 739 & 295 & Broadway \\& Argyle St                & 451 & Sheridan Rd \\& Loyola Ave             & Subscriber & Male   & 1992\\\\\n",
       "\t 22178503 & 2019-03-31 23:09:40 & 2019-03-31 23:19:30 & 6416 & 590 & 114 & Sheffield Ave \\& Waveland Ave        & 330 & Lincoln Ave \\& Addison St             & Subscriber & Female & 1985\\\\\n",
       "\t 22178504 & 2019-03-31 23:10:19 & 2019-03-31 23:21:33 & 3767 & 674 &  50 & Clark St \\& Ida B Wells Dr           &  50 & Clark St \\& Ida B Wells Dr            & Subscriber & Male   & 1957\\\\\n",
       "\t 22178505 & 2019-03-31 23:11:15 & 2019-03-31 23:20:27 & 1646 & 552 & 111 & Sedgwick St \\& Huron St              & 301 & Clark St \\& Schiller St               & Subscriber & Male   & 1994\\\\\n",
       "\t 22178506 & 2019-03-31 23:15:53 & 2019-03-31 23:20:27 &  632 & 274 &  16 & Paulina Ave \\& North Ave             & 158 & Milwaukee Ave \\& Wabansia Ave         & Subscriber & Male   & 1991\\\\\n",
       "\t 22178507 & 2019-03-31 23:16:57 & 2019-03-31 23:22:42 & 1537 & 345 & 173 & Mies van der Rohe Way \\& Chicago Ave & 172 & Rush St \\& Cedar St                   & Subscriber & Male   & 1980\\\\\n",
       "\t 22178508 & 2019-03-31 23:18:42 & 2019-03-31 23:30:40 & 1952 & 718 & 301 & Clark St \\& Schiller St              & 210 & Ashland Ave \\& Division St            & Subscriber & Male   & 1988\\\\\n",
       "\t 22178509 & 2019-03-31 23:20:36 & 2019-03-31 23:28:12 & 5331 & 456 & 115 & Sheffield Ave \\& Wellington Ave      & 313 & Lakeview Ave \\& Fullerton Pkwy        & Subscriber & Male   & 1987\\\\\n",
       "\t 22178510 & 2019-03-31 23:21:07 & 2019-03-31 23:25:12 &   67 & 245 & 325 & Clark St \\& Winnemac Ave             & 464 & Damen Ave \\& Foster Ave               & Subscriber & Male   & 1983\\\\\n",
       "\t 22178515 & 2019-03-31 23:26:00 & 2019-03-31 23:37:24 & 2965 & 684 & 403 & Wentworth Ave \\& 33rd St             & 263 & Rhodes Ave \\& 32nd St                 & Subscriber & Male   & 1984\\\\\n",
       "\t 22178516 & 2019-03-31 23:31:30 & 2019-03-31 23:35:29 & 5747 & 239 & 309 & Leavitt St \\& Armitage Ave           & 219 & Damen Ave \\& Cortland St              & Subscriber & Male   & 1970\\\\\n",
       "\t 22178517 & 2019-03-31 23:32:54 & 2019-03-31 23:37:50 & 2846 & 296 & 181 & LaSalle St \\& Illinois St            &  24 & Fairbanks Ct \\& Grand Ave             & Customer   &        &   NA\\\\\n",
       "\t 22178518 & 2019-03-31 23:33:02 & 2019-03-31 23:43:15 & 2772 & 613 & 210 & Ashland Ave \\& Division St           & 210 & Ashland Ave \\& Division St            & Subscriber & Male   & 1972\\\\\n",
       "\t 22178519 & 2019-03-31 23:33:14 & 2019-03-31 23:37:40 & 4304 & 266 & 181 & LaSalle St \\& Illinois St            &  24 & Fairbanks Ct \\& Grand Ave             & Customer   &        &   NA\\\\\n",
       "\t 22178520 & 2019-03-31 23:34:08 & 2019-03-31 23:38:07 &  667 & 239 & 199 & Wabash Ave \\& Grand Ave              &  26 & McClurg Ct \\& Illinois St             & Subscriber & Female & 1984\\\\\n",
       "\t 22178521 & 2019-03-31 23:39:48 & 2019-03-31 23:41:41 & 4814 & 113 & 198 & Green St \\& Madison St               & 233 & Sangamon St \\& Washington Blvd (*)    & Subscriber & Male   & 1971\\\\\n",
       "\t 22178522 & 2019-03-31 23:47:05 & 2019-03-31 23:51:35 & 3873 & 270 &  69 & Damen Ave \\& Pierce Ave              & 183 & Damen Ave \\& Thomas St (Augusta Blvd) & Subscriber & Male   & 1985\\\\\n",
       "\t 22178524 & 2019-03-31 23:51:32 & 2019-04-01 0:04:09  & 1501 & 757 &  38 & Clark St \\& Lake St                  &  29 & Noble St \\& Milwaukee Ave             & Subscriber & Male   & 1993\\\\\n",
       "\t 22178525 & 2019-03-31 23:52:37 & 2019-03-31 23:58:09 & 3270 & 332 & 129 & Blue Island Ave \\& 18th St           & 202 & Halsted St \\& 18th St                 & Subscriber & Male   & 1992\\\\\n",
       "\t 22178526 & 2019-03-31 23:52:38 & 2019-04-01 0:06:44  & 3584 & 846 & 283 & LaSalle St \\& Jackson Blvd           & 273 & Michigan Ave \\& 18th St               & Subscriber & Male   & 1984\\\\\n",
       "\t 22178527 & 2019-03-31 23:53:08 & 2019-03-31 23:56:06 & 4384 & 178 & 321 & Wabash Ave \\& 9th St                 &  39 & Wabash Ave \\& Adams St                & Subscriber & Male   & 1969\\\\\n",
       "\t 22178528 & 2019-03-31 23:53:48 & 2019-04-01 0:01:16  & 5589 & 448 & 248 & Woodlawn Ave \\& 55th St              & 247 & Shore Dr \\& 55th St                   & Subscriber & Male   & 1998\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 365069 × 12\n",
       "\n",
       "| ride_id &lt;int&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | rideable_type &lt;int&gt; | tripduration &lt;chr&gt; | start_station_id &lt;int&gt; | start_station_name &lt;chr&gt; | end_station_id &lt;int&gt; | end_station_name &lt;chr&gt; | member_casual &lt;chr&gt; | gender &lt;chr&gt; | birthyear &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 21742443 | 2019-01-01 0:04:37 | 2019-01-01 0:11:07 | 2167 | 390      | 199 | Wabash Ave &amp; Grand Ave              |  84 | Milwaukee Ave &amp; Grand Ave      | Subscriber | Male   | 1989 |\n",
       "| 21742444 | 2019-01-01 0:08:13 | 2019-01-01 0:15:34 | 4386 | 441      |  44 | State St &amp; Randolph St              | 624 | Dearborn St &amp; Van Buren St (*) | Subscriber | Female | 1990 |\n",
       "| 21742445 | 2019-01-01 0:13:23 | 2019-01-01 0:27:12 | 1524 | 829      |  15 | Racine Ave &amp; 18th St                | 644 | Western Ave &amp; Fillmore St (*)  | Subscriber | Female | 1994 |\n",
       "| 21742446 | 2019-01-01 0:13:45 | 2019-01-01 0:43:28 |  252 | 1,783.00 | 123 | California Ave &amp; Milwaukee Ave      | 176 | Clark St &amp; Elm St              | Subscriber | Male   | 1993 |\n",
       "| 21742447 | 2019-01-01 0:14:52 | 2019-01-01 0:20:56 | 1170 | 364      | 173 | Mies van der Rohe Way &amp; Chicago Ave |  35 | Streeter Dr &amp; Grand Ave        | Subscriber | Male   | 1994 |\n",
       "| 21742448 | 2019-01-01 0:15:33 | 2019-01-01 0:19:09 | 2437 | 216      |  98 | LaSalle St &amp; Washington St          |  49 | Dearborn St &amp; Monroe St        | Subscriber | Female | 1983 |\n",
       "| 21742449 | 2019-01-01 0:16:06 | 2019-01-01 0:19:03 | 2708 | 177      |  98 | LaSalle St &amp; Washington St          |  49 | Dearborn St &amp; Monroe St        | Subscriber | Male   | 1984 |\n",
       "| 21742450 | 2019-01-01 0:18:41 | 2019-01-01 0:20:21 | 2796 | 100      | 211 | St. Clair St &amp; Erie St              | 142 | McClurg Ct &amp; Erie St           | Subscriber | Male   | 1990 |\n",
       "| 21742451 | 2019-01-01 0:18:43 | 2019-01-01 0:47:30 | 6205 | 1,727.00 | 150 | Fort Dearborn Dr &amp; 31st St          | 148 | State St &amp; 33rd St             | Subscriber | Male   | 1995 |\n",
       "| 21742452 | 2019-01-01 0:19:18 | 2019-01-01 0:24:54 | 3939 | 336      | 268 | Lake Shore Dr &amp; North Blvd          | 141 | Clark St &amp; Lincoln Ave         | Subscriber | Male   | 1996 |\n",
       "| 21742453 | 2019-01-01 0:20:34 | 2019-01-01 0:35:20 | 6243 | 886      | 299 | Halsted St &amp; Roscoe St              | 295 | Broadway &amp; Argyle St           | Subscriber | Male   | 1994 |\n",
       "| 21742454 | 2019-01-01 0:21:52 | 2019-01-01 0:32:45 | 6300 | 653      | 204 | Prairie Ave &amp; Garfield Blvd         | 420 | Ellis Ave &amp; 55th St            | Subscriber | Female | 1994 |\n",
       "| 21742455 | 2019-01-01 0:23:04 | 2019-01-01 0:33:05 | 3029 | 601      |  90 | Millennium Park                     | 255 | Indiana Ave &amp; Roosevelt Rd     | Subscriber | Male   | 1986 |\n",
       "| 21742456 | 2019-01-01 0:23:43 | 2019-01-01 0:33:05 |   84 | 562      |  90 | Millennium Park                     | 255 | Indiana Ave &amp; Roosevelt Rd     | Customer   | Female | 1990 |\n",
       "| 21742457 | 2019-01-01 0:23:54 | 2019-01-01 0:39:00 | 5019 | 906      | 289 | Wells St &amp; Concord Ln               | 324 | Stockton Dr &amp; Wrightwood Ave   | Subscriber | Female | 1989 |\n",
       "| 21742458 | 2019-01-01 0:24:08 | 2019-01-01 0:39:00 | 5526 | 892      | 289 | Wells St &amp; Concord Ln               | 324 | Stockton Dr &amp; Wrightwood Ave   | Subscriber | Female | 1989 |\n",
       "| 21742459 | 2019-01-01 0:24:13 | 2019-01-01 0:31:00 | 3373 | 407      | 152 | Lincoln Ave &amp; Diversey Pkwy         | 166 | Ashland Ave &amp; Wrightwood Ave   | Subscriber | Male   | 1967 |\n",
       "| 21742460 | 2019-01-01 0:24:27 | 2019-01-01 0:47:03 | 5777 | 1,356.00 | 268 | Lake Shore Dr &amp; North Blvd          | 319 | Greenview Ave &amp; Diversey Pkwy  | Customer   | Female | 1990 |\n",
       "| 21742461 | 2019-01-01 0:25:28 | 2019-01-01 0:27:10 | 3940 | 102      |  35 | Streeter Dr &amp; Grand Ave             |  35 | Streeter Dr &amp; Grand Ave        | Subscriber | Male   | 1985 |\n",
       "| 21742463 | 2019-01-01 0:29:19 | 2019-01-01 1:08:12 | 3914 | 2,333.00 |  35 | Streeter Dr &amp; Grand Ave             |  39 | Wabash Ave &amp; Adams St          | Customer   | <!----> |   NA |\n",
       "| 21742464 | 2019-01-01 0:29:21 | 2019-01-01 0:45:21 |  140 | 960      |  47 | State St &amp; Kinzie St                | 111 | Sedgwick St &amp; Huron St         | Subscriber | Male   | 1957 |\n",
       "| 21742465 | 2019-01-01 0:29:28 | 2019-01-01 1:07:49 | 3355 | 2,301.00 |  35 | Streeter Dr &amp; Grand Ave             |  39 | Wabash Ave &amp; Adams St          | Customer   | <!----> |   NA |\n",
       "| 21742466 | 2019-01-01 0:29:47 | 2019-01-01 0:49:15 | 5026 | 1,168.00 |  85 | Michigan Ave &amp; Oak St               | 329 | Lake Shore Dr &amp; Diversey Pkwy  | Subscriber | Male   | 1959 |\n",
       "| 21742467 | 2019-01-01 0:30:48 | 2019-01-01 0:38:42 | 1998 | 474      | 289 | Wells St &amp; Concord Ln               | 313 | Lakeview Ave &amp; Fullerton Pkwy  | Subscriber | Male   | 1994 |\n",
       "| 21742468 | 2019-01-01 0:33:09 | 2019-01-01 0:50:25 | 2630 | 1,036.00 |  13 | Wilton Ave &amp; Diversey Pkwy          |  61 | Wood St &amp; Milwaukee Ave        | Subscriber | Male   | 1991 |\n",
       "| 21742469 | 2019-01-01 0:34:35 | 2019-01-01 0:38:25 | 3722 | 230      | 520 | Greenview Ave &amp; Jarvis Ave          | 523 | Eastlake Ter &amp; Rogers Ave      | Subscriber | Male   | 1961 |\n",
       "| 21742471 | 2019-01-01 0:38:11 | 2019-01-01 0:50:38 | 1166 | 747      | 256 | Broadway &amp; Sheridan Rd              | 297 | Paulina St &amp; Montrose Ave      | Subscriber | Male   | 1968 |\n",
       "| 21742472 | 2019-01-01 0:38:47 | 2019-01-01 0:50:38 | 1704 | 711      | 256 | Broadway &amp; Sheridan Rd              | 297 | Paulina St &amp; Montrose Ave      | Subscriber | Male   | 1964 |\n",
       "| 21742473 | 2019-01-01 0:40:16 | 2019-01-01 0:49:29 | 1476 | 553      | 254 | Pine Grove Ave &amp; Irving Park Rd     | 465 | Marine Dr &amp; Ainslie St         | Subscriber | Male   | 1990 |\n",
       "| 21742474 | 2019-01-01 0:41:46 | 2019-01-01 0:50:27 | 4614 | 521      |  66 | Clinton St &amp; Lake St                |  52 | Michigan Ave &amp; Lake St         | Subscriber | Male   | 1994 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 22178488 | 2019-03-31 22:51:02 | 2019-03-31 22:54:00 | 4602 | 178 | 460 | Clark St &amp; Bryn Mawr Ave            | 461 | Broadway &amp; Ridge Ave                 | Subscriber | Male   | 1986 |\n",
       "| 22178489 | 2019-03-31 22:54:00 | 2019-03-31 23:02:49 | 4151 | 529 |  47 | State St &amp; Kinzie St                |  26 | McClurg Ct &amp; Illinois St             | Subscriber | Male   | 1990 |\n",
       "| 22178490 | 2019-03-31 22:55:28 | 2019-03-31 23:02:10 | 3833 | 402 | 108 | Halsted St &amp; Polk St                |  19 | Loomis St &amp; Taylor St (*)            | Subscriber | Male   | 1992 |\n",
       "| 22178491 | 2019-03-31 22:58:00 | 2019-03-31 23:06:12 | 1374 | 492 | 108 | Halsted St &amp; Polk St                |  41 | Federal St &amp; Polk St                 | Subscriber | Male   | 1992 |\n",
       "| 22178492 | 2019-03-31 22:59:35 | 2019-03-31 23:01:38 | 3723 | 123 |  66 | Clinton St &amp; Lake St                |  77 | Clinton St &amp; Madison St              | Subscriber | Female | 1985 |\n",
       "| 22178493 | 2019-03-31 23:00:17 | 2019-03-31 23:10:52 | 2331 | 635 |  51 | Clark St &amp; Randolph St              | 364 | Larrabee St &amp; Oak St                 | Subscriber | Male   | 1972 |\n",
       "| 22178494 | 2019-03-31 23:00:28 | 2019-03-31 23:09:20 | 1312 | 532 |  98 | LaSalle St &amp; Washington St          |  22 | May St &amp; Taylor St                   | Customer   | Male   | 1993 |\n",
       "| 22178495 | 2019-03-31 23:00:43 | 2019-03-31 23:13:04 | 6205 | 741 | 301 | Clark St &amp; Schiller St              | 115 | Sheffield Ave &amp; Wellington Ave       | Subscriber | Male   | 1988 |\n",
       "| 22178502 | 2019-03-31 23:03:01 | 2019-03-31 23:15:20 | 3360 | 739 | 295 | Broadway &amp; Argyle St                | 451 | Sheridan Rd &amp; Loyola Ave             | Subscriber | Male   | 1992 |\n",
       "| 22178503 | 2019-03-31 23:09:40 | 2019-03-31 23:19:30 | 6416 | 590 | 114 | Sheffield Ave &amp; Waveland Ave        | 330 | Lincoln Ave &amp; Addison St             | Subscriber | Female | 1985 |\n",
       "| 22178504 | 2019-03-31 23:10:19 | 2019-03-31 23:21:33 | 3767 | 674 |  50 | Clark St &amp; Ida B Wells Dr           |  50 | Clark St &amp; Ida B Wells Dr            | Subscriber | Male   | 1957 |\n",
       "| 22178505 | 2019-03-31 23:11:15 | 2019-03-31 23:20:27 | 1646 | 552 | 111 | Sedgwick St &amp; Huron St              | 301 | Clark St &amp; Schiller St               | Subscriber | Male   | 1994 |\n",
       "| 22178506 | 2019-03-31 23:15:53 | 2019-03-31 23:20:27 |  632 | 274 |  16 | Paulina Ave &amp; North Ave             | 158 | Milwaukee Ave &amp; Wabansia Ave         | Subscriber | Male   | 1991 |\n",
       "| 22178507 | 2019-03-31 23:16:57 | 2019-03-31 23:22:42 | 1537 | 345 | 173 | Mies van der Rohe Way &amp; Chicago Ave | 172 | Rush St &amp; Cedar St                   | Subscriber | Male   | 1980 |\n",
       "| 22178508 | 2019-03-31 23:18:42 | 2019-03-31 23:30:40 | 1952 | 718 | 301 | Clark St &amp; Schiller St              | 210 | Ashland Ave &amp; Division St            | Subscriber | Male   | 1988 |\n",
       "| 22178509 | 2019-03-31 23:20:36 | 2019-03-31 23:28:12 | 5331 | 456 | 115 | Sheffield Ave &amp; Wellington Ave      | 313 | Lakeview Ave &amp; Fullerton Pkwy        | Subscriber | Male   | 1987 |\n",
       "| 22178510 | 2019-03-31 23:21:07 | 2019-03-31 23:25:12 |   67 | 245 | 325 | Clark St &amp; Winnemac Ave             | 464 | Damen Ave &amp; Foster Ave               | Subscriber | Male   | 1983 |\n",
       "| 22178515 | 2019-03-31 23:26:00 | 2019-03-31 23:37:24 | 2965 | 684 | 403 | Wentworth Ave &amp; 33rd St             | 263 | Rhodes Ave &amp; 32nd St                 | Subscriber | Male   | 1984 |\n",
       "| 22178516 | 2019-03-31 23:31:30 | 2019-03-31 23:35:29 | 5747 | 239 | 309 | Leavitt St &amp; Armitage Ave           | 219 | Damen Ave &amp; Cortland St              | Subscriber | Male   | 1970 |\n",
       "| 22178517 | 2019-03-31 23:32:54 | 2019-03-31 23:37:50 | 2846 | 296 | 181 | LaSalle St &amp; Illinois St            |  24 | Fairbanks Ct &amp; Grand Ave             | Customer   | <!----> |   NA |\n",
       "| 22178518 | 2019-03-31 23:33:02 | 2019-03-31 23:43:15 | 2772 | 613 | 210 | Ashland Ave &amp; Division St           | 210 | Ashland Ave &amp; Division St            | Subscriber | Male   | 1972 |\n",
       "| 22178519 | 2019-03-31 23:33:14 | 2019-03-31 23:37:40 | 4304 | 266 | 181 | LaSalle St &amp; Illinois St            |  24 | Fairbanks Ct &amp; Grand Ave             | Customer   | <!----> |   NA |\n",
       "| 22178520 | 2019-03-31 23:34:08 | 2019-03-31 23:38:07 |  667 | 239 | 199 | Wabash Ave &amp; Grand Ave              |  26 | McClurg Ct &amp; Illinois St             | Subscriber | Female | 1984 |\n",
       "| 22178521 | 2019-03-31 23:39:48 | 2019-03-31 23:41:41 | 4814 | 113 | 198 | Green St &amp; Madison St               | 233 | Sangamon St &amp; Washington Blvd (*)    | Subscriber | Male   | 1971 |\n",
       "| 22178522 | 2019-03-31 23:47:05 | 2019-03-31 23:51:35 | 3873 | 270 |  69 | Damen Ave &amp; Pierce Ave              | 183 | Damen Ave &amp; Thomas St (Augusta Blvd) | Subscriber | Male   | 1985 |\n",
       "| 22178524 | 2019-03-31 23:51:32 | 2019-04-01 0:04:09  | 1501 | 757 |  38 | Clark St &amp; Lake St                  |  29 | Noble St &amp; Milwaukee Ave             | Subscriber | Male   | 1993 |\n",
       "| 22178525 | 2019-03-31 23:52:37 | 2019-03-31 23:58:09 | 3270 | 332 | 129 | Blue Island Ave &amp; 18th St           | 202 | Halsted St &amp; 18th St                 | Subscriber | Male   | 1992 |\n",
       "| 22178526 | 2019-03-31 23:52:38 | 2019-04-01 0:06:44  | 3584 | 846 | 283 | LaSalle St &amp; Jackson Blvd           | 273 | Michigan Ave &amp; 18th St               | Subscriber | Male   | 1984 |\n",
       "| 22178527 | 2019-03-31 23:53:08 | 2019-03-31 23:56:06 | 4384 | 178 | 321 | Wabash Ave &amp; 9th St                 |  39 | Wabash Ave &amp; Adams St                | Subscriber | Male   | 1969 |\n",
       "| 22178528 | 2019-03-31 23:53:48 | 2019-04-01 0:01:16  | 5589 | 448 | 248 | Woodlawn Ave &amp; 55th St              | 247 | Shore Dr &amp; 55th St                   | Subscriber | Male   | 1998 |\n",
       "\n"
      ],
      "text/plain": [
       "       ride_id  started_at          ended_at            rideable_type\n",
       "1      21742443 2019-01-01 0:04:37  2019-01-01 0:11:07  2167         \n",
       "2      21742444 2019-01-01 0:08:13  2019-01-01 0:15:34  4386         \n",
       "3      21742445 2019-01-01 0:13:23  2019-01-01 0:27:12  1524         \n",
       "4      21742446 2019-01-01 0:13:45  2019-01-01 0:43:28   252         \n",
       "5      21742447 2019-01-01 0:14:52  2019-01-01 0:20:56  1170         \n",
       "6      21742448 2019-01-01 0:15:33  2019-01-01 0:19:09  2437         \n",
       "7      21742449 2019-01-01 0:16:06  2019-01-01 0:19:03  2708         \n",
       "8      21742450 2019-01-01 0:18:41  2019-01-01 0:20:21  2796         \n",
       "9      21742451 2019-01-01 0:18:43  2019-01-01 0:47:30  6205         \n",
       "10     21742452 2019-01-01 0:19:18  2019-01-01 0:24:54  3939         \n",
       "11     21742453 2019-01-01 0:20:34  2019-01-01 0:35:20  6243         \n",
       "12     21742454 2019-01-01 0:21:52  2019-01-01 0:32:45  6300         \n",
       "13     21742455 2019-01-01 0:23:04  2019-01-01 0:33:05  3029         \n",
       "14     21742456 2019-01-01 0:23:43  2019-01-01 0:33:05    84         \n",
       "15     21742457 2019-01-01 0:23:54  2019-01-01 0:39:00  5019         \n",
       "16     21742458 2019-01-01 0:24:08  2019-01-01 0:39:00  5526         \n",
       "17     21742459 2019-01-01 0:24:13  2019-01-01 0:31:00  3373         \n",
       "18     21742460 2019-01-01 0:24:27  2019-01-01 0:47:03  5777         \n",
       "19     21742461 2019-01-01 0:25:28  2019-01-01 0:27:10  3940         \n",
       "20     21742463 2019-01-01 0:29:19  2019-01-01 1:08:12  3914         \n",
       "21     21742464 2019-01-01 0:29:21  2019-01-01 0:45:21   140         \n",
       "22     21742465 2019-01-01 0:29:28  2019-01-01 1:07:49  3355         \n",
       "23     21742466 2019-01-01 0:29:47  2019-01-01 0:49:15  5026         \n",
       "24     21742467 2019-01-01 0:30:48  2019-01-01 0:38:42  1998         \n",
       "25     21742468 2019-01-01 0:33:09  2019-01-01 0:50:25  2630         \n",
       "26     21742469 2019-01-01 0:34:35  2019-01-01 0:38:25  3722         \n",
       "27     21742471 2019-01-01 0:38:11  2019-01-01 0:50:38  1166         \n",
       "28     21742472 2019-01-01 0:38:47  2019-01-01 0:50:38  1704         \n",
       "29     21742473 2019-01-01 0:40:16  2019-01-01 0:49:29  1476         \n",
       "30     21742474 2019-01-01 0:41:46  2019-01-01 0:50:27  4614         \n",
       "⋮      ⋮        ⋮                   ⋮                   ⋮            \n",
       "365040 22178488 2019-03-31 22:51:02 2019-03-31 22:54:00 4602         \n",
       "365041 22178489 2019-03-31 22:54:00 2019-03-31 23:02:49 4151         \n",
       "365042 22178490 2019-03-31 22:55:28 2019-03-31 23:02:10 3833         \n",
       "365043 22178491 2019-03-31 22:58:00 2019-03-31 23:06:12 1374         \n",
       "365044 22178492 2019-03-31 22:59:35 2019-03-31 23:01:38 3723         \n",
       "365045 22178493 2019-03-31 23:00:17 2019-03-31 23:10:52 2331         \n",
       "365046 22178494 2019-03-31 23:00:28 2019-03-31 23:09:20 1312         \n",
       "365047 22178495 2019-03-31 23:00:43 2019-03-31 23:13:04 6205         \n",
       "365048 22178502 2019-03-31 23:03:01 2019-03-31 23:15:20 3360         \n",
       "365049 22178503 2019-03-31 23:09:40 2019-03-31 23:19:30 6416         \n",
       "365050 22178504 2019-03-31 23:10:19 2019-03-31 23:21:33 3767         \n",
       "365051 22178505 2019-03-31 23:11:15 2019-03-31 23:20:27 1646         \n",
       "365052 22178506 2019-03-31 23:15:53 2019-03-31 23:20:27  632         \n",
       "365053 22178507 2019-03-31 23:16:57 2019-03-31 23:22:42 1537         \n",
       "365054 22178508 2019-03-31 23:18:42 2019-03-31 23:30:40 1952         \n",
       "365055 22178509 2019-03-31 23:20:36 2019-03-31 23:28:12 5331         \n",
       "365056 22178510 2019-03-31 23:21:07 2019-03-31 23:25:12   67         \n",
       "365057 22178515 2019-03-31 23:26:00 2019-03-31 23:37:24 2965         \n",
       "365058 22178516 2019-03-31 23:31:30 2019-03-31 23:35:29 5747         \n",
       "365059 22178517 2019-03-31 23:32:54 2019-03-31 23:37:50 2846         \n",
       "365060 22178518 2019-03-31 23:33:02 2019-03-31 23:43:15 2772         \n",
       "365061 22178519 2019-03-31 23:33:14 2019-03-31 23:37:40 4304         \n",
       "365062 22178520 2019-03-31 23:34:08 2019-03-31 23:38:07  667         \n",
       "365063 22178521 2019-03-31 23:39:48 2019-03-31 23:41:41 4814         \n",
       "365064 22178522 2019-03-31 23:47:05 2019-03-31 23:51:35 3873         \n",
       "365065 22178524 2019-03-31 23:51:32 2019-04-01 0:04:09  1501         \n",
       "365066 22178525 2019-03-31 23:52:37 2019-03-31 23:58:09 3270         \n",
       "365067 22178526 2019-03-31 23:52:38 2019-04-01 0:06:44  3584         \n",
       "365068 22178527 2019-03-31 23:53:08 2019-03-31 23:56:06 4384         \n",
       "365069 22178528 2019-03-31 23:53:48 2019-04-01 0:01:16  5589         \n",
       "       tripduration start_station_id start_station_name                 \n",
       "1      390          199              Wabash Ave & Grand Ave             \n",
       "2      441           44              State St & Randolph St             \n",
       "3      829           15              Racine Ave & 18th St               \n",
       "4      1,783.00     123              California Ave & Milwaukee Ave     \n",
       "5      364          173              Mies van der Rohe Way & Chicago Ave\n",
       "6      216           98              LaSalle St & Washington St         \n",
       "7      177           98              LaSalle St & Washington St         \n",
       "8      100          211              St. Clair St & Erie St             \n",
       "9      1,727.00     150              Fort Dearborn Dr & 31st St         \n",
       "10     336          268              Lake Shore Dr & North Blvd         \n",
       "11     886          299              Halsted St & Roscoe St             \n",
       "12     653          204              Prairie Ave & Garfield Blvd        \n",
       "13     601           90              Millennium Park                    \n",
       "14     562           90              Millennium Park                    \n",
       "15     906          289              Wells St & Concord Ln              \n",
       "16     892          289              Wells St & Concord Ln              \n",
       "17     407          152              Lincoln Ave & Diversey Pkwy        \n",
       "18     1,356.00     268              Lake Shore Dr & North Blvd         \n",
       "19     102           35              Streeter Dr & Grand Ave            \n",
       "20     2,333.00      35              Streeter Dr & Grand Ave            \n",
       "21     960           47              State St & Kinzie St               \n",
       "22     2,301.00      35              Streeter Dr & Grand Ave            \n",
       "23     1,168.00      85              Michigan Ave & Oak St              \n",
       "24     474          289              Wells St & Concord Ln              \n",
       "25     1,036.00      13              Wilton Ave & Diversey Pkwy         \n",
       "26     230          520              Greenview Ave & Jarvis Ave         \n",
       "27     747          256              Broadway & Sheridan Rd             \n",
       "28     711          256              Broadway & Sheridan Rd             \n",
       "29     553          254              Pine Grove Ave & Irving Park Rd    \n",
       "30     521           66              Clinton St & Lake St               \n",
       "⋮      ⋮            ⋮                ⋮                                  \n",
       "365040 178          460              Clark St & Bryn Mawr Ave           \n",
       "365041 529           47              State St & Kinzie St               \n",
       "365042 402          108              Halsted St & Polk St               \n",
       "365043 492          108              Halsted St & Polk St               \n",
       "365044 123           66              Clinton St & Lake St               \n",
       "365045 635           51              Clark St & Randolph St             \n",
       "365046 532           98              LaSalle St & Washington St         \n",
       "365047 741          301              Clark St & Schiller St             \n",
       "365048 739          295              Broadway & Argyle St               \n",
       "365049 590          114              Sheffield Ave & Waveland Ave       \n",
       "365050 674           50              Clark St & Ida B Wells Dr          \n",
       "365051 552          111              Sedgwick St & Huron St             \n",
       "365052 274           16              Paulina Ave & North Ave            \n",
       "365053 345          173              Mies van der Rohe Way & Chicago Ave\n",
       "365054 718          301              Clark St & Schiller St             \n",
       "365055 456          115              Sheffield Ave & Wellington Ave     \n",
       "365056 245          325              Clark St & Winnemac Ave            \n",
       "365057 684          403              Wentworth Ave & 33rd St            \n",
       "365058 239          309              Leavitt St & Armitage Ave          \n",
       "365059 296          181              LaSalle St & Illinois St           \n",
       "365060 613          210              Ashland Ave & Division St          \n",
       "365061 266          181              LaSalle St & Illinois St           \n",
       "365062 239          199              Wabash Ave & Grand Ave             \n",
       "365063 113          198              Green St & Madison St              \n",
       "365064 270           69              Damen Ave & Pierce Ave             \n",
       "365065 757           38              Clark St & Lake St                 \n",
       "365066 332          129              Blue Island Ave & 18th St          \n",
       "365067 846          283              LaSalle St & Jackson Blvd          \n",
       "365068 178          321              Wabash Ave & 9th St                \n",
       "365069 448          248              Woodlawn Ave & 55th St             \n",
       "       end_station_id end_station_name                     member_casual gender\n",
       "1       84            Milwaukee Ave & Grand Ave            Subscriber    Male  \n",
       "2      624            Dearborn St & Van Buren St (*)       Subscriber    Female\n",
       "3      644            Western Ave & Fillmore St (*)        Subscriber    Female\n",
       "4      176            Clark St & Elm St                    Subscriber    Male  \n",
       "5       35            Streeter Dr & Grand Ave              Subscriber    Male  \n",
       "6       49            Dearborn St & Monroe St              Subscriber    Female\n",
       "7       49            Dearborn St & Monroe St              Subscriber    Male  \n",
       "8      142            McClurg Ct & Erie St                 Subscriber    Male  \n",
       "9      148            State St & 33rd St                   Subscriber    Male  \n",
       "10     141            Clark St & Lincoln Ave               Subscriber    Male  \n",
       "11     295            Broadway & Argyle St                 Subscriber    Male  \n",
       "12     420            Ellis Ave & 55th St                  Subscriber    Female\n",
       "13     255            Indiana Ave & Roosevelt Rd           Subscriber    Male  \n",
       "14     255            Indiana Ave & Roosevelt Rd           Customer      Female\n",
       "15     324            Stockton Dr & Wrightwood Ave         Subscriber    Female\n",
       "16     324            Stockton Dr & Wrightwood Ave         Subscriber    Female\n",
       "17     166            Ashland Ave & Wrightwood Ave         Subscriber    Male  \n",
       "18     319            Greenview Ave & Diversey Pkwy        Customer      Female\n",
       "19      35            Streeter Dr & Grand Ave              Subscriber    Male  \n",
       "20      39            Wabash Ave & Adams St                Customer            \n",
       "21     111            Sedgwick St & Huron St               Subscriber    Male  \n",
       "22      39            Wabash Ave & Adams St                Customer            \n",
       "23     329            Lake Shore Dr & Diversey Pkwy        Subscriber    Male  \n",
       "24     313            Lakeview Ave & Fullerton Pkwy        Subscriber    Male  \n",
       "25      61            Wood St & Milwaukee Ave              Subscriber    Male  \n",
       "26     523            Eastlake Ter & Rogers Ave            Subscriber    Male  \n",
       "27     297            Paulina St & Montrose Ave            Subscriber    Male  \n",
       "28     297            Paulina St & Montrose Ave            Subscriber    Male  \n",
       "29     465            Marine Dr & Ainslie St               Subscriber    Male  \n",
       "30      52            Michigan Ave & Lake St               Subscriber    Male  \n",
       "⋮      ⋮              ⋮                                    ⋮             ⋮     \n",
       "365040 461            Broadway & Ridge Ave                 Subscriber    Male  \n",
       "365041  26            McClurg Ct & Illinois St             Subscriber    Male  \n",
       "365042  19            Loomis St & Taylor St (*)            Subscriber    Male  \n",
       "365043  41            Federal St & Polk St                 Subscriber    Male  \n",
       "365044  77            Clinton St & Madison St              Subscriber    Female\n",
       "365045 364            Larrabee St & Oak St                 Subscriber    Male  \n",
       "365046  22            May St & Taylor St                   Customer      Male  \n",
       "365047 115            Sheffield Ave & Wellington Ave       Subscriber    Male  \n",
       "365048 451            Sheridan Rd & Loyola Ave             Subscriber    Male  \n",
       "365049 330            Lincoln Ave & Addison St             Subscriber    Female\n",
       "365050  50            Clark St & Ida B Wells Dr            Subscriber    Male  \n",
       "365051 301            Clark St & Schiller St               Subscriber    Male  \n",
       "365052 158            Milwaukee Ave & Wabansia Ave         Subscriber    Male  \n",
       "365053 172            Rush St & Cedar St                   Subscriber    Male  \n",
       "365054 210            Ashland Ave & Division St            Subscriber    Male  \n",
       "365055 313            Lakeview Ave & Fullerton Pkwy        Subscriber    Male  \n",
       "365056 464            Damen Ave & Foster Ave               Subscriber    Male  \n",
       "365057 263            Rhodes Ave & 32nd St                 Subscriber    Male  \n",
       "365058 219            Damen Ave & Cortland St              Subscriber    Male  \n",
       "365059  24            Fairbanks Ct & Grand Ave             Customer            \n",
       "365060 210            Ashland Ave & Division St            Subscriber    Male  \n",
       "365061  24            Fairbanks Ct & Grand Ave             Customer            \n",
       "365062  26            McClurg Ct & Illinois St             Subscriber    Female\n",
       "365063 233            Sangamon St & Washington Blvd (*)    Subscriber    Male  \n",
       "365064 183            Damen Ave & Thomas St (Augusta Blvd) Subscriber    Male  \n",
       "365065  29            Noble St & Milwaukee Ave             Subscriber    Male  \n",
       "365066 202            Halsted St & 18th St                 Subscriber    Male  \n",
       "365067 273            Michigan Ave & 18th St               Subscriber    Male  \n",
       "365068  39            Wabash Ave & Adams St                Subscriber    Male  \n",
       "365069 247            Shore Dr & 55th St                   Subscriber    Male  \n",
       "       birthyear\n",
       "1      1989     \n",
       "2      1990     \n",
       "3      1994     \n",
       "4      1993     \n",
       "5      1994     \n",
       "6      1983     \n",
       "7      1984     \n",
       "8      1990     \n",
       "9      1995     \n",
       "10     1996     \n",
       "11     1994     \n",
       "12     1994     \n",
       "13     1986     \n",
       "14     1990     \n",
       "15     1989     \n",
       "16     1989     \n",
       "17     1967     \n",
       "18     1990     \n",
       "19     1985     \n",
       "20       NA     \n",
       "21     1957     \n",
       "22       NA     \n",
       "23     1959     \n",
       "24     1994     \n",
       "25     1991     \n",
       "26     1961     \n",
       "27     1968     \n",
       "28     1964     \n",
       "29     1990     \n",
       "30     1994     \n",
       "⋮      ⋮        \n",
       "365040 1986     \n",
       "365041 1990     \n",
       "365042 1992     \n",
       "365043 1992     \n",
       "365044 1985     \n",
       "365045 1972     \n",
       "365046 1993     \n",
       "365047 1988     \n",
       "365048 1992     \n",
       "365049 1985     \n",
       "365050 1957     \n",
       "365051 1994     \n",
       "365052 1991     \n",
       "365053 1980     \n",
       "365054 1988     \n",
       "365055 1987     \n",
       "365056 1983     \n",
       "365057 1984     \n",
       "365058 1970     \n",
       "365059   NA     \n",
       "365060 1972     \n",
       "365061   NA     \n",
       "365062 1984     \n",
       "365063 1971     \n",
       "365064 1985     \n",
       "365065 1993     \n",
       "365066 1992     \n",
       "365067 1984     \n",
       "365068 1969     \n",
       "365069 1998     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "\n",
       "casual member \n",
       " 71643 720313 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1189.45868820803"
      ],
      "text/latex": [
       "1189.45868820803"
      ],
      "text/markdown": [
       "1189.45868820803"
      ],
      "text/plain": [
       "[1] 1189.459"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "539"
      ],
      "text/latex": [
       "539"
      ],
      "text/markdown": [
       "539"
      ],
      "text/plain": [
       "[1] 539"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "10632022"
      ],
      "text/latex": [
       "10632022"
      ],
      "text/markdown": [
       "10632022"
      ],
      "text/plain": [
       "[1] 10632022"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1"
      ],
      "text/latex": [
       "1"
      ],
      "text/markdown": [
       "1"
      ],
      "text/plain": [
       "[1] 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>5372.7839</td></tr>\n",
       "\t<tr><td>member</td><td> 795.2523</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 5372.7839\\\\\n",
       "\t member &  795.2523\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 5372.7839 |\n",
       "| member |  795.2523 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     5372.7839               \n",
       "2 member                      795.2523               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1393</td></tr>\n",
       "\t<tr><td>member</td><td> 508</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1393\\\\\n",
       "\t member &  508\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 1393 |\n",
       "| member |  508 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     1393                    \n",
       "2 member                      508                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>10632022</td></tr>\n",
       "\t<tr><td>member</td><td> 6096428</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 10632022\\\\\n",
       "\t member &  6096428\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 10632022 |\n",
       "| member |  6096428 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     10632022                \n",
       "2 member                      6096428                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>2</td></tr>\n",
       "\t<tr><td>member</td><td>1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 2\\\\\n",
       "\t member & 1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 2 |\n",
       "| member | 1 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     2                       \n",
       "2 member                     1                       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$day_of_week</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>6090.7373</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 796.7338</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>4752.0504</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 822.3112</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>4950.7708</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 974.0730</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>5061.3044</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 972.9383</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>8451.6669</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 707.2093</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>4561.8039</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 769.4416</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>4480.3724</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 711.9838</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$day\\_of\\_week & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Friday    & 6090.7373\\\\\n",
       "\t member & Friday    &  796.7338\\\\\n",
       "\t casual & Monday    & 4752.0504\\\\\n",
       "\t member & Monday    &  822.3112\\\\\n",
       "\t casual & Saturday  & 4950.7708\\\\\n",
       "\t member & Saturday  &  974.0730\\\\\n",
       "\t casual & Sunday    & 5061.3044\\\\\n",
       "\t member & Sunday    &  972.9383\\\\\n",
       "\t casual & Thursday  & 8451.6669\\\\\n",
       "\t member & Thursday  &  707.2093\\\\\n",
       "\t casual & Tuesday   & 4561.8039\\\\\n",
       "\t member & Tuesday   &  769.4416\\\\\n",
       "\t casual & Wednesday & 4480.3724\\\\\n",
       "\t member & Wednesday &  711.9838\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$day_of_week &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Friday    | 6090.7373 |\n",
       "| member | Friday    |  796.7338 |\n",
       "| casual | Monday    | 4752.0504 |\n",
       "| member | Monday    |  822.3112 |\n",
       "| casual | Saturday  | 4950.7708 |\n",
       "| member | Saturday  |  974.0730 |\n",
       "| casual | Sunday    | 5061.3044 |\n",
       "| member | Sunday    |  972.9383 |\n",
       "| casual | Thursday  | 8451.6669 |\n",
       "| member | Thursday  |  707.2093 |\n",
       "| casual | Tuesday   | 4561.8039 |\n",
       "| member | Tuesday   |  769.4416 |\n",
       "| casual | Wednesday | 4480.3724 |\n",
       "| member | Wednesday |  711.9838 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_v2$member_casual all_trips_v2$day_of_week all_trips_v2$ride_length\n",
       "1  casual                     Friday                   6090.7373               \n",
       "2  member                     Friday                    796.7338               \n",
       "3  casual                     Monday                   4752.0504               \n",
       "4  member                     Monday                    822.3112               \n",
       "5  casual                     Saturday                 4950.7708               \n",
       "6  member                     Saturday                  974.0730               \n",
       "7  casual                     Sunday                   5061.3044               \n",
       "8  member                     Sunday                    972.9383               \n",
       "9  casual                     Thursday                 8451.6669               \n",
       "10 member                     Thursday                  707.2093               \n",
       "11 casual                     Tuesday                  4561.8039               \n",
       "12 member                     Tuesday                   769.4416               \n",
       "13 casual                     Wednesday                4480.3724               \n",
       "14 member                     Wednesday                 711.9838               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$day_of_week</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>6090.7373</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 796.7338</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>4752.0504</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 822.3112</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>4950.7708</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 974.0730</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>5061.3044</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 972.9383</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>8451.6669</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 707.2093</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>4561.8039</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 769.4416</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>4480.3724</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 711.9838</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$day\\_of\\_week & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Friday    & 6090.7373\\\\\n",
       "\t member & Friday    &  796.7338\\\\\n",
       "\t casual & Monday    & 4752.0504\\\\\n",
       "\t member & Monday    &  822.3112\\\\\n",
       "\t casual & Saturday  & 4950.7708\\\\\n",
       "\t member & Saturday  &  974.0730\\\\\n",
       "\t casual & Sunday    & 5061.3044\\\\\n",
       "\t member & Sunday    &  972.9383\\\\\n",
       "\t casual & Thursday  & 8451.6669\\\\\n",
       "\t member & Thursday  &  707.2093\\\\\n",
       "\t casual & Tuesday   & 4561.8039\\\\\n",
       "\t member & Tuesday   &  769.4416\\\\\n",
       "\t casual & Wednesday & 4480.3724\\\\\n",
       "\t member & Wednesday &  711.9838\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$day_of_week &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Friday    | 6090.7373 |\n",
       "| member | Friday    |  796.7338 |\n",
       "| casual | Monday    | 4752.0504 |\n",
       "| member | Monday    |  822.3112 |\n",
       "| casual | Saturday  | 4950.7708 |\n",
       "| member | Saturday  |  974.0730 |\n",
       "| casual | Sunday    | 5061.3044 |\n",
       "| member | Sunday    |  972.9383 |\n",
       "| casual | Thursday  | 8451.6669 |\n",
       "| member | Thursday  |  707.2093 |\n",
       "| casual | Tuesday   | 4561.8039 |\n",
       "| member | Tuesday   |  769.4416 |\n",
       "| casual | Wednesday | 4480.3724 |\n",
       "| member | Wednesday |  711.9838 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_v2$member_casual all_trips_v2$day_of_week all_trips_v2$ride_length\n",
       "1  casual                     Friday                   6090.7373               \n",
       "2  member                     Friday                    796.7338               \n",
       "3  casual                     Monday                   4752.0504               \n",
       "4  member                     Monday                    822.3112               \n",
       "5  casual                     Saturday                 4950.7708               \n",
       "6  member                     Saturday                  974.0730               \n",
       "7  casual                     Sunday                   5061.3044               \n",
       "8  member                     Sunday                    972.9383               \n",
       "9  casual                     Thursday                 8451.6669               \n",
       "10 member                     Thursday                  707.2093               \n",
       "11 casual                     Tuesday                  4561.8039               \n",
       "12 member                     Tuesday                   769.4416               \n",
       "13 casual                     Wednesday                4480.3724               \n",
       "14 member                     Wednesday                 711.9838               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$day_of_week</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>5061.3044</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 972.9383</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>4752.0504</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 822.3112</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>4561.8039</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 769.4416</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>4480.3724</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 711.9838</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>8451.6669</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 707.2093</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>6090.7373</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 796.7338</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>4950.7708</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 974.0730</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$day\\_of\\_week & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sunday    & 5061.3044\\\\\n",
       "\t member & Sunday    &  972.9383\\\\\n",
       "\t casual & Monday    & 4752.0504\\\\\n",
       "\t member & Monday    &  822.3112\\\\\n",
       "\t casual & Tuesday   & 4561.8039\\\\\n",
       "\t member & Tuesday   &  769.4416\\\\\n",
       "\t casual & Wednesday & 4480.3724\\\\\n",
       "\t member & Wednesday &  711.9838\\\\\n",
       "\t casual & Thursday  & 8451.6669\\\\\n",
       "\t member & Thursday  &  707.2093\\\\\n",
       "\t casual & Friday    & 6090.7373\\\\\n",
       "\t member & Friday    &  796.7338\\\\\n",
       "\t casual & Saturday  & 4950.7708\\\\\n",
       "\t member & Saturday  &  974.0730\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$day_of_week &lt;ord&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Sunday    | 5061.3044 |\n",
       "| member | Sunday    |  972.9383 |\n",
       "| casual | Monday    | 4752.0504 |\n",
       "| member | Monday    |  822.3112 |\n",
       "| casual | Tuesday   | 4561.8039 |\n",
       "| member | Tuesday   |  769.4416 |\n",
       "| casual | Wednesday | 4480.3724 |\n",
       "| member | Wednesday |  711.9838 |\n",
       "| casual | Thursday  | 8451.6669 |\n",
       "| member | Thursday  |  707.2093 |\n",
       "| casual | Friday    | 6090.7373 |\n",
       "| member | Friday    |  796.7338 |\n",
       "| casual | Saturday  | 4950.7708 |\n",
       "| member | Saturday  |  974.0730 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_v2$member_casual all_trips_v2$day_of_week all_trips_v2$ride_length\n",
       "1  casual                     Sunday                   5061.3044               \n",
       "2  member                     Sunday                    972.9383               \n",
       "3  casual                     Monday                   4752.0504               \n",
       "4  member                     Monday                    822.3112               \n",
       "5  casual                     Tuesday                  4561.8039               \n",
       "6  member                     Tuesday                   769.4416               \n",
       "7  casual                     Wednesday                4480.3724               \n",
       "8  member                     Wednesday                 711.9838               \n",
       "9  casual                     Thursday                 8451.6669               \n",
       "10 member                     Thursday                  707.2093               \n",
       "11 casual                     Friday                   6090.7373               \n",
       "12 member                     Friday                    796.7338               \n",
       "13 casual                     Saturday                 4950.7708               \n",
       "14 member                     Saturday                  974.0730               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 14 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>weekday</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td> 18652</td><td>5061.3044</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>  5591</td><td>4752.0504</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td>  7311</td><td>4561.8039</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td>  7690</td><td>4480.3724</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>  7147</td><td>8451.6669</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>  8013</td><td>6090.7373</td></tr>\n",
       "\t<tr><td>casual</td><td>Sat</td><td> 13473</td><td>4950.7708</td></tr>\n",
       "\t<tr><td>member</td><td>Sun</td><td> 60197</td><td> 972.9383</td></tr>\n",
       "\t<tr><td>member</td><td>Mon</td><td>110430</td><td> 822.3112</td></tr>\n",
       "\t<tr><td>member</td><td>Tue</td><td>127974</td><td> 769.4416</td></tr>\n",
       "\t<tr><td>member</td><td>Wed</td><td>121902</td><td> 711.9838</td></tr>\n",
       "\t<tr><td>member</td><td>Thu</td><td>125228</td><td> 707.2093</td></tr>\n",
       "\t<tr><td>member</td><td>Fri</td><td>115168</td><td> 796.7338</td></tr>\n",
       "\t<tr><td>member</td><td>Sat</td><td> 59413</td><td> 974.0730</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 14 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & weekday & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sun &  18652 & 5061.3044\\\\\n",
       "\t casual & Mon &   5591 & 4752.0504\\\\\n",
       "\t casual & Tue &   7311 & 4561.8039\\\\\n",
       "\t casual & Wed &   7690 & 4480.3724\\\\\n",
       "\t casual & Thu &   7147 & 8451.6669\\\\\n",
       "\t casual & Fri &   8013 & 6090.7373\\\\\n",
       "\t casual & Sat &  13473 & 4950.7708\\\\\n",
       "\t member & Sun &  60197 &  972.9383\\\\\n",
       "\t member & Mon & 110430 &  822.3112\\\\\n",
       "\t member & Tue & 127974 &  769.4416\\\\\n",
       "\t member & Wed & 121902 &  711.9838\\\\\n",
       "\t member & Thu & 125228 &  707.2093\\\\\n",
       "\t member & Fri & 115168 &  796.7338\\\\\n",
       "\t member & Sat &  59413 &  974.0730\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 14 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | weekday &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Sun |  18652 | 5061.3044 |\n",
       "| casual | Mon |   5591 | 4752.0504 |\n",
       "| casual | Tue |   7311 | 4561.8039 |\n",
       "| casual | Wed |   7690 | 4480.3724 |\n",
       "| casual | Thu |   7147 | 8451.6669 |\n",
       "| casual | Fri |   8013 | 6090.7373 |\n",
       "| casual | Sat |  13473 | 4950.7708 |\n",
       "| member | Sun |  60197 |  972.9383 |\n",
       "| member | Mon | 110430 |  822.3112 |\n",
       "| member | Tue | 127974 |  769.4416 |\n",
       "| member | Wed | 121902 |  711.9838 |\n",
       "| member | Thu | 125228 |  707.2093 |\n",
       "| member | Fri | 115168 |  796.7338 |\n",
       "| member | Sat |  59413 |  974.0730 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual weekday number_of_rides average_duration\n",
       "1  casual        Sun      18652          5061.3044       \n",
       "2  casual        Mon       5591          4752.0504       \n",
       "3  casual        Tue       7311          4561.8039       \n",
       "4  casual        Wed       7690          4480.3724       \n",
       "5  casual        Thu       7147          8451.6669       \n",
       "6  casual        Fri       8013          6090.7373       \n",
       "7  casual        Sat      13473          4950.7708       \n",
       "8  member        Sun      60197           972.9383       \n",
       "9  member        Mon     110430           822.3112       \n",
       "10 member        Tue     127974           769.4416       \n",
       "11 member        Wed     121902           711.9838       \n",
       "12 member        Thu     125228           707.2093       \n",
       "13 member        Fri     115168           796.7338       \n",
       "14 member        Sat      59413           974.0730       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "(q1_2019 <- rename(q1_2019\n",
    "                   ,ride_id = trip_id\n",
    "                   ,rideable_type = bikeid\n",
    "                   ,started_at = start_time\n",
    "                   ,ended_at = end_time\n",
    "                   ,start_station_name = from_station_name\n",
    "                   ,start_station_id = from_station_id\n",
    "                   ,end_station_name = to_station_name\n",
    "                   ,end_station_id = to_station_id\n",
    "                   ,member_casual = usertype\n",
    "))\n",
    "\n",
    "#Checking data attributes-----\n",
    "\n",
    "##str(q1_2019)\n",
    "##str(q1_2020)\n",
    "\n",
    "q1_2019 <- mutate(q1_2019, ride_id = as.character(ride_id)\n",
    "                  ,rideable_type = as.character(rideable_type))\n",
    "\n",
    "all_trips <- bind_rows(q1_2019, q1_2020)#, q3_2019)#, q4_2019, q1_2020)\n",
    "\n",
    "all_trips <- all_trips %>%\n",
    "  select(-c(start_lat, start_lng, end_lat, end_lng, birthyear, gender, \"tripduration\"))\n",
    "\n",
    "#Checking data attributes-----\n",
    "\n",
    "##colnames(all_trips)\n",
    "##nrow(all_trips)\n",
    "##dim(all_trips)\n",
    "##head(all_trips)\n",
    "##str(all_trips)\n",
    "##summary(all_trips)\n",
    "\n",
    "all_trips <- all_trips %>%\n",
    "  mutate(member_casual = recode(member_casual\n",
    "                                ,\"Subscriber\" = \"member\"\n",
    "                                ,\"Customer\" = \"casual\"))\n",
    "\n",
    "table(all_trips$member_casual)\n",
    "all_trips$date <- as.Date(all_trips$started_at) #The default format is yyyy-mm-dd\n",
    "all_trips$month <- format(as.Date(all_trips$date), \"%m\")\n",
    "all_trips$day <- format(as.Date(all_trips$date), \"%d\")\n",
    "all_trips$year <- format(as.Date(all_trips$date), \"%Y\")\n",
    "all_trips$day_of_week <- format(as.Date(all_trips$date), \"%A\")\n",
    "all_trips$ride_length <- difftime(all_trips$ended_at,all_trips$started_at)\n",
    "\n",
    "is.factor(all_trips$ride_length)\n",
    "all_trips$ride_length <- as.numeric(as.character(all_trips$ride_length))\n",
    "is.numeric(all_trips$ride_length)\n",
    "\n",
    "all_trips_v2 <- all_trips[!(all_trips$start_station_name == \"HQ QR\" | all_trips$ride_length<0),]\n",
    "\n",
    "mean(all_trips_v2$ride_length) #straight average (total ride length / rides)\n",
    "median(all_trips_v2$ride_length) #midpoint number in the ascending array of ride lengths\n",
    "max(all_trips_v2$ride_length) #longest ride\n",
    "min(all_trips_v2$ride_length) #shortest ride\n",
    "\n",
    "#Checking table\n",
    "##summary(all_trips_v2$ride_length)\n",
    "\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = mean)\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = median)\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = max)\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = min)\n",
    "\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week,\n",
    "          FUN = mean)\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week,\n",
    "FUN = mean)\n",
    "\n",
    "all_trips_v2$day_of_week <- ordered(all_trips_v2$day_of_week, levels=c(\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"))\n",
    "\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week,\n",
    "          FUN = mean)\n",
    "\n",
    "all_trips_v2 %>%\n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% #creates weekday field using wday()\n",
    "group_by(member_casual, weekday) %>% #groups by usertype and weekday\n",
    "  summarise(number_of_rides = n() #calculates the number of rides and average duration\n",
    "            ,average_duration = mean(ride_length)) %>% # calculates the average duration\n",
    "arrange(member_casual, weekday) # sorts"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "8a6fa026",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-01-03T17:46:08.239907Z",
     "iopub.status.busy": "2025-01-03T17:46:08.238367Z",
     "iopub.status.idle": "2025-01-03T17:46:23.720741Z",
     "shell.execute_reply": "2025-01-03T17:46:23.718841Z"
    },
    "papermill": {
     "duration": 15.493779,
     "end_time": "2025-01-03T17:46:23.723818",
     "exception": false,
     "start_time": "2025-01-03T17:46:08.230039",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ2BUVd7A4TPphABpNgQLRVGxYFm7iHVV1rIqqFhAsax97YoFe1sFO65rX1fB\nhlj3tSEW7LpWkBU7KkiTQHryfogiKosTzMzAyfN8mtxM7vkfI/LzTks0NjYGAACWflmZHgAA\ngJYh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpGT6QEyo7q6et68eZme4ift\n27dPJBKVlZU1NTWZniVNWu2Wq6qqqqurMz1LmrRr1y4rK8uW41ZUVJSdnV1dXV1VVZXpWdJk\nid1ySUlJpkcg81pp2DU2NtbX12d6ip9kZ2eHJW+qlMrKykokEq1qy4lEIisrq1VtOSsrKysr\nK4TQerbc9FsOrWnLfsuwRPFQLABAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCRyMj0AtCKJsS+mc7lpPVdP53IAZJwrdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACRyMn0AABRSYx9MZ3LTeu5ejqXA5ZwrTTssrOzS0pKMj3FLxUWFrZp0ybTU6RJIpEIrWzL\nWVnpvkCe8X/Jm7ZcUFCQn5+f2UnSJjs7O80rLjm/5by8vMxOkjZL5pZnzpyZ6RFYIrTSsGto\naKiqqsr0FD9p165dCKGmpqa2tjbTs6RJUVFRIpFobVtO84rz5s1L84q/0PRbrq2trampyewk\nadO2bds0r5jx33Lbtm2bfsvV1dWZnSRtCgsLs7OzW9WWWYq00rBrbGxcov5ANoVdXV3dEjVV\nSjVVTqvacvr/ys/4P9umv/Lr6+szPknaFBYWpnnFjP+zbdpyq/otNz3O0Kq2zFLEiycAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIpGT6QGAmCXGvpjO5ab1XD2dywEsaVyxAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiEROpgcA\nYOmWGPtiOpeb1nP1dC4HSxdX7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpGT6QFovRJjX0znctN6rp7O5QAg\n/VyxAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIRE46F7vtLwcV\nnDdin2Xa/L7TNIy95/qHx735xZzsHj3/MPCYQV0Kc0II344fcujF7y54v4NvHbV7WcHvWwsA\nYKmRtrBrnPT8zQ9OmbV3Y+PvPNHk+88cNvKz/Y86+uCSukdvvG7IX2vuuvGorBBmvT2rTdmf\njjt0rfn3XLld7u9cCwBgKZKOsJs6fvip17wwvaKmBc7VWHPlyA+77vu3vbfrGkLodlli7wMv\nu+urgQes2HbqB98Xr7nZZput9ZvnAACIUjqeY1e81t5Dzrvkb5ee+utvNdbNuG/EJccePmjP\nfgOOOf3SpyfM/Nl3G6s//fSLBY9Uzx73eVX99tuv2PRlfvEWvYry3hj7TQjh7e+rS3oV11d+\n/83UWb/3qiAAwFIoHVfs8tqv2K19qK9ZyNPd7jz9+Ccq1zrs0BM6t09MGP/o1acdXn/9bTt0\nLGz6bn3VJ8efcPHoB26ff/+aue+EENYs/Okx1jUKc554Z3YYEN6qqG184ep+10yobWzMabvM\njvsdd/if1llwrYEDB9bX1zfd3nrrrQ866KAW3+nvVFhYWFDQWp4UmEgk0rxicXFxmlf8hays\ndL9WyZbTz5bTIONbzs7ODiHk5+fn5i5BT/iZNWtWpkdgiZDWF0/8QtX0h+7/aPaF/zqhZ9vc\nEELX1XrWvzLgnhve3+H8jf7XjzRUzw0hlOX89N+R8tzsuoqq+pqvKrJzVynf7NK7zitunPPK\nY7dcftOZ+d3vGNjjpz//EyZMqKura7q95ppr5uRkcu8LlZWVlf7/RLYeS+BvPNVsuTWw5Uzx\nX2yWTJn841Hx5ZuNjY1n7Lvnggfb1n0VGtevqq4NIdRVVYcQqqqqmr6VX1CQldcmhDCzrqEo\nO7vp4PTa+uzivOy8FUeNGvXjOfK37H/KR0+88cw/3hv4ty3mn/nAAw+cf8VujTXWqKysTOXm\nmqdNmzYhhJqamvkTRq9py+mU8d94+i/H2nL6tcIt5+fnp3nFJWHLWVlZdXV1tbW1mZ0Efi2T\nYZfTNi+R3Xbk3bcueDCRlTtv2t37DJ5faaFfv35NN4aPerBj27VDGDexsq5z/g9hN6myrsMW\nC7ks32u5Nk/NmLbgkSOPPHL+7aqqqoqKipbayO83P+zmV2z00v/339y5c9O84i+k/+8/W06/\nvLy8NK9oy+mXm5ublZVVW1ub8Ung1zJ5GblwuR1Dw7wnZtQX/CD/Xxeec92z3xQuu/+YMWPG\njBnzwMjLsnJKxvyoS0F2QXGfjnnZ/35hatMZaue+/eqcmvW3W37WR9cdMviob2oafjx3w3NT\n5hWvuVqmtgYAkH6ZDLu8dhsOXq/sn6de8MTzb3w6eeLoG097+MPp22y+7KJ+JpF30l49/nvb\n0KfemPj15PduOfuKwhW2PbBTUfsu/cvmfXvq0Btfe2/ipPffvmf4KePmtjtssLADAFqRDD8F\nte/Zw6r/fu29Iy6dWZvbqcs6J1w8ZL2i33iRUbf+FxxZPfyeYWdPr0p0Xbf3BecdmhVCyCk/\n/7pzbx1x19UXnFmV3a5L956nDBva67dOBQAQk0Tj7/4oiKXRkvYcu/Ly8hBCRUVF63mOXVlZ\nWdZzL6VzxWk9V0/ncr9WWlqaPW58Ole05fQrKSnJef7ldK5oy+lXXFyck5NTWVm5pD3Hrumv\nElo5L9UGAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIhEs8Ku4evJk5puVU197ZyTjzp2yCVPTp6TirEAAGiunCTvVzN7/H5b\n9h3z8fI1c99vrJu525q9/296ZQjhhitvvG3iuwNWKkrlkAAA/LZkr9jds/veD35Qc9AJx4QQ\npr5x/P9NrzzqsY9mfvL8+rlTTuo/KpUTAgCQlGTD7qJXp66868ibzj8ihPDOBePyO2x51U7d\ni1fZ4qr9u01/98pUTggAQFKSDbvPq+vKN+3cdPv2V6eVrXNCdgghhLZd2tZVfpya2QAAaIZk\nw27z9vlfPfp2CKF61pN3T5u3/unrNx1//aEvcwt7pGo6AACSluyLJ84duNoWwwf9afAbOa/c\n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\n56aT/bnd5rve+uID31X2X6bNb6686JM3V7KfPHHW84+t88UxR1390PSff6oYABCr3MIeTREW\nQigo3aVddlZ5z+FNERZCWGazLUMIlbUNIYS6ee+f/8GMHn+5/cfMCiGEnc++KoQw8oaPFuOE\nIYSiFQ77oepCCImcA4Y9WJid9fzZY5NdLpF/x+HrJbnTOV8Ne2pm1QaXXdVUdSGEgtLeo2+4\n9qxDykMIe70w8dspH/wYXqGxYW51Y2Nj/bwf1slqk5cIsz584PUv5jQd2fSyF6dNm5ZM1f3m\nyZsr2fex69tvSMNyK91w/B43/LVguRWWKcj9WRF+8skni7c8ALDEysopW/DLnETIX6Zk/peJ\nrNz5t6tmPF7f2PjuFX9IXPHLk8x+d/ZinDCEULL2Xj+7c0G3XUoLHvv2+RAOSma5vKL1ls1N\n9gLW95OeDSFsvs1yCx7c8pC/bBlCCKGwuHTGa0/c/sS49z/6+LPPP/3wnf98Nau64Mf3C8nO\n7/zviw/oe8Y//7Dy3Sv33HizTTbZapsd995rh9LkXh2y6JM3V7JhV1BQEELHXXbpuJjrAAAR\ny8oLIax9yi3zL8jNl98h2ctmv/DrLMpJhB/eiC2J5RJZbZNfq6G6IYSQl1h4it1/4rZ7D3t2\nxV7b/KnPJn03/+OJ56371WHbHz31pztsdcrtUweePnr0I2PHvfDik7f966ZhJ/x1k9HvPbv9\nAhcU52ts+NkLI37z5M2SbNg9/PDDv3mf3j26Pzdh0mIOAgAstQpKd85OHF83a/Udd9xs/sG6\nygn3j/nP8usWLt45Z7w3OoTt539ZX/3pw9Or2m+6bSqWa7/a+iE8+eKr34WV288/+Mypf7lz\nesmNw3btP+zZzjuP+OyRw+Z/69YFfra2YuKb788qW3eDfQ47aZ/DTgohfPj4+WvufPZxZ771\nwQ2bNs2+4Frfvj5j/u2aOS8v+uTNlewlymR8+dmnLXg2AGBpkVPQbeiapZPuPOjpb356ctjd\nR+227777fr64rVEx5fozHp3841f1/zppt4r6ht0u2zwVy7Vf+fR1i/JeOfakT6p+iLCa2eMP\nvOqmR15dtm7ehPrGxtL1Nph/53lfv3TFV3NC+OHC29xvb9hkk036XfLTp3CtsuFGIYS6uXUh\nhMLsrKoZj3734xMHq6a/fOQzX82/52+evLma91mxAAALdfxj19+02oCduvbcY59dN+he+t4z\nI+988qO1B955wLKLecUuf5mCS3Zd870BB2/Utd1bz4568LlPO+94/nWbLpeK5RLZHR7655Hd\n97hq7W69B+2/4/K5sx68acTX9W2vu29g4TIF25Ud+ezlfY/OPWmDToWT33/5HyPGdF2+oOaL\nN6++695D9t2rwyrnbrfM358+f6udJw/aZK0uDbM+Hf2PW7Jzy4Ze1CuEsOsBq517wWvrbnPg\nKftvU/vNhNuuvOrb8rzwZV3TuoXL7LPokzd3Iy15xQ4AaLWKVur3zjuPHLzDSuMeuPms8696\nbVrpOTc9/uYt+y/2CTce/tJNZx34xQsPXnTB8Bc+aXfwmTe99+iQ+U+Ca/HlVt5t2IeP3bBt\nl9l3XHP++cNubVzrT7ePm3jEasUhq2D0Ww/vv83Ko6855/gz//bCRw03vT559L1nrdSu5uQj\njppV15DI7jDm3aeO3nuL9x+/6/wzTrvypoeKt9jvvlcn7tepKITQ69yx156wb7svnj75L4NP\nHnr5rLX3+b9RvX9a9bdO3txdJBobW+wDJbq2yf24sralzpZSVVVVFRUVmZ7iJ+Xl5SGEioqK\nqqqqTM+SJmVlZVnPvZTOFaf1XD2dy/1aaWlp9rjx6VzRltOvpKQk5/mX07miLadfcXFxTk5O\nZWXl3LlzMzvJLzT9VcISq6H6+y+n1a3UqTSlq3goFgAg5bLy26/UKeWrCDsAIGafPti318Ev\nLuIO+R16f/Pp6LTNk1LCDgCI2Sp7PDJzj0wPkS5ePAEAEAlhBwAQCWEHABCJRYXdNuv2POT5\nr5tur7HGGud9PmfR5xo6/OoWmwsAgGZa1Isnpvz3o0kX3fTC2TvmZoUJEya889orr3zdbqH3\n3HjjjUMIBxz+l5TMCABAEhYVdjccvcU2l52z5RPnNH15/17b3/8/7tmC73IMAMDiWVTY9bn0\nmcl7j3tj8jf1jY377LPPDlfdcvByi/lxbwAApNpvvI/dqhtuteqGIYRw33337divX//l26Zj\nKAAgo7777rsUndlHn6VUsm9QfO+996Z0DgBgidLu8vNa/JxzTj67xc/Jgpr3yRPzvnr7voee\n/GDylHn1OSt0WWuH3ffaoHNRiiYDAKBZmhF295+9z4ALR1U3/PQ6iSHHH7H3kLtGnrdnCgYD\nAKB5kn2D4k/uHbDX+SOX7X3wyCdf+Wrq9JnTprz2zH2HbL3cqPP3OuCBT1M5IQAASUn2it3f\njh9TtOLACU/dVJiVaDqyYZ89N+i9U8PKy4865orw52tSNiEAAElJ9ordPdPmrXbYcfOrrkki\nq/C4o1evnHZ3CgYDAKB5kg27oqysqm+rfn286tuqRLbXTwAAZF6yYXd89w7/vePI12dWL3iw\nZvabR//jow7djkvBYAAANE+yz7EbdN9556x1zOarrHvw0YM2X6dbQaj8+N2Xbrv2lo/m5V19\n76CUjggAkFKludl7fPDdzd1LMj3I75Vs2BWvfuQHT+bsf+QZIy46bcSPB0tX3+q66+48okdx\nioYDACB5zXgfu059Dhv74aFfTnjj/Y+nVIf8jl3WXH+Nzgs+lNu7R/fnJkxq8REBAEhGss+x\n+1GiU48Nd9xl11132XHDn1ddCOHLzz5tqbEAgNamtuL9U/bbabUViwuLl9t2n5PerahtOl45\n9aW/7LHV8sVFOfmFq/bc8qJ7JzQd//SJEbtstGZp2/zyFbvsdsQl39c3hhBCY3Uikbjwiznz\nT9sxP+eQSTMXcZ6YNDfsAABSoLHm0F6b3/JhyaW3Pvr0AyOW/c/NW298etN3Ttt8l/unrHnz\nmKdff+HJ47dvOGvfP3xSVV/z/fPr9D0q/PGvj417edS1J71x25k7X/PBoldY6HlSv7G0at5n\nxQIApMKMD0++Y3LN2Bm3bdUhL4SwztPf9R3wr69rGlbIy1rlsNNvHnjMLsu0CSH06HrG8cP7\nvjW3pmzOE3PqGw4/csAmKxSGDXo9df8KkwrLFr3EQs+zakGbNOwubYQdAJB5X455qaBkh6aq\nCyG07Xjos88e2nT7+BP+8uyY+y97b+Knn05++4VHmw4Wdfrr/hvd+udVVu290w5bbL759jvt\n/qeeyy96iYWeJzIeigUAMq+huiGRVfDr4/XVX/Tt3qn/eXfPzi7bsu/+V997V9PxrJzyO1/9\n8t1nbt11o04fPnPH9ut12um0Jxd65qqGxkWcJzKu2AEAmbdi33Wqzr//9YraDYtyQwjzvr2z\n63qn3PrBpxt+fuLjn1V9XfXwcrlZIYR5U38Ism9fvPLiB2uG/+20NTbf+bgQPhixWa+TTwmX\nvNX03Rm1DU035k29d2ZdQwhh5oSFnycyrtgBAJlXvt41f1quYZftDnvk2VfffPHxI3f4a1XR\nrn8syc8v26ixoeZv94z97MtPXvr37ftsc2oI4YOPp+YsO+eqK04/8ILbXhagyeIAACAASURB\nVH7r3VfGjr74uokdVt87hBAS+Zu0z7/n0IvemPjZu+MfP3jbI7ISiRDC/zpPZK+ecMUOAMi8\nRHbRyHefOenQM47bb/tp9R022G7w2BvOCyG063TyE5d9euwZ/a/9PmfdP2w79P73lz9g7XO3\n6LnTjBmPX/HdqdeeutXQGR2W67zBNoPH3nBy06nG/N81+wy+aMu1/lZZ37D5oGv7Tz1l0efZ\noCg3kztvUYnGxsaWOlfXNrkfV9a21NlSqqqqqqKiItNT/KS8vDyEUFFRUVVVlelZ0qSsrCzr\nuZfSueK0nqunc7lfKy0tzR43Pp0r2nL6lZSU5Dz/cjpXtOX0Ky4uzsnJqaysnDt3bmYn+YWm\nv0paynfffdfu8vNa8IRN5px8dsvOuQiNDZXfzmhcvrwwPcstIZJ8KLahurq6tsUKEAAgtRJZ\nbVpb1YUkw66xfk5xYZvtR3286LsNHX51S4wEAMDiSCrsEtkdTlyjdPItry36bgcc/peWGAkA\ngMWR7Ktiz3r+sXW+OOaoqx+aXh3Zy0cAACKR7Kti+/Yb0rDcSjccv8cNfy1YboVlCnJ/VoSf\nfPJJCmYDAKAZkg27goKCEDruskvHlE4DAMBiSzbsHn744ZTOAQDA7+STJwAAItG8T56Y+PTI\nu/89/vOpM7a6dMQ+uS+9MmWd3j2XTdFkAEAGzTn57EyPQLMlH3aN1w/a4qjbfviogMKzrt6l\n4uo+vR7ZavA1T914VE4iReMBAJmxzHsTW/ycGf/gkOgl+1Dsx3f9+ajbXtr2qOH/mfRV05GS\n7pdddNimz9109K4jJqRsPAAAkpVs2F1w4pOla5z21LXHrdPthxfG5hT2OG3Ei+euXfbc0PNT\nNh4AAMlKNuzu+66y68D9fn18jwO7VE33glkAgMxLNuxWys+eM+n7Xx+f+f7s7HxvbgcAkHnJ\nht0ZGy/7338e+PJ3VQsenDflmUEjJ5f3OjUFgwEA0DzJvir2zyP/fvbKu/Vedb2Bh+8XQnj/\nnlvOn/XOzdff9VXDCvfc2y+VE7YWibEvpnM5r0sCgPgke8WuzTI7v/WfMXtulPWPK4eGEMae\neeI5V/yz3SZ7P/jWO3uu0DaFAwIAkJxmvEFx++47/euZnW6e9sn7H0+py27TqftanYrzUzcZ\nAEDLmvftzW2XH/xJVd0q+dmZniUlmvPJEw2Vj91+9d0PPz3hk2/qctquvPq6u/QbNHjXjb05\n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\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAikZPpATIjkUjk5+dneopMaoXbz/iWE4lEmle05fSz5TSw5YWqrq5O\nwyQs+Vpp2GVlZbVp0ybTU2RSxref/v8y2nL62XIa2HL6ZWWl+8GuZLYs7GjSSsOuvr6+oqIi\n01P8pLy8PM0rzpo1K80r/kJZWVmaV8z4lktLS9O8oi2nX0lJSZpXtOX0Ky4uTvOKGd8ySxHP\nsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIhETqYHWHK1u/y8tK1VHULYqX/algMAouSKHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCRy\nMj0AAPxe7S4/L21r1YcQduqftuWgWVyxAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIhETqYHAKCFtbv8vLStVRdC2Kl/2pYDFs0VOwCASLhiB61LOq/l1AbXcgDSyhU7AIBI\nuGJHq+byFQAxEXZA5LySAGg9PBQLABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlvUMxP0vk+rjXB+7gCQAtzxQ4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASOWlZpWHsPdc/PO7NL+Zk9+j5h4HH\nDOpS+HvW/V9na9lVAACWMum4Yjf5/jOHjRy/yZ8PPef4A4s+fnrIX29sSMHZWnYVAIClTurD\nrrHmypEfdt33vL2323StDbY87rKj537977u+mtvCZ2vZVQAAlkIpD7vq2eM+r6rffvsVm77M\nL96iV1HeG2O/afqysW7GfSMuOfbwQXv2G3DM6Zc+PWHmgj/b2Fj96adfJHO2Ra8CANAapPxZ\naDVz3wkhrFmYO//IGoU5T7wzOwwIIYQ7Tz/+icq1Djv0hM7tExPGP3r1aYfXX3/bDh0Lm+5Z\nX/XJ8SdcPPqB23/zbDVbL2qVJs8880xDww8Pzy677LKrrrpqi292KZKfn5/pEdLNllsDW24N\nbHmhqqur0zAJS76Uh11D9dwQQlnOT5cGy3Oz6yqqQghV0x+6/6PZF/7rhJ5tc0MIXVfrWf/K\ngHtueH+H8zdq7tkWscp8Z5xxRl1dXdPtPffc8/TTT1/05HH/EWnXrt2vD9pyZGy5iS1HxpYX\nStjRJOVhl5XXJoQws66hKDu76cj02vrs4rwQQsWXbzY2Np6x754L3r9t3Vehcf2q6toQQl1V\ndQihquqHPssvKPhfZ1vEKost/9Krf8+PN1djOhf7H2w51Ww5I2w51WwZlhwpD7vctmuHMG5i\nZV3n/B+Sa1JlXYctikMIOW3zEtltR95964L3T2Tlzpt29z6DR80/0q9fv6Ybw0c92PF/nG0R\nq8z3f//3f/NvNzQ0TJ8+vYW3+juUlZWFECoqKlrP/3KVlpYmEom5c+fOD/folZSUZGVlzZs3\nr7KyMtOzpEkr3HJxcXF2dnZlZeW8efMyPUuatMItd+jQIScnp6qqau5cL9FjiZPysCso7tMx\nb8S/X5i6Xd/OIYTauW+/Oqfmz9stH0IoXG7H0PDqEzPqd+/YNoQQQuMtZ502a4tjT9hx/zFj\n9g8h1FVO2GvAz55jF/IXfraC4pX+1yrztW/ffv7tqqqqioqKVO99MTQ2tq7/D2xsbLTl1qC1\nbdlvuTVonb9llnypf7uTRN5Je/X4721Dn3pj4teT37vl7CsKV9j2wE5FIYS8dhsOXq/sn6de\n8MTzb3w6eeLoG097+MPp22y+7OKc7X+vAgDQSqTjsxm69b/gyOrh9ww7e3pVouu6vS8479D5\nOdn37GHVf7/23hGXzqzN7dRlnRMuHrJeUe6izvW/z7aIVQAAWoNE67ySvKQ9FFteXh5CqKio\naD1POCsrK0skEq1qy6WlpVlZWXPnzm09Tzhr2vK8efNaz7OvSkpKsrOzW+GWKysrW88TzoqL\ni3NycpbALTf9VUIr56oWAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE3RJh\nu+2269Onz2OPPZbpQdJn55137tOnz0MPPZTpQdJnjz326NOnz6hRozI9SPrsvffeffr0ueuu\nuzI9SPoMGDCgT58+t956a6YHSZ9Bgwb16dPn73//e6YHSZ/DDz+8T58+11xzTaYHgYXIyfQA\nmVFQUFBQUJDpKX5SUVFRV1eXn59fXl6e6VnSZO7cufPmzcvNzW09W543b96cOXNa1ZYrKyvn\nzJmTnZ3derZcXV09Z86cnJyc1rblRCLRerZcW1s7Z86crKys1rNlliKu2AEARELYAQBEopU+\nFLuk2WabbRoaGjp27JjpQdKnT58+1dXVnTt3zvQg6bPVVlvNnTt35ZVXzvQg6bPlllvOnj17\n1VVXzfQg6bPZZptNnz69S5cumR4kfTbZZJNVV121W7dumR4kff7whz907NhxtdVWy/QgsBCJ\nxsbGTM8AAEAL8FAsAEAkhB0AQCQ8xy5N3n3qnlGPPffR59/UZxcu27l775369992jUwPlSpn\n7bvXf+bW7HXDvw5csWjB429fftjZz3+z8q5/u2ZwhM9Nef7IAZd/OefXxxOJvIceui/986TO\nxBFHnfLE1DvuH9UhO9F05N/H7n/9ZxVXjLy/W0F205E3zz3k/Hez7r33ppxEUuf8//buMyCK\nawsA8JnthbLL0kEUEQFBQSWW2FGxJBQJIgKCLfpAjKJGRVRUVMTYAWOJqKABS/SpRE3UFIkm\nPo1PYwFNjBEFpUhd2rK79/1YXFcTkJcA6w7n+8XcuTOcOzN75+zOzJ2D0wKvjVi7eeLbfmta\n03s5zM+3R2LafCv9tg+szfz8cdjKe6WvFfKN/Q6lTH6t0Nvb23d3xlQzQRtF1gr+Xr8tffqk\nkmdqIea0QYQI/Rkmdm3h0cm4pXtuDA+Y6j/NnquU/v7L5bSkxfekm5f7vO2nsb+NYlJZqfdD\no3u9LCLyvVeLmVTzzvM6qEfUsrV1cgAgisqYZfEO4dFhHfQBgKLo9ru45Xs9yOkvTxTXhJoJ\nAICQ2vQ8KSHKjOzSpT0bhvU691uF0PLDZmZ1OqT97OUm8EQeyxeO0Cxhsk3+XG3MmDGOfB0+\nxfztfjtrxcJMt+XJ4Y5tEydCr9HhT50O2XvopqXH8o+CXVWTjt17OQkezktbBz7NGqtdoSRM\nho6dIc2G9SjK+kxGkjkvMrmq/PRcpfEQw7IHzV6JbjXc0N7REAAAiKIUAPTtnFy6irQbUivR\nswjgMk7fyCoM9e8EADWFX5TKWaF2/FOHsqHnIABQyPJ+rJA5hjlrOdBW0H72chMYbBMXF5cm\nKijqqphcYXh4eJuF1Br+Yb+NkLa0o2+ZWlStIHWlBZolNmNmxSyeQQCA1Ht7ex8urlHPCvPz\n3ZYvVf1x5PHtVRGT/Mb5Bk+ekXjoxzYO+58w6BhqDk/TcqXqkvsHsoy6T+e/OOIUdXn7N8VO\nDgoYNz5wzpKErIcvL2/pdMP/QuO7mMhLju5Y99HMKR8EBM+OTriQ8/oVrrcTxRJ7GfELLtxW\nTead/olv4jt0kn3Fg88VBACguuCEkpDh7sbQeBtri29uWxU9Nch/Ymh48tGftNSUlqeUl+6P\nXxg4flxQ2Ifb0n8EaOoAoJmgcT6ZRcUpCTGTp28GAH8fn5SCam0H9fc11W8DyMpzPl0bHRoY\n4OvnPz1y8ZFLT1R1dk4O+PSp9PGZheNDEto8ZIQAMLFrG9N8uhdfT5o6f0Xq0S9v3n8sI8Dk\ndXZ3d3/jj1GZSxI6+s5O2rk9cpzTuYPxGYW600syuNN7GV/ed7dhktSn/FzUb7L69hSyI+rj\n03eVYXNiEmIX9BL+sWnBnDvVcvXSOtzw/0da9Nxjtym/D+etXx09RnNnfwAADRlJREFU2hG2\nLZ75db5utPTdoWbVRf9WpXHffF9gOWqA2ClQKcs/VVILAM/OZzO5VsNFXGikjUT+PHZ23JVi\n0ZSo2CWRgaXntpx8XtP0f9QVP8ctA3f/DYlJs/26nU+PP1JMk3ZpUtYXZb9K8WLUrEuJKwW9\nx8V/MkurAbaMpvvt/QtXXi7p8NGy1ZsS4nzclAc+mV8gUwLAtF1p08yFViNXH9gzT7vxo3YL\nL8W2BYeJKxK7ZX3zw5X/nj98NHUnk2fo8s5A/7AwV9M3vK9W2G9BmKcrAHTwibI9mJVTVAum\nOnMnskPooJI5n9Uo+/AZlDT/8ydK8w02evsAAKC6IP2rJ9K5e2OGSXgAYN/N+U5QyO5jj7aE\n2KmW1emGN1Pt8xNf3C9f8/k8FyEbAOy6uiiuBGd8escz7h1th/Zmlp69FUePflteN4xfeLa0\nLszDgsnnDRdxv/s633di5/9eLtLrMIPReBvdvM7cq+VtWL9A9bCFgxN/QsgabbepZYhd54WN\ndAUAa58oqwMXs0vqQEK3bra27JtFi77RLNl//ISYSQFAudmHgSN6aCmuFtZ0v206avzs4e+7\nG3IAwNo8YPfJVb/Xyc04HBaHy6EoBovD5bK13QLUTtGtx3lrdXQdNMV1EADUlOTduHYl88ih\nFRE3thxM6tjkg1PmI1++pcCAyQCdGkxazzKoI+Pf+/6oCO9seD/1B4nbTO6L++3Ks28xudYe\nkoa8lmLwfS0EyZdz4UVip9MNbybpk+uEkCUTP9AsFMrzAHQgseOb+Okxv/j2dmlvSTqwLbyM\neAAweqDpsnPfQaD1qee1HUKcoPE2Fl3M44k91Y/QcvT79NZjP2/7ZrQCq9GvHrp0JDCZkLEn\n+C9nWQyn1btkGu23uUxv3zG3rlw+lptXUPDsYfZVbUeK0EuY2LU6WcWlDUnfhy5YZM1hAgDf\nyKq/p5/7QIcPAqMPPqpcYi98rX69xrtA2Hxmm8basijWlL4mW1Nuhcf12XO9eMAmB/UcQgDg\nlQvRDAYFRKme1O2Gv4lqF7OEHIopPJS+V3MWxdCNb/kUU8/PRJCZ+fAB756Bbahq2BNrr361\nmcd+K5CUy5XT3STQeBt/Szr72goNWQx6JHZ8wZsP3Xr6vu9HoE+Tc0rT/fZiW/nqiMj7wm6j\nBrg5v+M40nvIvI9WaTtkhBrQ8wvlW4XJsbh65cqh66+cthS1ZQBgrtdwFpfKGzr6uvJLUgV9\nOn37YI+S7D1Pcw/kg2Ww9cvBvUTdnBV1j78rrVVNEmXtibwqSV86v0T1z7tYYDYKlNVnSxS8\nBtzP18Qmf/tMq2H+H9w9LSr/OHk4p8x2QjdVCd/M34ilTD52hsXrNNiQA4230XSwVW3ZuYe1\nCtWCitoHlyvqtNaSNkHXzzhdNd1vS5/s+blQlrRx2aTx3oP79+4gpuGjMEh30eTb1duMyesc\n7eWwJmEO1z+wj5OtkEuVPf39dNoBfdsxoRZCoMBBwL6YdHhw+Fh25ePDydspGo30JjDzt2cf\nXrXhnEmvjzmUZnnQSKsvdyxKYM70txLKLx3flVNvGBdA08SOYv/lLubou093k+xftJo3w9/R\nSu/GuZRT2c9jF5lqO9zmMhv6bn1qag5AfDexqoSieEE2+oln88WOH6v2dmNtNOZFdOXMWBa9\nOWLSWCNG+enUZH0ufX+jbeQAQG+zpvvt+uf2hFw6fvHWe93NSnLvHE1JA4Dcp2V99U0ZAAwK\nagryS0stxWIDbbcDtUeY2LWFPtMTYm3Sj391dvOJwho5JTa1dhsaEhXipRq+demqGZ8kHlk8\n67hMSZxGzBxUtk/L4bYgijl5gGn0ubzxix1encGI2LxeP3nXZ5/EVsgZ1va9522IcBHoxlXI\nv6GxXfz+8s11u5KO7EgorWdbd+4xLz7GTU9nNgJP4iVmHagW9ncWvOxGegTYQvwNm3Ev3yzS\nSBslqxJjtm9L3bo2BnjGgwMW/evKpjRttKJt0PkzTl9N9NssY78Vkwt3p63/sprZyd41KDpZ\nvCkyY1Fk7/T0Ljyms0/fupTE8AWDM/ZEabsRqD2iCH3v9tAthMjKKonYgKvtQFBrwV3czuEB\ngBBqA5jYIYQQQgjRBD48gRBCCCFEE5jYIYQQQgjRBCZ2CCGEEEI0gYkdQgghhBBNYGKHEEII\nIUQTmNghhBBCCNEEJnYIIYQQQjSBiR1CqLU4CzmW/c80s3LFo6UURQXfK2nVkBBCiN4wsUMI\nIYQQoglM7BBCCCGEaAITO4QQQgghmsDEDqF2Z00XMYtrWa1seE/047NjKYoy6LBQXeH7IHuK\novYVVAOA9NHFuYGjbExEXKGRY0+PlTtPK19d2xsrNCCyjYFODCZ3fnq2quBqxroR7l30eRyJ\nhX3gnC2FsteXyz6Z7Du0l7GhkMXhW9j1CFu4rUROACB7+wCKohLzpBp1lcPFfD2Lqf9ksyCE\nEB0QhFA7cyexHwCseVShmswc2QEAGEzBU5lCVRJsKuQaDCCESPOO2/HZbEGnybMWrI5dNH5I\nZwBwC92rXlXTFboJ2Bb9ThNCiLJ+S7AzxWDPSbutmnUzaQIA8CQ9p0Qu/vhfIV2FbLFrFwAI\nynmuqpCbGcGgKJHj0AUxK9euXBbi6QwA9sGZhJDa0gsMinL+6Cd1GOUP1wLAwE+zW2+jIYSQ\nTsDEDqF2p6ogFQB6r72hmvQU88yG9gOAufdKCCH1VbeYFGXr+xUhZIWzhC1wulxco172+Dw3\nAFj9oEw12XSFhsROWZ8U1p2i2LP331LVkdf8asphCsy8blfIVCXSJxccBGzNxG6/szGLZ/Oo\nVq5ec5SVPl/ipfp7rrU+32isetZXE+woBvdapawFtxJCCOkivBSLULsjMJ00wJD74LNMAJBV\n/vR1ae2o9Xv0mYwLu34DgJI76xSEDF/eU159J+5uiWP4/v4SnnrZscu3AsChT+8DwBsrAAAB\nxY7p70Tuv9XR+8i2UBdVYdH16EKZwnN/srM+W1UitPJIi3DUDNL/h3sF+XdtuMyG9Sir6ggh\nimrV5IyYHjUlp/c8q1LNmnsqV+IS31uP3dKbCiGEdAwmdgi1R8uGWlTkbiiRK0t+2UhRzGiX\nrlHW+o8OHwOAu5uuMFgGcc6S2pIzCkJubexDaeCKhgBA+a1yAHhjBQAouh4yK/VhHxH38dmI\nyxUyVWFh1h8AENjLWDMkuyk9NScFIqPq37I2xy2ZPmnCyCF9O0gk2/Nf3lTXeWIcg6ISt+YA\nQPHNhdnV9Z5bJrTWxkIIId3B0nYACCEt6LlsmPLE3oQ/KkZvuS4wmejIZ/lMsl0dn1hYv2b3\nN/kiu1XmHIaUwQGA7gtTPvGwfG1xrqEbAMAbKwAQJbX29K2pohTTPrET/Hc9/joSABgsBgAw\nqFcWYfDEmpNfzB8+fvO3Vj09vIb1e3/A6PmrXPNmjIwsVK9/2FxrvR171kH8kfNRJ1hcm22D\nzFtiwyCEkI7T9rVghJAWyOse6zEZ3Rf8J9hUaBfwLSGk7PcYAJh94yKDogal3COE1Nf8yqQo\npxmXNBesr87OyMj47mlVcyp0E7DN+2aqyne9bwMASy49I4Q8uzIBAPzOPdZcMHvXu/DiHru6\nih+ZFGXz3k7NCildjXii4S/r7xwIAGlPfjVhMzt5n2ypLYMQQjoNEzuE2qnVdiK+8TgmRU34\n8SkhRCkvM2IzLEY6AMCJ5w0PQ8Q5S1j8LuefVqmXSp3SlaKo1IKq5lR4+VQsIbLKax15LL7E\n83m9Ql7zuymHqWfplyOtV82tK7sxRMRTJ3ZVz/YCgFvMNfVqq/IvOQvZPJGHuqSu7HsmRVm9\n5wgAK38tbYUthBBCugcTO4TaqTtJ/VQ/21998TBpvJ0IAPiS99V1Kh8dsuGy2ALbgKlzEuJX\nThrZDQC6T05rZgXNxI4Qkr3TCwDeickihNzcNh4A+CbuM6KWLo360E3Msx09VZ3YEUXNCAmf\nyTGftWJDymfbl0aFmvNFA2z1GSzR1gOHpQqlaoULbAwAgCfyULTupkIIIZ2BiR1C7VRVQRoA\nqAcQIYTcjHcHgK5hFzWrld07O9N3iLlIjyMwcnQbGLv7TL2SNLPCa4kdUcqm2xkyWAYnCqoJ\nIT8dXDOsZ2c9LkvfuMMHs5IqpXdBY7gTae75sNF9rSRCA/POQ98LOXWnpOja+k5iAUfP5Eld\nwxgoObsGAoBr9NWW3jYIIaSrKEJI293QhxBCLefaErc+6345XlTtozHeCkIItWeY2CGEdJKy\nvri/xCpHHFn+aKO2Y0EIobcFDneCENI9EbPnV/967D+VsmnH5mk7FoQQeovgL3YIId3jbKr/\nUG7oH7kldZW/tmNBCKG3CCZ2CCGEEEI0ga8UQwghhBCiCUzsEEIIIYRoAhM7hBBCCCGawMQO\nIYQQQogmMLFDCCGEEKIJTOwQQgghhGgCEzuEEEIIIZrAxA4hhBBCiCYwsUMIIYQQoon/AUWs\ncqoXAFNFAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "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\nf4eInNt5TkQizcaMkzp8c/7Gyxo3RdSNUbnU5pOefGDR3BmD7+7RslG90kUjbJFl73vhz6yz\nFbnh4v35NBavUX53M401X/neon2sPIWVHXtzhC3x8NwN51wikp6884ldcfaoLhMqhF+tam1F\nOt9bLOTUb+OPurwiknJy8dJTycVbzg659A52+X3tDJZsPugc5rw//XJ5v+S3hoz7HgAUHFOw\nCyhwHe8u9/hT239/dpO0vTPbGVLPrBz2yAhFUfbeP9zX0vOpRuPv+Pq9GdsnvXnT9mkviUjL\n5wb4JqneVBFRjJe/3Zxlb1u95/gv3y79YuWq9T9u/GX9ip/XLp8zbdxtE5Z8PrOblh6upAYl\ny/0iFINFRBRDbjeus0Q1/3rHV8VW3lNlwNIXut0z+vi30SaDiKiqW0RMtnJjRvbOdsFijWNE\n5O4BA5M8F+/vULNkiO+Bxk2R7bdyRqe3vd6o1UP7E93RlW+4uUmjm7r0qVSlRq0K6xo1fj7T\nnCb7xY2msXiN8rubaaz5MvcW9ZK7aWjfPnkxPN2vYtMXd0z87OC6AZUPrRyV4lUbjn3Kv09d\n+b4tIo+MrP7GhC1jNh//4Kbie1+fLSK3PN0i8/pd1dcuF7m8X/JbQ8Z9DwAKULAPGRa4xKOv\nK4piNEf/dC4t2xl2vdJKREKK9ve3+M7GWsNberyuRqEWoznKf21B0vFFIuIsMTxTJ+7kXe+9\n994nX/yt5nUqNpP05OPfvPNUjNmoKMr7J85fCZH7qVgtNWTlO7U04a+zmdoPfXOriJTrtibb\nan2nYp89v1T6g1UiROSG8d+fX9jrijEbjZbYq/KD8KybwncereXbezPNmelUbK+iISLy6Ae/\nZJwn/p+JkuVU7CVdXdXi87ubaak5q6ybKNtTsWnnfpIMp2I1jpXnqVhVVROPviIiERWnqKo6\nvXIRxWD+IT779c222mxlPBWrXrhWqViTt1VVvbdYiNFS/PSFX0VcPBWr+bXz7ULNFu7K2Og7\nFTt47yXX6mZ7Kja394vmGrLZ9wCgwOj/VGxI8XufaRTrcZ/q1nnSOU/m/+iUnrJ7wJhNInLj\nxPH+Rt/Z2LT4H6atHftzgqtY83mlrUbfJEdMn1oh5qT/Fn55KiVjP/s/vP+ee+55bHH2/xDJ\nL/nEe5UrV67TZJS/xWiP7dDv8XmVi6iquuqMpv8leiU1fDTu60sbvC88vEFEbh5bI5elSoT5\n7s1m/N+3c60G5dfZt356LFlERDGPrxrhcZ2Y+NOJTN0Or1uxePHin+f831GvyqYQEdUT//GJ\nZJO1zPN9bszYfm7vzjyWvILis8rXbqaxZu2bKOn4JaUe+Xam//Hlb5/sV3Po7dH2+H+e/uXY\nphl/n42s/mSLMEt+q82dPfqOu2MdJ7eN+/fEV28cS4pt+GykKetxs6v52uUit/dLoGoAgPwJ\nbq4MjLSzm2qHmEWkaONeS37YceFWCum/rfmgQ4UwEQkp1umU+5JL1vYv7SQi5jCziDyy/WTG\nSVunNxeRyJr9fj91/jKFuD9XVHWYFUV5fn+8musRO4/reLTZqCjGJ5ZdvHb15J/Lq9jNimLy\n36DLd8QutOQI/zyZDqTlWUNW/ts3DHt1nW9VPe64V0a0EBF7TKfEC3dhyP0+dqqqfvVQTRGJ\nqjPOt8CJXyaKiMVZ58Ofzl8b6E0/987om0WkSJVHcnpFNG4KbUfsPBXsJkVR3vjz4gGYnz95\nrqrDLCIlW33la8n2qIn24uN+W7VkyZJlK7bmskb52c001axlE+18qamIRFS575jr/A4ct+Oz\nmiFmuXjETtNYqrYjdqqqbptcX0Qq964oInd/d/E4tMZ9O6tMR+z8QzQeVFFE+v548ZrTjFfF\nanztrvCIXe7vF401cMQOQCAVimCnquqZnUubxJ7/GZklLLpCpfKRzvNHGkLLtv3maOa7VLiT\n/rQZFBGxOOtlulmx15M0pl1pEVGM9ir1mje/oaZvzqYPf+ybIfdTsZumdfCNG1upbpt2bRvW\nqWRQFBFpN+Eb/xAe9ymrQVEUc8c7et87fHXWTvKsIavhJZwma5lmsXYRsUaUbNiwVrjFKCIm\nW7lFOy9e+pdnsEtP+7dRqEVE+n1y/g4pn41r71ujcnUatW3dvGK0TUSs4fVX5nXvjzw3hcZT\nsRsntxIRgzGkRYfb7ureqW6Vogajs8/4CSJitBQf+OCwZI83py9XjcXneYNiH+27mZaatWyi\ntPgNvruy2aJrdL69Z+tGtewGxeKsUzvE7D8Vq3EsjcEu+eQnvpJMtvL+k6Q+WvbtrLIGO9+P\nDUTEYCpyNO3i2y/TDYq1vHZXEuy0vF+01ECwAxBIhSXYqarqSTv27v/Gdm5Rt2hUuNloDisS\nU69l5/FzPjzuyv72UrOqRYpI1Xu/zzrJ60n+dO64m+tVCLObrSHhtZp1mvXOev/UPH9jt+H9\nZ7q2bBATHmI0mEIjSzTr0PulZb9mGuL7WUPKxoYbTJYqrT7OtpPca8hqeAmnNay5O/Gv2aP6\n1ylXzG42Fylatkv/0Rv+veRubXkGO1VVD618UETMIbX2Jp+/Y9mvX7zUs32jmCJOk9lWtEKd\nu0c8teNsjj+9yij3TaEx2KmqZ8Xc8U1rlrFbjM4isc1uvWfZ76dVVZ0/oFW4zRQSVfpceo7B\nTmPxGoOdmo/dLO+atWwiVVXP7Fw+qEuz2LDzgdJZuuWHO87cGe3IcLsTTWNpDHaqqt5bLERE\nKt71ddZJWvbtTLIGO1VVu0XZRSS2wSsZGzMFO1XDa3clwU7L+0VLDQQ7AIGkqGrm3wPBZ1S5\n8DkHz718JPGBEiHBrgXIW3rS6X+OJFeoUtoY7EoAAMFCsMte8onFIUX7OGJ6J534MNi1AAAA\naMKtlTJLOpdqNSf8r/tIEWk4ZXKwywEAANCKI3aZPVwydP7RRBGxx7T8+/C64nndHRcAAOAa\nQWrJ7MaOLWpWr9v57tGrd3xLqgMAANcRjtgBAADoBEekAAAAdIJgBwAAoBMEOwAAAJ0g2AEA\nAOgEwQ4AAEAnCHYAAAA6QbADAADQCYIdAACAThSiYKd64svbzYqilG6/JNi1FKBzBycpitJ3\nT1xghptcNjy0+JDAjJXVR5P6lI5xRlcarGXmPEvNuOmCu14ZOYyGyn3W5zJDxlJrhlhKNP0q\nIHUBAK5FhSjYndg6+kBquoj898PIuHT+38ZlOvHTpNtuu23jOZfvqcFkMpqCsxclHXut91OL\nTS0enD2tr5b581VqENcrv66jUgEABa0QfR98M2qloihPDa3qSTsyesuJYJdzvUo+tmnFihXH\n3B7f06l/nz777ytBqSTl5JciMmTe5IF922qZP1+lBnG98us6KhUAUNAKS7DzuA4/+vNxZ8lH\nRkx9VES+Gf1NQYziTT/rKYh+AyKAxaupbu9V6MXrFRGrQclzzqu3alencgAACkhhCXZH146I\nc3vrPvFASPH720bYTvwy6qjr/Df0J+1LGwzG7+NdGecfXirMElI9waOKSOLB9SN7dywTE2EN\niaxWv820V1Zm/G5/q2pUkYpz0s7+fM/NNZzWyESPKiK7vnip+80NosNDTBZ78Yp1Boybl/Hk\n738/LurV+aZSEY6YUjUfmr3ywOdtFUU5liEx5D5iJr8sntXuxkqhNktU8cq9R7xwwnXJvONK\nh4WVHpexZfu0GxRFOZDmuYziZ5aPKN/9OxG5I9rh63Zm+YiMv0U7/tPHfW9pGhPhtISEV2nY\nbvrb6/yTFlePDi87+b+1CxqULWK3GEOiSjbuNGD14aSc1yy33pbVjImtt1xExpQKDYnpmXXZ\nrKuWqdTcN13GmbVUnudrmlHuu0e2fl/ydKvaZUMs1uiS1fqMeO6I62JSzbpe56mu53pXNxit\noz/c5WvI134FALguqYXD87WiFMW4IT5NVdUfh1QTkbtWH/ZNOrl9uIi0fGOPf+aUuC8VRaky\nYI2qqolHPqtoN5sd5QYOG/PklPE9W1UQkXr93/LP/GaVyLAyk3qVLdLunkfmzH85zaseWvGQ\nQVEiqt08ZuK0mdOeuKdDTRGp3HeFb/7Tv70QZjKElGwxbPzUUUP7xpiNZesVEZH/XB7fDHmO\nmNFv83uJiC2q/qDhE8Y+cE+VEHORupVE5O7dp30zjC0VGlpqbMZFfp3aQET+SU2/jOL3f79m\n0eR6IjLp4y9Wr9ujqupT5cKdxe7zTT3xy7NhJoM5pMqAh8ZNG/9wu2oRItJu0jrf1A+rRdki\nWpe0Glv2e3jOyy9NfPA2s0FxxHROz+Ely7234z9+99GCJiIy5L3PVn33a9bFs65axlLz3HQZ\nZ86z8jxf04xy38JZ2Q1KeJVWRoO5Y6/7npj4aNcWpUUkut79yRf6zlhqDYe5eJOVqqqqXvcL\nfWsqBvOId//0TcrXfgUAuE4VimDnTvrDblDCK0z0PY0/8JSIxNSb73vq9SRWdZjDy030z//7\nMw1F5JWjiaqqTq0ZZXZU33gqxT/1s1H1ROTJv8/6nr5ZJVJRlI4vbvXPsKhmtMlW5mDqxcTy\naMlQe9RtvseDSjqtYY13J7l9T09uma8oSsYQkOeIfukp+2ItRkfR2/485/K1JB5eU9Vhzlew\ny1fxqqr+s6yNiCw9lex7miFVeO+KdZgd1df/l+Sb5HGfHF0/WjHY1senqar6YbUoEWk8dd3F\n9bqrgoh8eyZVzUYevamqemL7bSIy+3BCdotns2oZA1Cemy5TsMu98jxf04zy3MKZ2A2KiIz+\n9MIfHl73mw/UEpEenx/Iul7ng53XPX9AbUUxP7zoD38/2vcrAMD1q1AEu78+aCcibd7bd/65\n193AaTEYnftSzn+5rry9vKKYtySc/47vXzQkpNhAVVXdSX8aFaX26J8z9pZ29nsRqT3mfOOb\nVSIVg+14hq/wpDOnT8cl+p96PYkPlXDaItqqqppy+gsRqT95W8YOnygb5g8BWkb0+2/DnSLS\n/etDGRt/HlM7f8FOc/E+OQW75JNLRKTWiM0Zx4rbNUZEWn/8t6qqH1aLMhgdR9MujrV/SeuM\nXWWUZ2+qlmB36aplDEB5brpMwS6XyvN8TTPJcwtnYjcozuJDM7a4U/Y5jIaYum9nXa8aDnOx\nJstfHlxPRMp1W3ZxkfzsVwCA61eh+I3dmxN/EZHSfy95zuf5uTUjrF5P4shvD/tmaDrrblV1\nT1hxSERSTn70zvGkG2dMEJHUuK88qvrHc42UDKwRrUQk/o94f/8WZ71Y88Ut6YiITP7rhzkz\nHr+vX6/2rRqXjopacDTRNynl1KciUvGuMhnLa9s4xv9Y44g+J344ICK9G0RnbKw4qH6+No72\n4nOXeuZrEanQv3zGRmfp/iLy37fHfE9NjlrFLRfHUkw5Xvegpbc8ZVq1jPK76XKpPM/XNJPL\n2MJFat95STG2SrdG2pKP/5DtzCe33TPsnX8aRVj//foh/11p8rVfAQCuX6ZgF1Dg0uK//9+B\ncyKyaMpjmSZtGr9Yuo4XkYjKU24MfXbrlI+l92O75s0yGJ0v3V1RRMRgEZHa4958tk2JTMta\nw+v5HyuGkIyTlo5u23PO2pL129zWukmX5p1GT697ZGj74SdERFRvWtYKL8k32kY8P6/JICKZ\nrgo12IpkHSIj1XvJ7/S1F5+XbH7+rygmEVEvXBmgKGYtHWnsLU+ZVi2j/G66XCrP+zW91GVs\n4ax9mRRRDNYc6lFmrvxjcMSbsY2m9Lrz1X+/HS6Sv/0KAHD90n+w+2vRYx5VvenV3d8PqXqx\nVU1vFuHcvHfKb0mj6oaYRTHPvqNc63em70weO2PhntiG82o6TCJii+xsVEamn63asWMz/6Lp\nKbuXfvFbsbqObIdzJWzuNWdt6c4LD64Y6m9868IDW5G2Ih/u//RfqRnln7rhp1P+x/kaMaZl\neZGfF28/3bNdKX/jsTW/ZCnqknt9HN+S4z+lyL343NmKdBR545/3D0iDWH9j4uF3RaRo26La\n+iio3rLSvOm0lJrHa5rR5W3huD+XibT3P/WkHVh+OjWsafZ374u94b3x7UuJTH61yxtDVzw8\ncWPPp5oVvYw9GQBwPdL/qdjnn/5dMVhf6FPhklbF9OzdFVRv2qhlB30NDaYNVb2pw96buuxU\nSo/53XyNJlulqTUi9707YM2xZP+iHw7r1qdPn0M5bLn05N0eVY2sd4O/Jfm/jc8dSfAdgnLE\nDugWbd8xe9j+lHTf1Lg/Xnti/8VzYfkaMbrO07EW47cDRuxJOt+bK/63B8ZtyziPw2hIjfvy\n1IX7bqSe3vzQd0dy2la5F5+RmuWomT36jh4xjt2v3LvpZOr5edLjnu77umKwTu5SOqcRc3J1\ne8tKy6bTKM/XNCPtWzijxKMLHv9y/4Vnng/GdEv0eLs90zzbmRXl/I4y8MNPy9pMc7r2j0v3\nXsaeDAC4LgX7R34FK/nkxyISXef5rJMSj74sIuHlH7/Q4G0bYVOMisVZLznDT94TDn5Uxmoy\nO8rfNXjE/56e1q99DRGpPfBd/wxvVom85JfvnpR2UXajpdiwqbPffH3BpEf7F7NHNC8fajBF\nzH3v40SP9+TWOVFmo7PMzY8+MXPCw4NK2OzdG8eISHy6V+OIGf02r6eI2GNuHPropEmPDqlX\nxFa+02DJcPHE1kkNRaREi74vLHzj2alja4ZZHKUckuHiiXwVr6rq4TUdRaTD5Hnvf7hZvfSX\n+8c3P+00GiyhNYaMnDhz0qiONYqISJuJa3xTP6wWZQ1rnrH4TNdhZJJ7b6qGiycyXZGQ+XYn\nuW66TBdP5F55nq9pvrZwJnaDYo2xKQbrbf0enD513O2tyolI6Y4z/LNmf7sTVVVVddcrt4lI\nw4k/qPncrwAA1ymdB7stj9cVkd5rDmc79fZou6IYf7hw+4zNI2uJSI0Hf8w029k9X9/fvVWx\nCKfFEVmtXospr33lzvD9mzVAJB5aPaBT45JRIWHFKtx86z3Ld8Sd3PJMuSIOizPmcFq6qqpx\nf3zSvXXDaIe9eJVms5btXnVLGcVo1z5iJpvff6p1/QpOqyk0uvQdw+YnJO7MGOy8nqT5o/pU\nLVvMrCgiUrJ5/x833pJjsNNQvCtxe5cG5WxGU/E609Qsaenoj+/3bt8oKsxusoVWbNB62ltr\n/ZPyG+xy70294mCX+6bLV7BTNbymfnlu4UzsBuWm97e9PmVIvfLFbCZLTJnagye9ljEy5hLs\nVK/rvorhBlPY58eT1XzuVwCA65GiZj2phgKkbt26zRJepXalUH/T61WjHjnVNPn0igId2Jt2\n7vDJ9DKlIgt0lEIpaK8pAACZEOwCrUm4bVf4sPhDz/mepifvLBtZx9LhiydN1swAACAASURB\nVH++6BzcwnDZeE0BANcI49SpU4NdQ+Fyo+mHeUvfW30g3Zx25o/N30waNGD7Kesra1+s6dR+\nKxBcW3hNAQDXCI7YBcGX88Y++frnu/46kG6NrNes44ips3s2zPF+trgu8JoCAK4FBDsAAACd\n4B5WAAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADoBMEOAABAJwh2\nAAAAOmEKdgEFKyUlxePxBLuKi0wmk9Fo9Hq9brc72LUEjtFoNJlMIpKWlhbsWgLHYDCYzWYR\ncblcher/u1itVhFxu91erzfYtQSOxWJRFMXj8aSnpwe7lsAxm80Gg6GwfaD5PsZVVXW5XMGu\nJTOn0xnsEhB8Og92LpfrmvrEcTqdZrPZ7XanpqYGu5bAsdvtZrNZVdX4+Phg1xI4ZrPZ4XCI\nSGJi4jX110WBUhTF99WSkpJyDX7tFRy73W40GgvbW9tisZjNZpfLVajW2uFw2Gw2j8dzDa41\nwQ7CqVgAAADdINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKAT\nBDsAAACdINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsA\nAACdINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACd\nINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AlTsAsAgAIR+uz0gI2VLpIuIlNmBWxEAMgWR+wA\nAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0\ngmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAH\nAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACg\nEwQ7AAAAnSDYAQAA6IQpMMOo6WeWv7Xwq007TqYYy1So1fOBh5qWDhEREe+6xQuWr9/2b4Kx\nWq1GAx8eVMHhLymnSbksAgAAUHgF6IjdmpljFq053XXImJkTR1Q373pm9PgTbq+I7F86ac5H\nm5r0GDJlZH/n32smPvqK98IiOU3KZREAAIDCLBDBTlXTXtl2qsbIcbc0rVelVoPBj03xpB5a\ndDhRVNfzH+2q2Gd6z3ZNa97QcsQzw5P+++b9I0kikuOkXBYBAAAo3AJzxE71qmK0nB9LMdgN\niuLxqmnx6w+letq3L+lrt0a0qO+0bF13TERympTLIgAAAIVcIH6dpii2Ea1Lz3t+7sbHB1UI\n9X7/8XPmsFqDy4S6TvwuIjUcZv+c1R2mr3+Pl77iSsp+kuvmHBfx2bFjx7vvvuufOnDgwPLl\nyxfs6uWHyWQSEaPRGBoaGuxaAsdoNIqIoiiFaq0NhvN/yYSEhKiqGtxiAs9ut1ut1mBXEWhW\nq9W3txcSvg80k8lUqN7avpfYYDBca2udkJAQ7BJwTQjQZQdN7x35xebxsyaMFBFFMdzxxJRY\nsyE+LUlEokwXjxpGm43piaki4s1hUk7t/qcnTpxYvXq1/2mPHj2uwW8Xg8FwDVYVAIVzrS0W\nS7BLCAKz2Zz3TAUsLeAjGo3GQhXsfArnB5qiKNfaWhPs4BOIYOdx/TfxgQlpzfq+3Ld9rMO7\nc8Pn058abpr5+m2hdhE5k+51XvgoPO32GCMsImKwZD8pp3b/WLGxse3atfM/DQsLS0sL/Md7\njkwmk9Fo9Hq9brc72LUEjtFo9P1lf029FgXNYDD4wo3L5SpUR+x833Zut9vrLXTXNXk8nvT0\n9GBXEThms9lgMBTODzRVVV0uV7BrAbIRiGAX98fLe5IM7w27PdSoiEjddv2HLV/1xvyfezxZ\nW2T9npT00tbzKW1fSnp4iwgRMYdkPymndv9YNWvWnDVrlv9pfHz8NfVHjNPpNBqNHo/nmqqq\noNntdt/nYKFaa7PZHB4eLiJJSUkejyfY5QSI/zBGSkpK0L/2An+eLC0tLTk5OeDDBk1YWJjF\nYklPTy9Ub22Hw2Eymbxeb6Faa1xHAnHxhNFqE9Ud77n453tcarrRarVFtC5hMX7z4wlfoztp\n+88JrgbtiolITpNyWQQAAKCQC0Swi6h2f3Wn8fFJL27avvPvPX8sf2vmu8dcXYfXF8Uy5s5q\nf709dfXWPf/t//PNyc85irftX8opIjlOymURAACAwk0JzK9/XPF73l743tbd+0+nGEuVrdS+\n19BbGxQTEVE9q9554aNVP59OVSrWbfXAqCGVQi6cHc5pUi6LZBEfH39N/fjD6XTabDa32x0f\nHx/sWgLHbrf7rgw9ffp0sGsJHP+p2DNnzhSqU7FRUVEicu7cueCfin12eoBH9EyZVQhPxbpc\nrnPnzgW7lsBxOBwOh8Pj8Zw5cybYtWQWHR0d7BIQfAEKdsFCsLsWEOwIdkFBsCtoBLtg15IZ\nwQ4SsH8pBgAAgIJGsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAA\nQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcI\ndgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAA\nADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpB\nsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMA\nANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJ\ngh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJgh0A\nAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJgh0AAIBO\nmIJdQMGy2Ww2my3YVVxkMplExGg0hoaGBruWwDEajSKiKEqhWmuD4fxfTSEhIaqqBreYwLPb\n7VarNdhVBJrVavXt7YWE7wPNZDIVqre27yU2GAzX2lonJCQEuwRcE3Qe7Lxeb7BLyN41W1hB\n8EUcVVUL1Vr7eb3eQhjsroWXO/DnI66FtQ4k345d2Nba/zdboVprXEd0HuxcLpfb7Q52FRcp\nimI0Gj0eT1JSUrBrCRy73W42m0WkUK212Wz2HbJKSUnxeDzBLidAFEWx2+0ikpqa6nK5gltM\n4A+nuFyu5OTkgA8bNEajsRB+oDkcDrPZ7PV6C9Va4zrCb+wAAAB0gmAHAACgEwQ7AAAAnSDY\nAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA\n6ATBDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATB\nDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAA\nQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcI\ndgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAA\nADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpB\nsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMA\nANAJgh0AAIBOEOwAAAB0whTsAgAAV03os9MDNpYqkiaizJgdsBEB5IkjdgAAADoRuCN2/2xY\n8v7KjTv3HAkvVfX2e0d2qB0pIiLedYsXLF+/7d8EY7VajQY+PKiCw19STpNyWQQAAKDwCtAR\nu1Nb3xz5zAdRDTtPempyx+qpC6aO+iPZLSL7l06a89GmJj2GTBnZ3/n3momPvuK9sEhOk3JZ\nBAAAoDAL0LGuBc+vLNV52oPda4tIjaqzDvw3ZfO+c7XrhD7/0a6KfWb3bFdRRCo9o/Ts/8z7\nRwb2Kxkiqiv7SSXMOS4CAABQuAXiiJ0rYdOWBFennpX9g46cOmNI3ai0+PWHUj3t25f0tVoj\nWtR3WrauOyYiOU3KZREAAIBCLhBH7FznfhGRoju+HL94xd/HUoqWrdil/8O31CvmSvpdRGo4\nzP45qztMX/8eL30lp0mum3NcxGfLli1z5871Tx07dmyNGjUKdO3yxWAwiIjJZIqIiAh2LYHj\nW2tFUQrVWiuK4nsQFhamqmpwiwm8kJAQh8MR3Bo8AR/RZrNZLJaAD3uJwK+12WwuVG9t3wea\nwWC41tb67NmzwS4B14RABDtP2jkReX7BD73uf3BwUeuu9Z8snPJg2vx3W7uTRCTKdPGoYbTZ\nmJ6YKiLetOwn5dTuf5qQkLBr1y7/09TUVJPpmru0QlGUa7CqACica200GoNdQhBcC2sd+Ihj\nMBh83/pBFPi1LpwfaIVzrXFdCMR+aTAZRaT1lCm3VysiIlWr1/1v413LFvzZdphdRM6ke50X\nvgNOuz3GCIuIGCzZT8qp3T9WyZIle/To4X9apEiR1NSLsS/ozGaz0Wj0er0ulyvYtQSO0Wg0\nm82qqqalpQW7lsAxGAy+gzdpaWmF6oidzWYTEbfb7fEEPmNcQgn4iOnp6enp6QEf9hKBX2uP\nx+N2uwM+bNCYTCaTyVTYPtBwHQlEsDM5KotsalU21N/SuLhj/amj5pDaIuv3pKSXtp5PaftS\n0sNbRIhITpNyWcSnSpUqjz/+uP9pfHx8YmJiQa+gdk6n02g0ejyea6qqgma3281ms4gUqrU2\nm82+YJecnBz0iBMwiqL4gl1KSkrQ/3oJzXuWq8zlciUnJwd82EsEfq0L2weaw+EwmUxer7dQ\nrTWuI4E4a2Ar0rGIybBqb/z556pn3ZHk0IoVbRGtS1iM3/x4wtfsTtr+c4KrQbtiIpLTpFwW\nAQAAKOQCEewUY+j47pW/e2ryZ+u3/LXn90/mjV+faB74QDVRLGPurPbX21NXb93z3/4/35z8\nnKN42/6lnCKS46RcFgEAACjcAvTbzxr9nn5Q5i19ffZ7aZayFas/MuuJZhFWEanU68mH0l5Y\nPGfy6VSlYt1WT04f4k+aOU3KZREAAIDCLFAX9SimDv1Hdeiftd3YfsDo9gOyXSSHSbksAgAA\nUIhxtAsAAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgE\nwQ4AAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4A\nAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAn\nCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAnCHYA\nAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAnCHYAAAA6\nQbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAnCHYAAAA6QbAD\nAADQCYIdAACAThDsAAAAdMKUr7njDu8/meTO2l61atWrVA8AAAAuk9Zgl3pq9R0teq3cE5ft\nVFVVr15JAAAAuBxag92r3fp9tS+hy4MTOtUpZ1IKtCQAAABcDq3B7slfTlbo9enyBV0LtBoA\nAABcNk0XT6iehJNuT9ledQq6GgAAAFw2TcFOMTpvjrDtf3tLQVcDAACAy6bxdifK4hUzXF/d\nM3DGouNJ6QVbEQAAAC6L1t/Y3Tnh86LFzYsmD3xnyr2RxYrZjZdcQPHvv/8WQG0AAADIB63B\nLjo6Ojq6Xdl6BVoMAAAALp/WYPfZZ58VaB0AAAC4Qvn7zxO6FPrs9EAOlyZiePK5QI4IAAAK\nifwFu+Qj25d8vmrn/qPJHlPxCjU7dL/zhtLOAqoMAAAA+ZKPYLd0cu++T32c5r3438Mmjnyg\n58T3P5p+RwEUBgAAgPzReLsT+eeTvnfO+Ci21eCPVv105MTpMyeP/vLdkntvLvrxjDv7fXqg\nICsEAACAJlqP2M0e+YWz5MDdq19zGM7f6OTG1nfc0OoWb9liHz/8nPR4scAqvCI2m83hcOQ+\njzcwpWRgMpnCw8MDPmzQGAwGEVEUpVCttaKcf6eEhoaqqpr7zPoTEhJit9uDW0Pg39o2m81s\nNgd82EvwgVbQfB9oBoPhWlvr+Pj4YJeAa4LWYLf4ZHKVSSP8qc5HMThGDK+66IkPRa7RYOfx\neNLT87ijcuCvH/F6vS6XK+DDBo3ZbDYajaqqFqq1NhqNJpNJRFwuV+EJdoqi+JKN2+32eDzB\nLSbwb22PxxP0nTzwa13Y3tq+DzQRKVRrjeuI1g8Bp8GQejw1a3vq8VTFeO1eP+F2u91ud+7z\nhAamlAy8Xm9KSkrAhw0mi8UiIoVqrc1ms81mE5G0tLSgR5yAURTFd4zc5XIF/Wsv8G9tt9sd\n9J088Gvt8XiCvtaBpCiKxWIphB/juF5o/Y3dyMrhf73z0JYzaRkbXfHbhr++N7zSiAIoDAAA\nAPmj9YjdoCXTp9R8uHm5uoOHD2pep5JNUv7+Y+Pb89/cm2yZ98mgAi0RAIBcBP52pKaZcwI5\nIqCd1mAXUfWhnatM9zz0+MKZExZeaIysetNLL737QLWIAioOAAAA2uXjh7alWg9dt2vI4d1b\nd/x9NE2sJSrUaFC9tNZTuQAAAChg+b2CSilV7cZS1QqkFAAAAFyJ3IJd/fr1FYN129bNvse5\nzPnrr79e5boAAACQT7kFO6fTqRisvscREfyQDgAA4JqWW7D74Ycf/I/Xrl1b8MUAAADg8mm9\n+KFp06azDydmbT+28ZGWbfpd1ZIAAABwOfK4eOLcP3/95/KIyObNmyvs2rUnKezS6eqfX67f\n+MOBgqoOAAAAmuUR7JZ2ajx4b5zv8QcdGn2Q3Txh5YZd7aoAAACQb3kEu2bTn194NlVEHnjg\ngVYz5vSJsWeawWAObXrHnQVVHQAAADTLI9hV7TWgqoiILF68uPvg++4v4cw0g+pNTkhKF7EU\nTHkAAADQSusNinO6Kvbw6tsrdN3tTj149UoCAADA5dAa7FRP4vyRQxat2XI6JT1j+7FDBxV7\njQIoDAAAAPmj9XYnv06/+ZH5i89FlK9SPP3AgQPV6tSrW6ea6fRRJbL1gs+/LtASAQBAYeMw\nGir3WR/sKoJvTsUijqgu2ufXesTu8Rd3RNV6cu/GiaonsYKzSIv570wsHZpy4vta5Tsnlgi5\nrFIRTKHPTg/kcGkilllzAzkiAACFkNYjdj+cc5Xr3UVEFKOzX6zju22nRcQe2+qdgeWevPO1\nAiwQAAAA2mgNdkVMijvB7XvcuFTIkc+P+B6X7VHq7F9zCqQ0AABwLVBdaenqNd1hrrzpZz0B\nGyzYtAa7+0qG/vXWrH/TPCJSumvJwytf9bUfW3O8oEoDAADBs7h6dHjZyb+8OqpUuNNuMUbE\nVrjn8Xe8IlveHl+/XFG71Vm+RuOpH+7MuEjiwfUje3csExNhDYmsVr/NtFdWeq+sw9+XPN2q\ndtkQizW6ZLU+I5474vJoHO6tqlFFKs5JO/vzPTfXcFojEz2acuR/G96/q/2NUaE2R3hMk1v6\nfvLLSf+kXV+81P3mBtHhISaLvXjFOgPGzYvLkE297lMvTRhcp2Ixm9kcFlW6ba9HNp9K9U0a\nVzosrPS4jKNsn3aDoigH0jwaO88Xrb+xu//NIdNbz64YXWbPyUMV+9+X/NiDTQcV7VHe/dxz\nf0bWnH15YwMAgGtZ8on3Www/03fkE41LW79Y8PT7Tw/Ys/+NHWuSR42a1N/zz9ynXpze78Z2\nt55tEWYRkaSjy+pVv+uQUrLvoCGVoo2/rftk6gO3Ltv41q+LBl5ehye3TW7w8cZ2PQeM7hb6\n2/dLFs8bs3r9vkNbF9oNomU4b3rcgHqdTrfsN3PeI3aDkufKHvvxyco3T1GjG/a/f3ysMe7T\nN17v3fzrc3v+ubd82L9fDqvV/eWwqq3ue3h8pCV954ZP33l2xKajFfe+d6tv2Rc61xuz5ljr\nXkN73lf63KEtC197qd0Ph84cWWbOe1jJs/N80Rrsird65telxae9stygSEjx+z8cuaTvC7M3\nq2pYxY5Lvr7/MgYGAADXuPTU/WPWHHm2TQkRGdC3pj2qy6/L/vr+2P7mEVYR6Vrxt0p3f/fi\n4YQWNaJEZHaH+w4plb4/tK1plE1ERGYtG13/9ucHPTXl9okVwi+jw/i934/+dM/s26uIiKjP\nvPVQ/cELX7lnxWNLu5bVMlzCv0+dnbdl1fAGmlZVdfXr+pQ3osO2v7+oFmIWkcfG31myWJtJ\nd6+8d1PvteM/NlhL/7Z9dRmrUUREpseUClv49Ssit4pIesresWuOlu60ZM2HPXyd9Qht3vWt\nDZ+eSumV5V92ZZV75/ml8VSsNy0trUb3Rz/9+ruyVqOI9Hp+VdzB3dt3HTy17+v2sXkXDQAA\nrjtmRzVfCBMRW+StoUZDdK0XfCFMRGKatRSRFLdXRNKTd8zYGVftwUUXYpaISOfJc0Xko5f3\nXkaHIuIsPvR8qhMRxdRvzmcOo+GHyeu0DqdY37m/nsY1TTgyZ/WZ1BuemetLdSJii2y17OX5\nT9wbLSJ3/rjn+NGdF4KXqN6kNFVVPcnnxzHYLYqc3fXpln8TfC1Nn9lw8uRJLakuz87zS9MR\nO9WTEOEo0viDfet6VfQ3hpWuUvfyxgQAANcDgykq41OTItaYIv6nisHsf5wa95VHVf94rpHy\nXOZO4v+Iv4wORaRI7Uv+Gb3JVunWSNvK4z+IDNAynMVZL9as9VqCc/vWikjzNkUzNra898GW\nIiLiiIiM++XrRV+v37H374OHDuz6/bcjZ9NsEednM1pLf/N0vy6Pv9eo7IdlazVu1qTJTW06\n9ryzQ6RJw4nYvDrPL03BTjGGj64e+c6bv0iGYAcAAHCewSIitce96T8g52cN13rYLJOsscik\niGKwahxOMeTjPrveNK+IWJTso9jS0W17zllbsn6b21o36dK80+jpdY8MbT/8xMUZbhq36MTA\nx5YtW7Fu/Y8bVr39wWtzRj3aZNmfa9tnOKDop3ovuTAiz87zRetv7J74YeX25rcOm2effn+X\nqAtHCwEAAETEFtnZqIxMP1u1Y8dm/sb0lN1Lv/itWF3H5fUZ9+cykfb+p560A8tPp4Y1bVsQ\nw4VVaSCyasPPp6RsmL/xu/EPvnu6yCtzuvaas7Z054UHVwz1T3orw7LuxD3bdpyNqntD76Fj\neg8dIyK7vppRo/PkEZN+3flyU1/tGcc6viXO/9iVsDn3zvNL6yHKLndNTCla5uWRt8c4QouX\nKlv+UldQAAAAuO6ZbJWm1ojc9+6ANccu/jjsw2Hd+vTpc0hr1sgs8eiCx7/cf+GZ54Mx3RI9\n3m7PNC+I4cLKPlbXafnpkTH/pJ4PYa74Tf3nvrbi59j05N0eVY2sd4N/5uT/Nj53JEHk/IG3\npOMvN2nS5K5Zv/pnKHdjQxFJT0oXEYfRkBr35akLPxxMPb35oe+O+OfMs/P80nrEzmaziZS4\n9dbMBzwBAABEZOTKBa9V6XtLxVq39+56Q+XIP7/76N1Ve2sPfLdf7GUesbPG2GZ1rfFn38EN\nK4b+uvbjz74/ULrjjJeaFi2I4RRj+OfvPVT59rm1K7UadE/HYuazn7228D9PyEtLBjpibO2i\nHlr7bJfh5jE3lHLs37H59YVfVCxmc/27bd77n9zb587wctPaxby6ZsZNnfcPalKzgvfsgWWv\nv2k0R02dWV9EuvarMu3JX+q26T/unjbuY7vffn7u8WiLHE73jeuI6Z175/ldEa3Bbvny5fnt\nGgAAFB7OMnf9/nv4+PFPf/7pG8tclgpVakx57atJ93a67A4bv7Cx/96X57/z2aoP40JLVB08\n6bU5U+/1/wjuqg9XttucXSurjZo5/50XZ6QpzpqNb1v05Av3VIkQkWW/Lh82dOKyF6e8ay7a\n4IZmr23Z3yTl9Ybtp459YNgdPXuEWMK/+GP1+BFTPv/q/VXvJ9mLFG/Q8u4lU/7XvZRTROpP\nWzc/+b4Xl64Z++AHblUt2bz/t8+ebNHsq/OjGmy5d57ftVBUNXD/0yPw4uPj3W537vOEPjs9\nMMX4GZ58Lj4+Pu/5ClLg19oya+7p06cDPGgQmc3m8PBwETlz5ozHU1j+mY2iKFFRUSJy7tw5\nl8sV3GICv5N7psxKTr7MOxRcLYFfa2XG7HPnzgV40EwCv9ammXPOnDkT4EHzFB0dHewSkBtv\n2rnDJ9PLlIos0FG0HrHLPYj4vsCAa1yAP/3TRKz/mxfIEQEA1yyDNaxMqQIfRWuwi4jI7YYq\n+j7sBwAArl8HPutSf/CGXGawhrc6dmBZwOopUFqD3dSpUy95rqYf3b9z2Uefxyklp74886qX\nBQAAcFWUu33FmduDXUSgaA12U6ZMydr4wrM/ta3S6oW5WycO6ntVqwIAAEC+Xe69ZURExF60\n8WvT6536bc738WlXqyAAAABcnisKdiLiKOVQFGNVhznvWQEAAFCQtJ6KzZbXfXLOE9vNzvrF\nNP+TXQCBF8jLgc8fvZ/4ZMBGBAD4aQ12TZs2zdLm/W/f7wdPp944O1TxeAAAIABJREFUaf7V\nrQkAAACX4UqO2BlK127Tve09z0xsfNXKAQAAwOXSGuw2bdpUoHUAAADgCuUW7D7//HONvXTr\n1u1qFAMAAK4Jp06dKqCe+ddnBSq3YNe9e3eNvfCfJwAA0JmCuO4qYezkq94nMsot2K1bt87/\n2Os+8UTfgb+klBj88NA2TWpFGFP37di08JkX/yt957qVzxd4mQAAAMhLbsGuVatW/sdrH6j1\nS3Ll9Qd/ahxp9bW073z70GGDbi5e/86J/Xa90aFgywQAAEBetN5/btwH+yre87I/1fmYHNXn\n3Ffl74/GFEBhAAAAyB+twe6vlHSDJbuZDeJJO3w1KwIAAMBl0Rrs7opx/PXO+ANpnoyNnrRD\nj7+xzxHbuwAKAwAAQP5oDXYTF96ddvb7urVueeHdzzb/umvX9p8+f39e59p1Vp9J7fPyhAIt\nEQAAAFpovUFxma6vfPeC6a5xrzzaf5W/0WiJeeiFNS91LVMwtQEAACAf8vEvxVqPeOno4LHf\nrFj1599H3QZbyUq123XuUMZ5Jf+UDAAAIPgizcbbd556o3KRYBdypfIXy8yh5br0GdIlh6mt\nqlX+fve+K68JAAAAl0Hrb+y0OHzwwFXsDQAAAPlyNYMdAADAZXMn7hh39y1VSkY4Ioq27T3m\nj0S3rz3lxMYHb7+pWITTZHWUr9Vy5ie7fe0Hvl54a8MakSHW6JIVuj0w65xHFRFR0xRFeerf\nBH+3Jayme/edyaUfPSHYAQCAa4DqGlK/+Zu7ivzvrS/XfLow9rc3bm78mG/KhOa3Lj1a440v\n1mz5cdXI9t4n+jT6J9XjOvdDnS7DpNOjK9dv/nj+mK1vT+r84s7cR8i2n4JfsYDi0gcAABB8\ncbvGvrPftS7u7ZvCLSJSZ82pLn0/+M/lLW4xlBv62BsDH741xi4i1So+PvKFLr8muaISvk7w\neO9/qG+T4g65of7qpcX3OaJyHyLbfsrb7AFYu4Ah2AEAgOA7/MVGW5EOvlQnIiElhqxdO8T3\neOSoB9d+sfSZP/ccOLB/+49f+hqdpR69p+FbPcqVb3VLhxbNm7e/pftttYrlPkS2/egMp2IB\nAEDwedO8isGWtd2T9m+XyqV6Tf8w3hjVsss98z5539duMEW/+/PhP757q2vDUru+e6d9vVK3\nTFiVdXERSfWqufSjMxyxAwAAwVeyS53UGUu3JLpvdJpFJPn4uxXrjXtr54EbD43+6mDqf6nL\ni5oNIpJ84nwgO77h+ac/c70we0L15p1HiOxc2Kz+2HEy61ff1Di31/cg+cQnZ9K9InJmd/b9\n6AxH7AAAQPBF13vxtqLeW9sNXbH2520bvnqow6Opzq6dilitUQ1Vr2v24nUHD/+z8ZtFvduM\nF5Gdf58wxSbMfe6x/k++vfnXP35at+zpl/aEV+0pIqJYm4RZFw+ZuXXPwT82fTW47QMGRRGR\nnPrR2dUTHLEDAADBpxidH/3x3Zghj4+4u/1JT/gN7e5b9/J0EQktNfbrZw488niv+edMdRu1\nnbp0R7F+tae1qHVLXNxXz50aP3/8TVPjwouWvqHNfeteHuvr6otvX+x938yWNWeneLzNB83v\ndWJc7v3c4DQHc82vKoIdAAC4JlgjG724dPWLWdo7jn1pz9iX/E87/XzoVd+jUS92GpV1dolp\nPGTNH0NUb8rxOLVYtENkWB79iMS5dXLkLn/Bbs+ajz78ZtOhE3E3/W9hb/PGn47WaVUr1j91\n6gvzrnZ5AAAAl0Mx2ItFB7uIgNMe7NQFg1oMe3uj74njiXm3Js5rXX/FTfe9uPqVYSZFRKTf\n/Q8WSI0AAADQQOvFE3+/32PY2xvbDnvht31HfC1FKj8zc2jT718b3nWhDv8jBwAA+H979xkY\nRfW2cfjMluymV0ISQg0ldFBA+NMVFBRQkCYgRZo0BUGlSG8iVSkCKiKggLSXIqIUpYioCBaQ\nIkgNnYSQvm3eD4shgWRZMNlNTn7Xp8yZOTPPmU0md6YF+Y6zwW7S0O1B5YfvmPd6ldIR9had\nV/TwhT+Mrxy8e9zEXCsPAAAAznI22K29kRLVvdP97a27lkq9uTlHSwIAAMCjcDbYFTNoE/6+\nfX973NF4rSHioTaZeisu2aY+VBcAAAA8kLMPT4x8IrT7iq4Hph6tHXL3330kX9rVY/U/IY8t\ndtDxHqk3f+zZ690GH37RN8xbCCGE7ftVCzbvOXQhQRtdqVb3QT1KeaWXlN0sB10AAAAKLmfP\n2LVZvbiYcr5hyWp9h00QQhxdtWTim90rlHnmvC187pr2Tq5EtaUsGP5+gvXu6bp/1r0ze/WP\ntdv0Hju4q8/pnaOGLLI9aJaDLgAAAAWZs+e6PAs9e/j3Ta/2HfrxrHFCiO/fGbpb0VZs3H7D\nvAUtwr2dXMnhpaMO+zcSV7femVZNs1Yfi3ppRrsmUUKI0u8p7bq+93lM95eLeGc7K0KfbRcA\nAJBzEt4c4+4S8NAe4iKmX5nmX+xq/sn1M0dPX7JoPSPLVIwMMDjfPf7U+inbUqd88uKwzneC\nXVr8nvOp1n5Ni9gnDQH1qvvM+fX7Ky93jspuVvvnzmTXxflKAADAAxU6ciLH13m9UrkcXycy\neui70zwLlaxRqOTD9rKZLk8e/XmztxeV8dKmN5qS/hBCVPC6+w/aynvptv0RLzpnO8vUKNsu\ndgcOHJg6dWr63PHjx1euXNlxbZaHHcx/ptPpAgMDXb7ZTFw/akVRCuCohRB+fn7u2Gwmrh+4\nj4+Pqrr5GSnXj9rT09NgeIg/d3OD60et1+sL4I+2Vqt1+6jvERcX5+4SkCc4G+ySkpKy7q83\nGDwevJKv3xt967EBvR4PUa13v/NsaUlCiGDd3fv8QvRaS2Kqg1kOutilpKTExMSkT5pMJq32\nbpTMklsizgOrym1uiTiM2l1cP3CNxtn7d3MPP9quUTBHLfLGjzZwP2eDnY+PT3azNDqvIiWj\nnmj4TN+ho5pEB9y/wLUD8z89FrZwaaN7O3p4CiHiLDaff388bpqt2gAPB7McdLErXrx4t27d\n0ieDg4NTUlIcD831v39sNltaWprLN5uJ60etqmpqauqDl8tNbskaqampbj935fqBm0wmq9XN\n/1Hb9aO2WCxms9nlm83E9aO2Wq0mk8nlm82kYB7QgCw5G+wWfvjB4uFvHk5QqzV6pmb5kp6K\n+fyJX7bu/NW3WttO/wu+fP7k3hVz1i/9eOGxs71L+9/T9/reP0wJl1958YX0lq/6vLTdu+qK\nBfWE2HMixVLUcCel/Z1i8a8XIITQe1fOclZ27elrLlWq1KBBg9In4+PjszvXmM7XyV2Qc6xW\n6wOrym2uH7XI/ryvy7hl1CkpKW6POK4feGpqqtt/2bt+1CaTKTk52eWbzYQDmmvYbDa3jxrI\nkrPBrubNNQPTwlYeOtihakh6Y+yfa2vW7uYz5eSXzxQx3T7RpUKNUe0/732o/z19o7qOnNX6\nzl+xqu320GHj6o6a3C402BgQEuGx8Jt915q0KCqEMCf99nOCqU2TMCGEMaBxlrOMAcWy6wIA\nAFDAOXsCe/D0n6M6r8iY6oQQQZXbruhWfM7LbwghPPzKvTe/1q3j79/f11i4eOl0USWFEAHF\nS5UqGSEUj2Fto08tHbfj1xOX/zmyZMxMr/Cnukb6CCGyneWgCwAAQMHm7Bm7o8nm4kWzeFec\ndzHv1Lhv7V97FvG2mi491OZLd5jUP23OqtljbqYqUVUbTprQW/OgWQ66AAAAFGTOBrueRXzm\nzx9/Yfi69JvbhBA206UJc475RPS2T3496U9j0LOO16NoAzdt2pRxumm3oU27Zb1o1rMcdAEA\nAMhe8tVPvMN6nUm1lDDI+Vyzs8Hu7Q1jP6zxZoUy9fu92rFGdHGDSDt34tCXi+b/eFM785d3\n0uK/a/Ncr60/nG258OtcLRcAAADZcTbYBVd748R3QT0Gjpw+6vX0xoAy9RftWtWrWnDS5b/2\nnvZ49d31H/aNzp06AQBAAWE127T6R7/R6j92d8SSfEvnlcWb3fKOhxh3RP3u3/x+6dLJQ1s3\nbVi7YfO+305dP7GnZ92A2wnJ3uH9b18+9uHbrXOvUAAAILcIg+6d7Uuqh/kadPqw0k8s/vn6\nwc/ejA4PNPiEPNF68A2zzb6YzXRp6oC2VctEGn2CKzdst3T/lYfqLoS4duDTJtVKeHoYI8o9\nMW7Zr45XK4QI0mvnnr8wtF3jIiW7umpnPKKHDrThZao3b/nCiy+0qFs1SqeIiztaBxcqL4SS\nG8UBAIACZVbrma8u2XHyyA9tff/pX79ym1Xqp9/8vHv1uGOb53Zcd8a+zKiGj03frbz1/vL9\nO9e/Wkf0bFD647/jne8uhGjVYkrD12ft2rnxtQYeE7rXHPXjVcerFUKs7fWs/7PDdv+42IU7\n41E4eylWtSbOG9z7s50Hb6Zk+t8tV86fUzwr5EJhAACgwHlszvq+z5YTQryzoNaCutu+Wvdu\nZS+dqFLmraLvrNx7XXSMSoyZPe2n69/FrmgYYBBCPPZEQ/PG4An99/ba3sKZ7vatPPHR9tEd\no4QQdeo/c3t/8KJeq0Z8a3OwWiHEtZLvj+nxpDt2ycNx9ozd4QmNXpu36nZAybLhlrNnz0ZX\nqVa1SrTu5iUlqPGCjdtytUQAAFBAFK575425+gCj1lCsstedM1DBOo1qU4UQt45vU1Vbo0Cj\n8q8hx2MT/jnhZHe7gc0i07/u3KdM4sUvHa9WCFG6e/44jeXsGbuRc48GV5p0cv8o1ZpYyiew\n3rxlo4r6plzbXanks4kRWbzfDgAA4L/J4vST3t9TowuIv3Ux401gisbj/iUdnL3KOMMjyEPR\n6B+4Wr+gLDeR5zh7xm7vbVOJji2EEIrW5+VQr12HbgohPEMbLuteYlLbj3KxQAAAgH/5l+qt\nWuMXXTJ73+E19vln+qz456FWMn/H3f+nsHLmMf+yL+fIavMCZ8/YBeoUc8Kd//f6RKT3lxtj\nxPMlhBDF20Te+ni2EG/lUn0AAADpjEHPzW5aZES9Vj4fjKhTNnD7J8Pe/yFm65oSD7WSzV2b\nTkud/VRp7z3LJ4/78/acI88bgwL/+2rzAmfP2PUq4nvq03cvpFmFEEVbFbm49c5TIVd2Xs2t\n0gAAAO4zaMuvo9sETenfvmb9Fst+D1++55emgQbnu2s9wr+Z1W7t+N71GrVZ8quYvv7Ia+UD\n//tq8whnz9j1XdJ7QuMZUSHFTlw/H9W1V/KIfnV6FG5T0jxz5pGgijNytUQAAFAQXEq7++aN\n4PLrzCl3Z/X7O7bfv19r9KEjPvy/ER8+Snevwj0taT2FEL+8OvWe7tmtVggRa7Y+3Ejcx9lg\nF97wvcPrwscv2qxRhHd435WD13aeM+OAqvpFPbN2W99cLREAAADOcDLY2dLSzBVeGLK+9RD7\ndIdZ25sPOXkmyVihXDE9LycGAADIA5y6x061JgR4eTb98nTGRr+iZatGk+oAAADyCqeCnaL1\nH1o+6J8lv+R2NQAAAHhkzj4VO3rv1ioXBg34YOPNtHxz/yAAAECB4uzDEy3aj7IVLvbh4NYf\nDjEWDi9k1GdKhGfOnMmuIwAAAFzD2WBnNBqFiHjuuYhcrQYAAACPzNlgt3nz5lytAwAA5CnX\nK5Vzdwl4aM7eYwcAAIA8ztkzdnYndq5e+c2P56/FNpi2sKN+/0+XqjSsFJpLlQEAAHcJCQlx\ndwl4FM4HO3VBj3oDlu63T3iN/uC5xA8aV9/SoNfcHYsG6HibHQAAgLs5eyn29OdtBizd/9SA\nOb//HWNvCSzz3pQ+dXZ/NLDVwuO5Vh4AAACc5WywmzR0e1D54TvmvV6l9J0HY3Ve0cMX/jC+\ncvDucRNzrTwAAAA4y9lgt/ZGSlT3Tve3t+5aKvUmD8wCAAC4n7PBrphBm/D37fvb447Gaw28\n3A4AAMD9nA12I58IPbWi64EbqRkbky/t6rH6n5Dqb+dCYQAAAHg4zga7NqsXF1PONyxZre+w\nCUKIo6uWTHyze4Uyz5y3hc9d0z43KwQAAIBTnA12noWePfz7phdraj6eNU4I8f07Q8fOXOFb\nu92Gw3+8GO6diwUCAADAOc6+xy7BqvqVaf7FruafXD9z9PQli9YzskzFyABDrhYHAAAA5zkb\n7AqFlH6xa/cePXo0qVayRqGSuVoTAAAAHoGzl2IblhYr545tWr1oZLUmY97//HScKVfLAgAA\nwMNyNth988vpm3//tGDS0NK24xMHdylbKLjhi32XbjmQYsvV8gAAAOAsZ4OdECIwqma/UTO+\n/+Pi5aP7Zo7sbjqyoUfLOsHh5V95c1ru1QcAAAAnPUSwSxdWoe7gCXN3H/hp1oBmpusnPp0x\nPMfLAgAAwMNy9uGJdClXT2xav27dunWbvzucalP9S1Tv0KFjblQGAACAh+L0604u/rlh3bp1\n69Z9ve+oWVU9C5dvO3DsSy+91Lx2WSVXCwQAAIBznA12AcWq2lTVw79Eq15vvdSxY6vG1fQE\nOgAAgLzE2WDXrPOgjh07tmle21uTKdCptuSEJOHn65ULtQEAAOAhOBvsvlr+fpbtF3e0LtXq\nuDn1XM6VBAAAgEfhbLBTrYnzBvf+bOfBmymWjO1Xzp9TPCvkQmEAAAB4OM6+7uTwhEavzVt1\nO6Bk2XDL2bNno6tUq1olWnfzkhLUeMHGbblaIgAAAJzh7Bm7kXOPBleadHL/KNWaWMonsN68\nZaOK+qZc212p5LOJEd65WiIAAACc4ewZu723TSU6thBCKFqfl0O9dh26KYTwDG24rHuJSW0/\nysUCAQAA4Bxng12gTjEnmO1fPxHpHbMxxv518TaRt07NzpXSAAAA8DCcDXa9ivie+vTdC2lW\nIUTRVkUubl1sb7+y82pulQYAAICH4Wyw67ukd8r19VEhxc6kWqO69kq+trxOj7emTxjSYuaR\noIpv52qJAAAAcIazD0+EN3zv8Lrw8Ys2axThHd535eC1nefMOKCqflHPrN3WN1dLBAAAgDOc\nDXZCiKqth6xvPcT+dYdZ25sPOXkmyVihXDH+txgAAEBe8BDB7h5+RctWzcFCAAAA8N84e48d\nAAAA8jiCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAg\nCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJnbsL\nyF2enp7e3t6Ol7G6ppQMdDpdQECAyzebietHrShKARy1EMLPz09VVXds+S7XD9zb29vLy8vl\nm83E9aM2Go0eHh4u32wmrh+1Xq8vgD/aGo3G7aO+x61bt9xdAvIEyYOdxWKx2WyOl9G7ppQM\nbDZbamqqyzebietHrapqARy1ECItLe2B34S5zfUDN5vNFovF5ZvNxPWjtlgsJpPJ5ZvNxPWj\ntlqtBfBHOy8c0IAsSR7szGaz2Wx2vAzBzmUK5qjT0tKsVrecK7zL9QM3mUwFMOJYLJYC+E1e\nMA9oBDvkWdxjBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgB\nAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiC\nYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAA\nIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYId\nAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAk\nCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAA\nAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDY\nAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACS0LlmM6ol\nbsNHi77e//vNVE140TKtXn71mephQgghbN+vWrB5z6ELCdroSrW6D+pRyiu9pOxmOegCAABQ\ncLnojN23U4Z9vvtqqx6vTZv49pNRaQvGDfi/C4lCiH/WvTN79Y+12/QeO7irz+mdo4Yssv3b\nJbtZDroAAAAUZK4Idta0Cwt/vVF/9JiWT9YpE13lxQFTmgZo/2/BEaGaZq0+FvXShHZN6lR8\nvP7r7w1MuvzN5zFJQohsZznoAgAAULC5JNilni1esuSzpfz+bVCq+xvMtxLT4vecT7U2bVrE\n3moIqFfdx+PX768IIbKb5aALAABAAeeKu9M8/OvPmVM/fdKceHzJpcTiPcqZktYIISp46dNn\nlffSbfsjXnQWpqQ/spxlapR1u+h8Z3Lfvn1jxoxJnzt9+vTHHnvMcXmm/zC0R6PX64ODg12+\n2UxcP2pFUQrgqIUQAQEB7thsJq4fuK+vr8u3eS/Xj9rLy8vT09Plm83E9aP28PAogD/aWq3W\n7aO+x82bN91dAvIEVz92cO7g1g/eX2Iu1XxUs0jLuSQhRLDu7lnDEL3WkpgqhLClZT0ru/b0\nSbPZfPv27fRJq9WqKEoujudR5c2qchujLjgK5qhFQR04owbyDtcFO1PciSVzP/j6cGzDtv0m\nd3rSqCgJHp5CiDiLzUertS9z02zVBngIITTZzMquPX0r5cqVGzlyZPpkWFhYYmKi48L0jmfn\nAqvVmpKS4vLNZuL6UauqmpTk5rshXT9qIURycrLN5uYnfFw/8NTUVIvF4vLNZuL6UZtMJpPJ\nLeeF73L9qC0WS2pq6oOXy02uH7XNZktOTnb5ZoEHc1GwSzi3c+iwedrKzd/7qGu5EKO9Ue9d\nWYg9J1IsRQ13UtrfKRb/egEOZjnoYhcREdGmTZv0yfj4+AcecdxyRCiAx0EhRMEcdVpamtVq\ndceW7yLiuEaBjTgFcNSqqrp91ECWXPHwhGpLnvz2AsNTry0Y0yc91QkhjAGNIzy03+y7Zp80\nJ/32c4LpsSZhDmY56AIAAFDAueKMXfK1z/9KNveo7PXrwYN3N+xZulrFgGFto99cOm5H+FsV\nA82b5s/0Cn+qa6SPEEIoHtnNyrYLAABAweaKYJdw6qwQ4tNpkzM2+hUduWJ+7dIdJvVPm7Nq\n9pibqUpU1YaTJvROP4WY3SwHXQAAAAoyVwS7sHqTN9XLZp6ibdptaNNuDzPLQRcAAIACjLNd\nAAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACS\nINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEA\nAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJg\nBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAg\nCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0A\nAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQI\ndgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAA\nkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJnbsLyF1eXl4azQPCq8U1\npWSg0+kCAwNdvtlMXD9qRVEK4KiFEH5+fu7YbCauH7iPj4+qqi7fbCauH7Wnp6fBYHD5ZjNx\n/aj1en0B/NHWarVuH/U94uLi3F0C8gTJg11aWprVanW8jNE1pWRgtVqTkpJcvtlMXD9qVVUT\nExNdvtlMXD9qIURycrLNZnPHlu9y/cBTU1PNZrPLN5uJ60dtMplSU1NdvtlMXD9qi8WSnJzs\n8s1m4vpR22w2tx/QgCxJHuysVusDf7u4+IhgbN5B7PvJlVu8XqlcFmW4soJ/FcDf9EIIi8Xy\nwL8ucptbftkXwI/bmQNObnPL32wFbdTG5h3Enh9ducUsD+NAlrjHDgAAQBIEOwAAAEkQ7AAA\nACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASUj+L8WQRxib\ndxC797tyi/wHHgBAAcQZOwAAAElwxg4A8IiMzTuI/b+4coucjAcc44wdAACAJDhjB+QWY/MO\n4vsfXLlFTmYAQAHHGTsAAABJEOwAAAAkQbADAACQBMEOAABAEjw8ASCHGZt3EIf+dOUW88JT\nI8bmHcTPh125xbwwagB5DWfsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAE\nwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAA\nQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7\nAAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJ\nEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAA\nACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEjp3F/AIbN+vWrB5z6EL\nCdroSrW6D+pRyis/jgIAACCH5b8zdv+se2f26h9rt+k9dnAtb/nbAAAfuUlEQVRXn9M7Rw1Z\nZHN3SQAAAHlBfgt2qmnW6mNRL01o16ROxcfrv/7ewKTL33wek+TusgAAANwvnwW7tPg951Ot\nTZsWsU8aAupV9/H49fsr7q0KAAAgL8hnd6eZkv4QQlTw0qe3lPfSbfsjXnS+M/ndd9+9+eab\n6XMXLFhQq1Ytx+tMy/ky85aQkJD7Gxm1lLIctSioA2fUUmLU2blx44YLKkHel8/O2NnSkoQQ\nwbq7ZYfotZbEVPdVBAAAkFcoqqq6u4aHkHBxRuf+e+av2VDUoLW3rO7VcWvAsM9m1LBPXrt2\n7Y8//khfvnz58n5+fm4oNBtGo1Gv11ut1uTkZHfX4joeHh4Gg0FV1cTERHfX4jpardbLy0sI\nkZSUZLMVlCd8FEXx8fERQqSkpFgsFneX4zre3t4ajcZkMqWlSX/y6C5PT0+dTmexWFJSUtxd\ni+vYD2g2my0pKW/d3p2WlubMiT1IL59ditV7VxZiz4kUS3qw+zvF4l8vIH2B0NDQJk2apE/G\nx8fnqeOsXq/X6/U2my1PVZXbNBqNwWAQQhSoUev1d24YMJlMVqvVvcW4THqwM5vNJpPJ3eW4\njj3EWyyWAvVNbv+5LmgHNK1WK4RQVbVAjRr5SD67FGsMaBzhof1m3zX7pDnpt58TTI81CXNv\nVQAAAHlBPgt2QvEY1jb61NJxO349cfmfI0vGzPQKf6prpI+7ywIAAHC/fHYpVghRusOk/mlz\nVs0eczNViaracNKE3vktnAIAAOSK/BfshKJt2m1o027uLgMAACCP4WwXAACAJAh2AAAAkiDY\nAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABI\ngmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcA\nACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCUVVVXfXkIvi4+PNZrO7q7jr+PHjMTExQUFB\n1atXd3ctrhMTE3P8+HG9Xt+gQQN31+I68fHxBw8eFELUrVvXaDS6uxwXsVgsu3fvFkJUrVo1\nJCTE3eW4zo8//picnBwVFVWiRAl31+I6R44cuXr1amhoaOXKld1di+ucO3fu1KlTXl5ederU\ncXct9ypQP3TIjs7dBeQuf39/d5eQya5duzZt2lSjRo2mTZu6uxbX2b59+8yZM/38/Nq0aePu\nWlzn/Pnz06dPF0LUr1+/4Bxtk5KS7KOeMWNGdHS0u8txnY8//jgmJqZPnz41atRwdy2us3Xr\n1l27djVq1Khx48bursV1NmzYsGjRooiIiJYtW7q7FiALXIoFAACQBMEOAABAEgQ7AAAASUj+\n8ERec+nSpfj4eG9v72LFirm7FteJjY29evWqVqstW7asu2txneTk5HPnzgkhSpcurdfr3V2O\ni9hsthMnTgghIiMjfX193V2O65w+fdpkMoWEhBQqVMjdtbjOxYsXExISfH19IyMj3V2L69y4\nceP69et6vb506dLurgXIAsEOAABAElyKBQAAkATBDgAAQBKSv8fO9f7cserLrbtPnr9i1XqF\nFi3TsHmHDk+Vd3dRuWj0S21/TzK1/fCLrkV8Mrb/Nr3PmL1XireaMbeXtPfV7e3fefrFhPvb\nFcVj48a1rq8nV51YOOCtbdeWrfvSX6vYW755rcuCc4kzV68rbdTaWw6N7znxT82aNR/pFKfW\n+XnPjgebTJn9UqlcqjkHOf6su7V5ocrc5UOLSH5P4a9vdht/Iu6eRs+QNquXdL+nsVWrVi98\ntOqVwl4uqizXPMLxPPHyxQRjaHigh2sqBO5HsMtJ5zZNfOeT355q/0rbnmUMtsR//ti/fN7w\nE4mzxzyfD351PTJFq+xddrLriMfuNqmWT3+5oVWc+/Web1UZMnpKmkUIoVoTRo2eWq7fiG5F\nfYUQiiLhifCI56qoW7/aeCOla2EvIYSqpq6MSVRV26pjce9Uv/P65e2nbntH9HYy1eUvBeqz\ndsAY8OSYt5pkbNHqs3hYpHnz5tGe+f6Xy6Mdz/eOe2tLtTHz+xWgt3Mjr8n3P3t5yqerf494\ncsxrnavaJ6MrP1be68wby98Vzy92cg1Wm6rV5LNfjIUbV7m+92OTOt/j3ySXdGnleVtIQ/9b\np51eSX4cuH+ZaPs/NlGtcUII36jylcoGuLek3OMT3t6g2frb3mtd25YQQqRcWxdn0XWN8ty8\n+pioXl8IYTXF/HjbFN2topsLzR0F6rN2QKMvVKlSJQcLWNOStAbvfv36uayk3PPfj+eAWxSs\nPzdzW7JVTYu7mrGlWPMBo4b3UYUQqrlVq1Zf3khJn9WtzQsfXEpM/3rNhSMT+r/cpvULnbv3\nmbv6R1eW/R/5Fe8aJi4vP5+Y3nJyxd6gyr08M3xzWdNiPps1tnun9q3bdXx95LS9Z+5c1crX\nA89W9p+1aoldu/Dd1/r2eLF950Ejpu08fu+FrTxL0QW2DPK8uvOIfTJm6wHPQi80ernM7dNf\nWFUhhEi+utGmqk/VCBHZDzP1xu8fTBjxSqe2L3XtN3/tATcNJVfYLHGfTX2rY7vWnbr1/mDl\nj0I84EdeMp1aP7/l+o0l00Z17zVbCNH2+eeXXE12d1H/laPjuRCm+OMfThnRtWP7F9q07TVw\n+JofLgohFnVv/+HlxAtfv9WuyzR3lAwIQbDLWT2fr3zj0LxXho5btvar309eMKlCayxVo0YN\nZ85EbRk5rfgLg+YtWjCwdfntn09ddS3/HBY1hl6Phexf+tedSdW85NfrtbtnvBNFXTjkza1/\n2bq9Pmra2GGPeZ+dNez1o8kW+7x8PPCHt3zE4PVHlDa933hv0ohm0eKD4X2/vZRvxvu/RoWT\nr/+fPcbt2n014pm6geU72kyXNsemCiGu7DimNRR5KsAgshmmark5dtDEn24E9BgyduTAjnHb\n52y6meJ4i/nIrxNHixptZ8ydN6hNhR0rp665Ic/QMrKZrx/LzPrv+7J+mDve6/HWU6cPcGuB\nOcnx8fyzt8bvjy362uhJs6ZNfL6abcX0oVdNtp6Ll/cM8y7SdNKKT95wc/UowLgUm5PKvTRu\nboW9u/b9dHjHl2uXLdIa/SvVrNe2W7eqocYH9vWuPazb01WFEEWfH1Ly873Hr6eK0Hxz63G5\nrvVjX/84xVbLU6MkXvrioi1sRjGfpf/OTb668puLiYM/HdU42CiEKFOh4tFOXT5af25OlyiR\nzwf+UFJvblx3Mn7yF29U8tYLIaLKVrL+1HnVh0efnljT3aU5JeLpx61r134Xn9bY89q2uLRu\nT4ZrPY1PBRi+//bSCy+VOrz/uk/RPprsh1mt5dcnUo0z3htmf9iiXHnPDl0mu3tMOSaw6hvd\nmlYVQkQ+P6TIij3HYtNEsIRH19Rbu95+e1fGls82bAzUKkKI+MK9Ozap4qa6coXj43noM+0G\nPdWihr+HECIyrP1Hmyb8k2Yp7GvwUBSNzsNgKCjvJEceJOGhx72KV63fo2p9IURKbMxvB3/a\nsmb1uP6/zfl8XvEHPSMV1rR4+td+Wo3IV++N9onoVFzzf0vP3u5Xyv/ksn3B1foaMjw5EX/s\nT60h8sngO+lW0Xi+EO41f/950SVK5POBP5TEi4dUVR350osZG70tMULkj2DnWaiNj3bdd0fi\nHg9eKfThLYOMQohm9UJHb/9edIzcfDO1aJfyIvthXt8TYwx8Ov0RWg/fWo/76G+6fhi5o0iz\nzN/GkvIq1GHVJ52znBX+VFEXF+MC2R7PDdpWLzT/86f968/HXL165cyxX9xdKXAXwS7HmG7/\nMGPe7q7D3o700AohPIOK1Hm6TY165V7sOOLzcwkjy3jfs7w58//80HtqXVdrjlN0PZ4o9P6S\nP/tNrPXJoRt1Z5XLOFNVhRCZLkdrNIpQbfav8/fAnWP/rHXeHorWe/XKTzPOUjT55i97RevT\nppDXli1nThtP+JXsan/tSWTL2qlb1p+6GhxvsfWqFiyyH+apedvuWaG/TiNNsPP0evC3sVnq\nf/Pj5SvVbxPHx/PhJS2T+g886V3hmbrVKtaMbtqq4RuvTXB3ycAd0v5l6Xpaj/Bffvpp9aFM\nv6qsqbeEEGE+d355J1ruHNnT4n9ItEp1lC/T+cnYY59cPr/ikojoHJnphV4BFSpa0y58H5dq\nn1RtqRtjkoKfKJ7VauRx/2ftVfgZYUveFms13mH4YvLY+d9dcWuZD6fG0+EJZzd9efxWyQ4V\n7C2ehdsG6Wzz13+tM5Zo4O8hsh9maIMiqbe2n0m12jtaU0/vv53mtpG4isQ/8nJzfDxPvPjJ\nr9dM82aOfrldqwZ1Hi8aKOczMcinpPoby720xlIjWpabPO11Q9uOtcqX9DYoty7/s3X5Ct+S\nzbuGewtFlPPS75n3ZYN+z+oTLnw5f4Ei12vevAq3LaP/csKM7YUee9NDuWdWp6ZFvlr49jRt\n37ZFvC0/bFh83Ow/sb28wU7RZ/lZe/jW6FUt+LO3Jxn7tI0u4vPb9iWbj90c+3aou8t9CIUb\n/c+8bNlxIaZWCLS3KIqxUzHfudsuBUa/af/YsxtmiLF/WY8+o0fM7v/ys0Ga+K3L5vsapD5Z\nm823AfIFx8dz880yqvrDhj1/Ple5cOz5o2uXLBdCnL986wnfUI0iUq5eiouLCAz0c/cgUEAR\n7HJSrV7TxhZbueGbbbM3XkuxKIGhkdUadRnSpaX9la3vTOgzfe6a4QM2mGxq+SZ9699a6uZy\nc5ai7V43dMT2mHbDy903T9N/9nu+8xd/PH3sbYsmsszjb8zoX8kr31yCfATZfdYtxsxOWzxv\nzcJpcWZ9ZKkqb0wdVc0nP+0HY3DLQN2KZO86Fb3uHjqqtC8ppv5WrPXdfzGSzTCDJ8wdteCD\nZe9PGSWMIQ3av/3qT7OWu2MULiP5j7zsHBzPdSFtxnW/9tHy975K1pYoU7XTiPmBswauenvg\n4ytXVnz+ibQlc/sNa7DqkyHuHgEKKEWV+raPPEhVTbcS1EA/g7sLQa7js4bg2wCAaxHsAAAA\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v2 %>%\n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>%\n",
    "  group_by(member_casual, weekday) %>%\n",
    "  \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>%\n",
    "  arrange(member_casual, weekday) %>%\n",
    "  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n",
    "\n",
    "\n",
    "all_trips_v2 %>%\n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>%\n",
    "  group_by(member_casual, weekday) %>%\n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>%\n",
    "  arrange(member_casual, weekday) %>%\n",
    "  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\") +\n",
    "  ggtitle(\"Cyclistic bike-share: Casual vs Member\") +\n",
    "  labs(caption = (\"2019 and 2020 1st Quarter data\"), subtitle = (\"Average duration of riding a bike\"))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "f253a52e",
   "metadata": {
    "papermill": {
     "duration": 0.007773,
     "end_time": "2025-01-03T17:46:23.740134",
     "exception": false,
     "start_time": "2025-01-03T17:46:23.732361",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 6419653,
     "sourceId": 10364880,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30822,
   "isGpuEnabled": false,
   "isInternetEnabled": false,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 248.708833,
   "end_time": "2025-01-03T17:46:23.869814",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2025-01-03T17:42:15.160981",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
