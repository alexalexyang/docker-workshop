FROM node:18-alpine

WORKDIR /app
COPY . .

# RUN is part of image build step, state is committed to image
RUN npm i

# CMD is run when container is started
CMD ["node", "src/index.js"]

EXPOSE 3000


# Some other things you can do

# RUN apk add --no-cache gcc musl-dev linux-headers
# ENV FLASK_APP=app.py
# COPY requirements.txt requirements.txt

