FROM composer
WORKDIR /app
ENV PORT 3000
ENV DOMAIN exp.mtrn.io
RUN composer require beyondcode/expose
CMD /app/vendor/bin/expose serve $DOMAIN --port=$PORT
