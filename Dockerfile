# Stage 1: Build the Vue.js project
FROM node:24-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
# If using Yarn, use: RUN yarn install

# Copy the rest of the project files
COPY . .

# Build the Vue.js project
RUN npm run build
# If using Vite, this generates the 'dist' folder; adjust if your output folder differs

# Stage 2: Serve with Nginx
FROM nginx:1.28-alpine

# Copy built files from the builder stage to Nginx's web root
COPY --from=builder /app/dist /usr/share/nginx/html

#Copy nginx.conf to default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf


# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
