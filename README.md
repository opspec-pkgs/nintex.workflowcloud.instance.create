# problem statement
uploads a package to gemfury

# example usage

> note: in examples, VERSION represents a version of the nintex.workflowcloud.instance.create pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/nintex.workflowcloud.instance.create#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/nintex.workflowcloud.instance.create#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/nintex.workflowcloud.instance.create#VERSION }
  inputs: 
    apiToken:
    username:
    package:
```
