FROM tomcat:10.1-jdk17-alpine

# Remove default Tomcat web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Create ROOT app directory
RUN mkdir -p /usr/local/tomcat/webapps/ROOT

# Copy your HTML file into Tomcat's ROOT webapp
COPY index.html /usr/local/tomcat/webapps/ROOT/index.html

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
