# Randomize points

```{bash}
geojson-random 3 > out.geojson

echo '## out.ndjson'
cat out.geojson
echo ''

```

# Convert from GeoJSON
## By splitting out by the key d.features

```{bash}
ndjson-cat out.geojson | ndjson-split 'd.features' > out.ndjson

echo '## out.ndjson'
cat out.ndjson
```
