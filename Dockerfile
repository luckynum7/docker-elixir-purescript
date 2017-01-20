FROM timefairy/docker-elixir-nodejs:lts

RUN /bin/bash -c "npm install -g psvm && \
                  psvm install v0.10.5"

# CMD ["/bin/bash"]
