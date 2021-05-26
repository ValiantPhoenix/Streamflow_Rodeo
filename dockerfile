FROM rocker/rstudio:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  libxml2 \
  git

RUN install2.r --error \
  --deps TRUE \
  devtools \
  zoo \
  forecast

COPY Docker/Streamflow_Forecast_Rodeo_V2.Rmd /home/rstudio/
COPY Docker/Simple_Example/sample_script.R /home/rstudio/