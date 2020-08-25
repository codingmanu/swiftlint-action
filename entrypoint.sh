#!/bin/bash

set -euo pipefail

swiftlint --reporter github-actions-logging --quiet | (! grep -h "::error")
