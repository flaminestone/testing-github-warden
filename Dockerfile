FROM ruby:2.4.1
ENV RACK_ENV=production
ENV SECRET_TOKEN=''
ENV BUGZILLA_API_KEY=''
RUN mkdir /testing-github-warden
WORKDIR /testing-github-warden
ADD . /testing-github-warden
RUN bundle install --without test development executioner
CMD puma -C config/puma.rb