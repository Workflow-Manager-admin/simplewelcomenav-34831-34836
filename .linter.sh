#!/bin/bash
cd /home/kavia/workspace/code-generation/simplewelcomenav-34831-34836/main_container_for_simplewelcomenav
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

