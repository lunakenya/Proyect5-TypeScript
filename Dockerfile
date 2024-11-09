# Build phase: Use Node.js image to install dependencies and build the project
FROM node:18 AS build

# Set the working directory in the container
WORKDIR /app

# Copy configuration files and package.json to install dependencies
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the application for production
RUN npm run build

# Production phase: Use a lightweight Nginx image to serve the application
FROM nginx:stable-alpine

# Copy the React build files to the default Nginx directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 8085 to make the application accessible externally
EXPOSE 8085

# Start Nginx in the foreground to serve the React application
CMD ["nginx", "-g", "daemon off;"]
