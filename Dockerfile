FROM node:10-alpine
WORKDIR /app
COPY package.json .
COPY package-lock.json .
COPY webpack.config.js .
COPY Gruntfile.js .
COPY .travis.yml .
Copy .jshintrc .
Copy .jshintignore .
COPY .dockerignore .
RUN npm install
COPY . .
# RUN npm run-script release
CMD ["npm", "run", "webserver"]