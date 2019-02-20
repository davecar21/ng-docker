FROM node:10
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app

RUN npm install 
RUN npm install -g @angular/cli --save



# Copy app source code
COPY . .

#Expose port and start application
EXPOSE 4200

CMD [ "npm", "start" ]