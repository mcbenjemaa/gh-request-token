# gh-request-token

Request a Github Self hosted runner registration token


## Inputs

## `token`

**Required** The GITHUB API TOKEN.

## `repository`

**Default '${{ github.repository }}'** The GITHUB repository 'owner/repository'.

## Outputs

## `registration-token`

The registration token for the self-hosted runner.

## Example usage

```yaml
name: example

on:
  workflow_dispatch:

jobs:
  get-token:
    runs-on: ubuntu-latest
    steps:
      - uses: mcbenjemaa/gh-request-token@v1
        id: request_token
        with:
          token: ${{ secrets.PAT_TOKEN }}
      - name: Get the output
        run: echo "Github self-hosted runner registration-token ${{ steps.request_token.outputs.registration-token }}"

```