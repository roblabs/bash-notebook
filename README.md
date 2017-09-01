# `bash` notebooks with `pandoc`

Document & execute your command line code.  For fans of the command line, and for use with [Command Line Cartography](#acknowledgements).

Write great documents with markdown, then execute in the shell.  Great for testing and ensuring you always have a functional shell script.

## Other Inspiring "Notebooks"

* For fans of `S+`, ... I mean `R` — [R Markdown](http://rmarkdown.rstudio.com)
* For fans of Javascript, [RunKit.com](https://runkit.com/roblabs/bezier-spline-from-geojson-linestring)
* For fans of Python, [Jupyter.org](https://try.jupyter.org)
* For fans of bash, shell or other CLI, introducing this project.

## Acknowledgements

* A universal document converter — [`pandoc`](http://pandoc.org/try/)
* [@mbostock](https://twitter.com/mbostock) for all the tools and coining the phrase [Command](https://medium.com/@mbostock/command-line-cartography-part-1-897aa8f8ca2c)-[Line](https://medium.com/@mbostock/command-line-cartography-part-2-c3a82c5c0f3) [Cartography](https://medium.com/@mbostock/command-line-cartography-part-3-1158e4c55a1e).  See the links on this line for an excellent overview.

---

Using `pandoc` you can write plain markdown, then generate `bash` scripts from your code blocks.

## Example

Turn this markdown

-----

###### # Install `ndjson` command line tools

###### ```{bash}
###### # install once
npm install -g ndjson-cli

###### # get version
ndjson-cat --version
###### ```
---

Into a shell script that you can execute.

```{bash}
# install once
npm install -g ndjson-cli

# get version
ndjson-cat --version
```

## Usage

Strip out all the markdown except,
* Headers
* {bash} codeblocks

```
pandoc -t bashNotebook.lua test.md > test.sh

# run the generated script
sh test.sh
```

### Recipes

#### [`./build.sh test.md`](test.md)

``` bash
# output

$ ~/github/bash-notebook
```

#### [`./build.sh install-ndjson.md`](install-ndjson.md)

``` bash
# output
/usr/local/bin/ndjson-cat -> /usr/local/lib/node_modules/ndjson-cli/ndjson-cat
/usr/local/bin/ndjson-filter -> /usr/local/lib/node_modules/ndjson-cli/ndjson-filter
/usr/local/bin/ndjson-join -> /usr/local/lib/node_modules/ndjson-cli/ndjson-join
/usr/local/bin/ndjson-map -> /usr/local/lib/node_modules/ndjson-cli/ndjson-map
/usr/local/bin/ndjson-sort -> /usr/local/lib/node_modules/ndjson-cli/ndjson-sort
/usr/local/bin/ndjson-reduce -> /usr/local/lib/node_modules/ndjson-cli/ndjson-reduce
/usr/local/bin/ndjson-split -> /usr/local/lib/node_modules/ndjson-cli/ndjson-split
/usr/local/bin/ndjson-top -> /usr/local/lib/node_modules/ndjson-cli/ndjson-top
+ ndjson-cli@0.3.1
updated 1 package in 2.564s
0.3.1
```

#### [`./build.sh geojson-random.md`](geojson-random.md)

``` bash
# output
{"type":"FeatureCollection","features":[{"type":"Feature","geometry":{"type":"Point","coordinates":[-36.90517449751496,21.325557273812592]},"properties":{}},{"type":"Feature","geometry":{"type":"Point","coordinates":[-140.50003789365292,-44.28771852515638]},"properties":{}}]}
```

#### [`./build.sh random-ndjson.md`](random-ndjson.md)

``` bash
# output

## out.ndjson
{"type":"FeatureCollection","features":[{"type":"Feature","geometry":{"type":"Point","coordinates":[68.68127477355301,66.4284011721611]},"properties":{}},{"type":"Feature","geometry":{"type":"Point","coordinates":[133.09121509082615,44.76928882766515]},"properties":{}},{"type":"Feature","geometry":{"type":"Point","coordinates":[46.628280663862824,-19.743516594171524]},"properties":{}}]}

## out.ndjson
{"type":"Feature","geometry":{"type":"Point","coordinates":[68.68127477355301,66.4284011721611]},"properties":{}}
{"type":"Feature","geometry":{"type":"Point","coordinates":[133.09121509082615,44.76928882766515]},"properties":{}}
{"type":"Feature","geometry":{"type":"Point","coordinates":[46.628280663862824,-19.743516594171524]},"properties":{}}
```

#### [`./build.sh geojson-random-precision.md`](geojson-random-precision.md)

``` bash
# output

## out.2.geojson
{"type":"FeatureCollection","features":[{"type":"Feature","geometry":{"type":"Point","coordinates":[68.68,66.43]},"properties":{}},{"type":"Feature","geometry":{"type":"Point","coordinates":[133.09,44.77]},"properties":{}},{"type":"Feature","geometry":{"type":"Point","coordinates":[46.63,-19.74]},"properties":{}}]}
```
