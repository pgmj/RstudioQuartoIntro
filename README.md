# Introduction to reproducible data analysis with R and Quarto

## Preparations

Install R (version 4.2 or 4.3) for your platform: - Windows: <https://ftp.acc.umu.se/mirror/CRAN/bin/windows/base/R-4.3.0-win.exe> - Mac: <https://ftp.acc.umu.se/mirror/CRAN/bin/macosx/> - Others, see: <https://ftp.acc.umu.se/mirror/CRAN/>

Install the latest version of Rstudio, which should include Quarto 1.2: - <https://posit.co/download/rstudio-desktop/>

Then check that you have Quarto properly installed by opening a terminal/shell/command prompt and typing: `quarto --version` and pressing enter. This should result in a version number being shown, most likely `1.2.475`.

### Rstudio settings

Start up Rstudio, and go to `Tools -> Global options`. In the window that appears, make sure your settings match those in the image below. You do not want to save or restore workspace .RData - ever.

![Screenshot from Rstudio global options](images/rstudioSettings.png)

If you like, you can change the visual theme under the `Appearance` tab.

### Installing R packages

Below is a list of all the packages planned for use during the course. In Rstudio, in the bottom right quadrant (under the tab "Files"), create a "New Blank File" of type "R script". Then copy & paste the rows below that start with `library` into the new file. Rstudio should then automatically ask if you want to install the packages that are not already installed.

``` r
# these are mostly for data management/wrangling and visualization
library(tidyverse) # for most things
library(foreign) # for reading SPSS files
library(readxl) # read MS Excel files
library(showtext) # get fonts
library(glue) # simplifies mixing text and code in figures and tables
library(arrow) # support for efficient file formats
library(grateful) # create table+references for packages used in a project
library(styler) # only a one-time installation (it is an Rstudio plugin)
library(car) # for car::recode only
library(skimr) # data skimming

# these are mostly for data analysis and vizualisation
library(psych)
library(lme4)
library(nlme)
library(broom.mixed)
library(ggplot2)
library(patchwork)
library(easystats)
library(GGally)
library(mice)
library(modelsummary)
library(ggside)
library(ggdist)
library(kableExtra)
library(formattable)
library(ggrepel)
```

### Getting all the course files

First, you need to install Git. Download links: <https://git-scm.com/downloads>

Then you are going to "clone" this code repository to a folder on your
computer. There are two ways to go about this. Either you start up a terminal/shell/command prompt and navigate to where you would like to put the folder (a subfolder will automatically be created) and run the command `git clone adress_to_repo` (update later), or you use a [graphical user interface for git](https://git-scm.com/downloads/guis).

## Additional materials for the curious

If you are new to R, [Hadley Wickham's book "R for data science"](https://r4ds.hadley.nz/) is a great place to start.

For a great collection of materials on *"research design, causal inference, and econometric tools to measure the effects of social programs"*, see <https://evalsp23.classes.andrewheiss.com/>

## Author

[Magnus Johansson](https://www.ri.se/en/person/magnus-p-johansson) is a licensed psychologist with a PhD in behavior analysis from [Oslo Metropolitan University](https://www.oslomet.no/en/study/hv/behaviour-analysis-phd). He works as a research scientist at [RISE Research Institutes of Sweden](https://ri.se/en), Department of Measurement Science and Technology, and is an affiliated researcher at [Karolinska Institutet](https://medarbetare.ki.se/orgid/52082137). - Twitter: [\@pgmjoh](https://twitter.com/pgmjoh) - ORCID: [0000-0003-1669-592X](https://orcid.org/0000-0003-1669-592X) - Mastodon: [\@pgmj\@scicomm.xyz](https://scicomm.xyz/@pgmj)

## License

This work is licensed under the MIT License.
