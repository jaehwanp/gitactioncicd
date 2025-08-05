# 베이스 이미지
FROM node:20-alpine
# 앱 디렉토리 생성
WORKDIR /app
# 종속성 설치 (package*.json 복사)
COPY package*.json ./
RUN npm ci --only=production
# 앱 코드 복사
COPY . .
# 포트 설정
EXPOSE 3000
# 앱 실행
CMD ["node", "index.js"]