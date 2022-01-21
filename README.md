# actions-mdbook-plantuml

Docker container action for GitHub Actions
- Generate mdbook documents with plantuml


## How to use in .github/workflows/x.yml

```
- name: Generate book
  uses: komasayuki/actions-mdbook-plantuml@v1
  with:
    path: .
```


## (For maintainer) Build
This actions needs pre-build image on docker registry.

```
$ ./build_and_push.sh
```
