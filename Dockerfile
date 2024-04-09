FROM silex/emacs:29.3

RUN apt update && apt install -y git python3 vim

WORKDIR /root
RUN git clone --depth 1 https://github.com/doomemacs/doomemacs ./.config/emacs
COPY doom .config/doom
RUN ./.config/emacs/bin/doom install --force
