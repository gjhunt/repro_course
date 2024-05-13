# Everyday Reproducibility

**Welcome to everyday computational reproducibility.**

Here, you will find the material for and some other helpful links. 

## Slides

In order, our slides may be found at the following links:

1. [intro](slides/1_intro.pdf)
2. [code notebooks](slides/2_codenotebooks.pdf)
3. [programming](slides/3_programming.pdf)
4. [version control](slides/4_versioncontro.pdf)
5. [containers](slides/5_containers.pdf)
6. [conclusion](slides/6_souptonuts.pdf)

## Notebook Software

Before our course, we highly recommend that participants download and have installed some type of notebook writing software. For example, either:

1. [jupyter lab](https://jupyter.org), or,
2. [RStudio](https://posit.co/downloads/)

In particular, we really recommend using **jupyter lab**. 

In lieu of downloading these, one may use them on the web:

1. Google colab for jupyter-like notebooks: [https://colab.research.google.com/](https://colab.research.google.com/)
2. Posit cloud for RStudio: [posit.cloud](https://posit.cloud/)

Installation guides:

**Jupyter**

- General instructions: [https://jupyter.org/install](https://jupyter.org/install)
- Windows specifically: [https://crib.utwente.nl/manual/pages/jupyterlab-install-guide/index.html](https://crib.utwente.nl/manual/pages/jupyterlab-install-guide/index.html)


**rstudio**

- General instructions: [https://rstudio-education.github.io/hopr/starting.html](https://rstudio-education.github.io/hopr/starting.html)
- Windows specifically: [https://www.stat.colostate.edu/~jah/talks_public_html/isec2020/installRStudio.html](https://www.stat.colostate.edu/~jah/talks_public_html/isec2020/installRStudio.html)

## Containerization Software

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

** Images **

- A basic reproducibility image: [hub.docker.com/r/gjhunt/repro](https://hub.docker.com/r/gjhunt/repro)

One may pull this using podman as
```
podman run -it --rm -p 8888:8888 gjhunt/repro
```
or with docker as
```
docker run -it --rm -p 8888:8888 gjhunt/repro
```

The following docker image will also be used: [https://osf.io/download/xbjp4/](https://osf.io/download/xbjp4/). This image is large, so we recommend pulling it in advance if users with to follow along with its use in the course.


