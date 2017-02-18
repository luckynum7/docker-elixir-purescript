FROM timefairy/docker-elixir-nodejs:lts

ENV PATH /home/asdf/.psvm/current/bin:$PATH

RUN /bin/bash -c "npm install -g psvm && \
                  psvm install v0.10.7 && \
                  psvm use v0.10.7 && \
                  npm install -g pulp bower && \
                  rm -rf $HOME/.psvm/archives/* && \
                  rm -rf $HOME/.npm/*"

# CMD ["/bin/bash"]
