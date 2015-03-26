/*jslint indent:2, node:true, sloppy:true*/
var
  gulp = require('gulp'),
  coffee = require('gulp-coffee'),
  uglify = require('gulp-uglify'),
  rename = require('gulp-rename'),
  header = require('gulp-header'),

  pkg = require('./package.json');

var banner = [
  '/**',
  ' ** <%= pkg.name %> - <%= pkg.description %>',
  ' ** @author <%= pkg.author %>',
  ' ** @repo <%= pkg.repository.url %>',
  ' ** @version v<%= pkg.version %>',
  ' **/',
  ''
].join('\n');

gulp.task('default', function () {
  return gulp.src('to-color-filter.coffee')
    .pipe(coffee())
    .pipe(uglify())
    .pipe(header(banner, {pkg: pkg}))
    .pipe(rename('to-color-filter.min.js'))
    .pipe(gulp.dest('dist'));
});
