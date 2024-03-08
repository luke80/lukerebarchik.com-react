# Dockerfile
 
# Use an existing node alpine image as a base image.
FROM node:latest

# Set the working directory.
WORKDIR /var/app

# Initialize a react app project
RUN npx create-react-app . && echo -n "\n\nCompleted Create React App.\n\n\n" && pwd && ls -Flash .

# Install application dependencies.
RUN npm install

# Expose the port.
EXPOSE 3000
 
# Run the application.
CMD ["npm", "start"]
