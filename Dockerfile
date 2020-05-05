FROM foundeo/minibox:latest AS build

RUN box install fixinator

RUN box install cfml-compiler

RUN box install commandbox-codechecker

RUN box install commandbox-cflint

FROM foundeo/minibox:latest

COPY --from=build /root/.CommandBox/cfml/modules /root/.CommandBox/cfml/modules 
