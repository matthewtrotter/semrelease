# semrelease

## CI/CD
We have two release branches: `main` and `dev`. The `main` branch is the production branch. Every commit to the `main` branch is a new production release. The `dev` branch is the development branch. Every commit to the `dev` branch is a new development release. The `dev` branch is merged into the `main` branch when we are ready to release a new production version.

We have automatic semantic versioning set up:

```
fix/*       0--------0     0--------0
           /     (PR) \   /     (PR) \
          /       v3.0.1-dev.1   v3.0.1-dev.2
dev      0--------------0--------------0
        /                          (PR) \
main   0---------------------------------0
    v3.0.0                            v3.0.1
```