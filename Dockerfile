FROM tensorflow/tensorflow
LABEL author "Michael Ruettgers <michael@ruettgers.eu>"

RUN set -xe && \
  pip3 install Pillow && \
  pip3 install --extra-index-url https://google-coral.github.io/py-repo/ pycoral

RUN set -xe && \
  echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" > /etc/apt/sources.list.d/coral-edgetpu.list && \
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
  apt-get update && \
  apt-get install -y libedgetpu1-std edgetpu-compiler

