ARG ODOO_VERSION=19.0
FROM odoo:${ODOO_VERSION}
USER root
RUN pip3 install --break-system-packages debugpy
RUN echo "import debugpy; debugpy.listen(('0.0.0.0', 8888))" >> /usr/lib/python3/dist-packages/odoo/init.py
EXPOSE 8888
USER odoo
