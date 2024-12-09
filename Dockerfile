# שלב 1: בסיס הקונטיינר
FROM node:16-alpine

# שלב 2: הגדרת תיקיית העבודה
WORKDIR /usr/src/app

# שלב 3: העתקת קבצים לפרויקט
COPY package*.json ./

# שלב 4: התקנת תלויות
RUN npm install

# שלב 5: העתקת כל קבצי הפרויקט
COPY . .

# שלב 6: פתיחת הפורט (לדוגמה, 8080)
EXPOSE 3000

# שלב 7: הרצת האפליקציה
CMD ["node", "app.js"]
