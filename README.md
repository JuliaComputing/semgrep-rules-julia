## Julia rules for Semgrep

[![semgrep-rules-test](https://github.com/JuliaComputing/semgrep-rules-julia/actions/workflows/semgrep-rules-test.yml/badge.svg)](https://github.com/JuliaComputing/semgrep-rules-julia/actions/workflows/semgrep-rules-test.yml)

Semgrep is a fast, open source, static analysis engine for finding bugs, detecting dependency vulnerabilities, and enforcing code standards. 

Semgrep supports the Julia programming language as of version 1.5, from early 2023. This repository contains some early Semgrep rules for Julia. Feedback about these rules are much appreciated. 

There rules are likely to have some false positives and negatives, so feedback will be much appreciated. 

## Quick Start

* [Install the Semgrep CLI](https://semgrep.dev/docs/getting-started/)
* Clone this repo `git clone https://github.com/JuliaComputing/semgrep-rules-julia.git`
* Run `semgrep -c semgrep-rules-julia /path/to/your/package`
* Semgrep has good [documentation](https://semgrep.dev/docs/) and [tutorials](https://semgrep.dev/learn/), which have more information about the tool. 
* [Semgrep Playground](https://semgrep.dev/playground/) is the best way to experiment with new rules. 


## Contribute

We welcome, and appreciate, new analysis rules. Please open a PR to this repo to add your rule to the ruleset. Rules here should be generally be widely, though not necessarily always, applicable. For each rule in its own `.yaml` file, there should be a corresponding `.jl` file with testcases. 