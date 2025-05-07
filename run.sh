#!/bin/bash
cp /Kinsing.so /usr/lib/Kinsing.so
LD_PRELOAD=/usr/lib/Kinsing.so sleep 10