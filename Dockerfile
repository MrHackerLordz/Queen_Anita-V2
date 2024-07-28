FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/MrHackerLordz/Queen_Anita-V2 /root/MrHackerLordz

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/MrHackerLordz/node_modules

# Install dependencies
WORKDIR /root/MrHackerLordz
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
