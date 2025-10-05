FROM nginx:alpine
WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

# ใช้ชื่อไฟล์ให้ตรงกับ repo: GreenBikeApp.html
COPY GreenBikeApp.html ./index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
