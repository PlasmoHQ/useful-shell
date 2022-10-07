#!/usr/bin/env bash
comm -23 <(sort <(vercel env ls $1 | awk 'NR > 2 { print $1 }')) <(sort <(vercel env ls $2 | awk 'NR > 2 { print $1 }'))
