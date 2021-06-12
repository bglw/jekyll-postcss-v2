# Jekyll PostCSS v2
A revamp of [jekyll-postcss](https://github.com/mhanberg/jekyll-postcss) that uses Jekyll hooks and generally tries to be less complicated.

## Table of contents

- [Installation](README.md#installation)
- [Usage](README.md#usage)
- [Why v2?](README.md#why-v2)
- [Why not?](README.md#why-not)
- [TODO](README.md#todo)

## Installation

_`Gemfile`_
```ruby
group :jekyll_plugins do
  gem 'jekyll-postcss-v2'
end
```

_`_config.yml`  
<sup>(Until [jekyll#8585](https://github.com/jekyll/jekyll/pull/8585) is released)</sup>_ 
```yml
plugins:
  - jekyll-postcss-v2
```

_In your jekyll source directory:_
```bash
npm i -D postcss postcss-cli
```

## Usage

Configure your `postcss.config.js` file in your jekyll source directory.

## Why v2?
- Better logging to help catch when things aren't running
- Processes the output file on disk, skipping the need to parse Sass
- Doesn't transfer file contents over a network or cli parameter, avoiding issues when files are too large for buffers
- Respects the Jekyll source directory for configuration files
- Fewer moving parts. No sockets, no bundled node scripts, no internal caching
- Probably works with Tailwind JIT<sup>[citation needed]</sup> 🤷‍♂️

## Why not?
- Potentially slower<sup>[citation needed]</sup>, but more than fast enough for my needs. 

## TODO
- Write tests
- Wire up a CI
- Add configuration
  - _postcss.config.js location_
  - _node_modules location_
- Profile in production / development
- Investigate what needs to be done around the sourcemap
- More logging.
  - Before/after filesizes
  - Timings