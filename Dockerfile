FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# ลบไฟล์ default ออก
RUN rm -rf ./*

# คัดลอกไฟล์ HTML ของคุณ (ชื่อไฟล์ต้องตรงกัน)
COPY GreenBikeApp.html ./index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
