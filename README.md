# Dockerized iRuby

This is a fully Dockerized instance of [Jupyter](http://jupyter.org/) that includes the [iRuby Ruby kernel](https://github.com/SciRuby/iruby). It's the easiest way to spin up an awesome Ruby REPL without caring one whit about what's in your local environment.

### Prerequisites

Docker and `docker-compose`.

### Getting up and running

1. Run `docker-compose up`
2. Navigate to `http://localhost:8888/tree/notebooks`
3. There is no step 3.

### Caveats

Jupyter authentication is disabled, so don't use this for any purpose other than futzing around with Ruby on your local machine.

