FROM tensorflow/serving:latest

WORKDIR /app
COPY ./output/serving_model ./models/hypertension-model

ENV MODEL_NAME=hypertension-model
ENV PORT=8501

RUN echo '#!/bin/bash \n\n\
tensorflow_model_server --port=8500 --rest_api_port=${PORT} \
--model_name=${MODEL_NAME} --model_base_path=/app/models/hypertension-model \
"$@"' > /usr/bin/tf_serving_entrypoint.sh \
&& chmod +x /usr/bin/tf_serving_entrypoint.sh