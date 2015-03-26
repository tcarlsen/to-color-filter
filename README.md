# toColorFilter

> a Angular filter to transform strings into hex colors

This package is a rewrite of [@brandoncorbin](https://github.com/brandoncorbin)'s [String to Color](https://github.com/brandoncorbin/string_to_color) repo into a [Angular](http://angularjs.org) Module.

## Installation

`bower install to-color-filter`

## Usage

Include`toColorFilter` as a dependency for your app:

``` javascript
var app = angular.module('app', ['toColorFilter']);
```

Now you can use it inside of your view as any other filter like this:

```html
{{string | tocolor}}
```
