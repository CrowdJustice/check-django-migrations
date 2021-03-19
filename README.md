# check-django-migrations
Github action for check for missing django migrations and migration merge conflicts

## Usage
```
on: pull_request
name: Check migrtaions
jobs:
  CheckMgrations:
    name: Check migrations
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
      with:
        repository: CrowdJustice/check-django-migrations
        token: ${{ secrets.GITHUB_TOKEN }}
        path: ./
    - name: Check migrations
      uses: ./
      env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}


```