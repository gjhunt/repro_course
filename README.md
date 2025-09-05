# Everyday Reproducibility

**Welcome to everyday computational reproducibility.**

Here, you will find the material for and some other helpful links. 

## Slides

In order, our slides may be found at the following links:

1. [goals](slides/00_goals.pdf)
2. [notebooks](slides/01_notebooks.pdf)
3. [programming](slides/02_programming.pdf)
4. [version control](slides/03_versioncontrol.pdf)
5. [containers](slides/04_containers.pdf)
6. [pipeline](slides/05_pipeline.pdf)


## Software

To get the most our of this course, we recommend that you follow along with some of the software we demonstrate. There are exercises at the end of most slide decks. 

There are two primary ways you can go about this: 

1. Install the software below on your own machine. 
2. Jump straight to installing the containerization software [(click here)](#containerization-software). You can use either `podman` or `docker`. You can then run our image with all the software pre-installed by running: 

```
podman run --rm -it -p 127.0.0.1:8080:80 docker.io/gjhunt/repro
```
with `podman` or 
```
docker run --rm -it -p 127.0.0.1:8080:80 docker.io/gjhunt/repro
```
with `docker`. 

Once you issue this command you should then go to [http://127.0.0.1:8080/](http://127.0.0.1:8080/) (Note: use http NOT http**s**, also be sure to include the port `8080`. Sometimes, web browsers try to be clever and change one or both of these things.)

This is probably the easiest way to get the necessary software. 


### Notebook Software

Before our course, we highly recommend that participants download and have installed some type of notebook writing software. For example, either:

1. [jupyter lab](https://jupyter.org), or,
2. [RStudio](https://posit.co/downloads/)

In particular, we really recommend using **jupyter lab** and will be using it in the course. 

In lieu of downloading these, one may use them on the web:

1. Google colab for jupyter-like notebooks: [https://colab.research.google.com/](https://colab.research.google.com/)
2. Posit cloud for RStudio: [posit.cloud](https://posit.cloud/)

Installation guides:

**Jupyter**

- General instructions: [https://jupyter.org/install](https://jupyter.org/install)
- Windows specifically: [https://crib.utwente.nl/manual/pages/jupyterlab-install-guide/index.pdf](https://crib.utwente.nl/manual/pages/jupyterlab-install-guide/index.pdf)


**rstudio**

- General instructions: [https://rstudio-education.github.io/hopr/starting.pdf](https://rstudio-education.github.io/hopr/starting.pdf)
- Windows specifically: [https://www.stat.colostate.edu/~jah/talks_public_html/isec2020/installRStudio.pdf](https://www.stat.colostate.edu/~jah/talks_public_html/isec2020/installRStudio.pdf)

### Version Control Software   
  
For version control we'll be using `git`. Here are two (very similar) guides for installing git: 

1. [a guide from the `git` project](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
2. [a guide from `github.com`](https://github.com/git-guides/install-git)
  
Once you've installed `git` you should be able to got into a terminal (mac or linux) or powershell (on windows) and not get an error when running the command
```
git --version
```


### Containerization Software

For those wishing to follow along with the containerization software, we recommend that users install either:

1. [podman](https://podman.io/), or,
2. [docker](https://www.docker.com)

**N.B.** installing this more advanced software may be more challenging. Some helpful links follow:

**WSL** For windows users, having windows subsystem for linux (WSL) is required for using either podman or docker.

- Official windows instructions for installing WSL: [https://learn.microsoft.com/en-us/windows/wsl/install](https://learn.microsoft.com/en-us/windows/wsl/install)

**podman**

- Official website: [https://podman.io/](https://podman.io/) 
- Windows instructions: [https://www.redhat.com/sysadmin/run-podman-windows](https://www.redhat.com/sysadmin/run-podman-windows)

**docker**

- Linux intructions: [https://docs.docker.com/desktop/install/linux-install/](https://docs.docker.com/desktop/install/linux-install/)
- Windows instructions: [https://docs.docker.com/desktop/install/windows-install/](https://docs.docker.com/desktop/install/windows-install/)

Once one of the containerization software choices has been installed, one may try pulling one of our images below. 

Once you've successfully installed the sofware you should be able to run
```
podman --version
```
or
```
docker --version
```
without an error. 

**Images**

- A basic reproducibility image: [hub.docker.com/r/gjhunt/repro](https://hub.docker.com/r/gjhunt/repro)

One may run this using podman
```
podman run --rm -it -p 127.0.0.1:8080:80 docker.io/gjhunt/repro
```
or with docker
```
docker run --rm -it -p 127.0.0.1:8080:80 docker.io/gjhunt/repro
```


