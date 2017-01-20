FROM timefairy/docker-elixir-nodejs:lts

RUN /bin/bash -c "npm install -g psvm && \
                  psvm install-latest && \
                  npm install -g pulp bower && \
                  rm -rf $HOME/.psvm/archives/* && \
                  rm -rf $HOME/.npm/*"

# CMD ["/bin/bash"]
