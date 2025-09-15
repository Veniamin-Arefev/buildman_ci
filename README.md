# Hello World Action

This GitHub Action prints a greeting message ("Hello, <name>!") based on the provided input name using a Bash script and sets it as an output.

## Inputs
- `name`: **Required** The name to include in the greeting. Default is `"World"`.

## Outputs
- `greeting`: The generated greeting message.

## Example Usage
```yaml
name: Test Hello World Action
on: [push]
jobs:
  greet:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: my-username/hello-world-action@v1
        with:
          name: 'Alice'
        id: greet
      - run: echo "${{ steps.greet.outputs.greeting }}"