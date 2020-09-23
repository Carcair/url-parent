# URL Shortening APP description

The application is used for shortening URLs. Consists of two services, Management Service where the client can create or delete shortened URLs, and Redirection Service where the client, through short URL gets redirected to its real URL.

Management Service stores its data into the MySQL database, while Redirection Service stores data inside the Redis cache.

Data/message transfer between these two services is done through RabbitMQ.

Links to submodule repositories:

- Management service: https://github.com/Carcair/management
- Redirection service: https://github.com/Carcair/redirection

This repository serves as the main repository which we use to build and start our APP with docker-compose.

## Installation and application start

- Download the repository and its submodule repositories:

  ```
  git clone --recurse-submodules https://github.com/Carcair/url-parent.git
  ```

  or

  ```
  git clone
  git submodule init
  git submodule update
  ```

- Enter our repository

  ```
  cd url-parent
  ```

- Build and start our applications and services:
  ```
  docker-compose build
  docker-compose up
  ```

### **Services inside**

- Our services are running on the Http protocol. After our applications and services are built and started, we should have:

  - Redis service on localhost:6379
  - RabbitMQ service on localhost:5672
  - MySQL database on localhost:3306
  - phpmyadmin service on localhost:5010/
  - Management service on localhost:5000
    - localhost:5000/api/create
    - localhost:5000/api/del
  - Redirection service on localhost:5005

## Testing

Use Postman to test our Management service. Since Postman is unable to render HTML, use a browser to test the Redirection service.

Inspect Swagger documentation for Management service @ http://localhost:5000/api-docs after starting APP.

**Insert new URL:**

- POST method on route http://localhost:5000/api/create :
  - we are sending data through body as JSON object, set a new header to key: 'Content-Type' and value: 'application/json', data example:
  ```
  {
    "realURL": "https://commonmark.org/help/"
  }
  ```
  - Management service generates `shortURL`, while DB generates `id`, as response we get one of the given responses:
    - Success:
      - status code: 201,
      - JSON object, e.g.:
      ```
      {
        "id": 72,
        "realURL": "https://commonmark.org/help/" ,
        "shortURL": "http://localhost:5005/W5u4at4xr"
      }
      ```
    - Failed to connect to MySQL DB:
      - status code: 503
    - Invalid URL's or existing URL in DB:
      - status code: 406

**Delete a URL:**

- DEL method on route http://localhost:5000/api/del/:id
  - `:id` is and existing URL id
  - Responses:
    - Success:
      - status code: 200
      - message: 'Deletion successful.'
    - Nothing to delete:
      - status code: 204
    - Failed to connect to MySQL DB:
      - status code: 503

**Try short URL:**

- To test the Redirection service, use one of the short URLs from a response from creating a new URL in Management service. We get one of the following responses:
  - No such URL:
    - statuc code: 404
    - message: 'URL not found'
  - Success:
    - status code: 302
    - followed by redirect to its Real URL
  - Too many requests:
    - status code: 429
    - message: 'Too Many Requests'

## Technologies

We used the following technologies:

- NodeJS for our main Application services
- MySQL database for storing data in the Management service
- Redis storage for caching data in the Redirection service
- RabbitMQ for transferring messages between the Management and the Redirection service
- Docker for creating containers for our services
- Compose to run all of our services as one service
