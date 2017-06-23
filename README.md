# problem statement
creates a nintex workflowcloud workflow instance

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
    url:
  outputs:
    instanceToken:
```
