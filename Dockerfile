FROM foundeo/minibox:latest AS build

RUN box install fixinator

RUN box install cfml-compiler

RUN box install commandbox-codechecker

RUN box install commandbox-cflint

RUN box install commandbox-cfformat

RUN box install commandbox-dotenv

RUN box install commandbox-cfconfig

RUN box install commandbox-docbox

FROM foundeo/minibox:latest

COPY --from=build /root/.CommandBox/cfml/modules /root/.CommandBox/cfml/modules 

RUN mkdir -p /app

RUN cd /app

WORKDIR /app
