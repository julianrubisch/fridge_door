# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.4.4
FROM ghcr.io/rails/devcontainer/images/ruby:$RUBY_VERSION

RUN curl https://cursor.com/install -fsS | bash
RUN echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

RUN gem install overmind
RUN gem install rails-mcp-server
RUN npm i -g prettier

RUN mkdir -p /home/vscode/.config/rails-mcp
COPY .devcontainer/rails-mcp/projects.yml /home/vscode/.config/rails-mcp/projects.yml
