FROM python:3.7

WORKDIR /app

COPY ./requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app
RUN python setup.py install

CMD [ "python", "setup.py", "test" ]
