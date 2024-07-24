## About 
This environment is built on the bioconductor_docker image.  It is meant to act as a base envenvironment while R packges are managed by renv-eliminating the need to update the whole singularity image to add a package.  This is a compromise between easy reproducibility and easy adding new packages.

This environment is provided as a Docker image on [Dockerhub](https://hub.docker.com/u/ncarrut/single_cell_base_env), and on [GitHub](https://github.com/ncarrut/single_cell_base_env).


Tags on both Dockerhub and Github are set to match the BFXcore Job ID.  

## To modify

* update the Dockerfile as needed

* build and retag image:

```
docker build -t ncarrut/single_cell_base_env:<job id> .
```

* push to docker hub:

```
docker push ncarrut/single_cell_base_env:<job id>
```

* git commit with tag and push to github

```
git add .
git commit -m "some message"
git tag <job id>
git push
```

* push the tag too.  It doesn't happen automatically

```
git push origin <job id>
```
