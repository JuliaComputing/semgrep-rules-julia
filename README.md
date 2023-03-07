## Julia rules for Semgrep

Semgrep is a fast, open source, static analysis engine for finding bugs, detecting dependency vulnerabilities, and enforcing code standards. 

Semgrep supports the Julia programming language as of version 1.5, from early 2023. This repository contains some early Semgrep rules for Julia. Feedback about these rules are much appreciated. 

There rules are likely to have some false positives and negatives, so feedback will be much appreciated. 

## Quick Start

* [Install the Semgrep CLI](https://semgrep.dev/docs/getting-started/)
* Clone this repo `git clone https://github.com/JuliaComputing/semgrep-rules-julia.git`
* Run `semgrep -c semgrep-rules-julia /path/to/your/package`
* Semgrep has good [documentation](https://semgrep.dev/docs/) and [tutorials](https://semgrep.dev/learn/), which have more information about the tool. 