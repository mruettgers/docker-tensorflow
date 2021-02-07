FROM tensorflow/tensorflow
LABEL author "Michael Ruettgers <michael@ruettgers.eu>"

RUN set -xe && \
  pip3 install Pillow && \
  pip3 install --extra-index-url https://google-coral.github.io/py-repo/ pycoral


