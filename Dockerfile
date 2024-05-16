FROM python:3.9-alpine

WORKDIR /main_app

RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN chmod +x /main_app/script.sh

CMD [ "./script.sh" ]