FROM node:18
ENV PORT 3000
ENV NODE_ENV production
WORKDIR /app
COPY . /app/
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]