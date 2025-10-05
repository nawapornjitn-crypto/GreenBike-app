# ใช้ nginx เป็น base image
FROM nginx:alpine

# กำหนด working directory
WORKDIR /usr/share/nginx/html

# ลบไฟล์ default ของ nginx
RUN rm -rf ./*

# คัดลอกไฟล์ HTML เข้าไปใน container
COPY GreenBike_App.html ./index.html

# expose port 80 (Render จะใช้)
EXPOSE 80

# ใช้ nginx เป็น web server
CMD ["nginx", "-g", "daemon off;"]
