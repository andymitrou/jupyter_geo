FROM jupyter/datascience-notebook
# Create and copy the notebooks
RUN mkdir notebooks
COPY ./notebooks/* ./notebooks/
# Create and copy the data
COPY ./data/* ./data/
# Install geopackages
RUN pip install folium pandas geopandas