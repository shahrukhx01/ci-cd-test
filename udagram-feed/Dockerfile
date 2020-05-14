# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/udagram-feed

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

ENV POSTGRES_USERNAME=postgres
ENV POSTGRES_PASSWORD=FPnnWQvg7DDluPyDpy6s
ENV POSTGRES_HOST=udagram.copj1fvau2as.us-east-1.rds.amazonaws.com
ENV POSTGRES_DB=postgres
ENV AWS_BUCKET=test-f70c69d8-dev
ENV AWS_REGION=us-east-1
ENV AWS_PROFILE=default
ENV JWT_SECRET=jahdsaskjd
ENV URL=http://localhost:4200

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 8080

# Define the Docker image's behavior at runtime
CMD ["./set_env.sh"]
CMD ["npm", "run", "dev"]
