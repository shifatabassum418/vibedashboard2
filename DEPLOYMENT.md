# 🚀 Deployment Guide

## Frontend Deployment (Vercel)

### Step 1: Prepare Your Repository
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/vibe-dashboard.git
git push -u origin main
```

### Step 2: Deploy to Vercel
1. Go to [vercel.com](https://vercel.com)
2. Click "New Project"
3. Import your GitHub repository
4. Configure project:
   - **Framework Preset**: Next.js
   - **Root Directory**: `frontend`
   - **Build Command**: `npm run build`
   - **Output Directory**: `.next`

### Step 3: Environment Variables
Add in Vercel dashboard:
```
NEXT_PUBLIC_API_URL=https://your-backend-url.com
```

### Step 4: Deploy
Click "Deploy" and wait for build to complete.

---

## Backend Deployment (Render)

### Step 1: Push to GitHub
Make sure your backend code is pushed to GitHub.

### Step 2: Create Web Service
1. Go to [render.com](https://render.com)
2. Click "New +" → "Web Service"
3. Connect your GitHub repository

### Step 3: Configure Service
- **Name**: vibe-dashboard-api
- **Root Directory**: `backend`
- **Environment**: Node
- **Build Command**: `npm install`
- **Start Command**: `npm start`
- **Instance Type**: Free

### Step 4: Environment Variables
Add in Render dashboard:
```
PORT=5000
NODE_ENV=production
FRONTEND_URL=https://your-vercel-app.vercel.app
```

### Step 5: Deploy
Click "Create Web Service" and wait for deployment.

---

## Alternative Deployment Options

### Frontend Alternatives
- **Netlify**: Similar to Vercel, great for static sites
- **AWS Amplify**: AWS-integrated deployment
- **GitHub Pages**: Free for static sites

### Backend Alternatives
- **Railway**: Easy deployment with PostgreSQL support
- **Heroku**: Classic PaaS (paid plans)
- **DigitalOcean App Platform**: $5/month starter
- **AWS Elastic Beanstalk**: Scalable AWS solution
- **Google Cloud Run**: Container-based deployment

---

## Post-Deployment Checklist

### Frontend
- [ ] Verify homepage loads correctly
- [ ] Test search functionality
- [ ] Check responsive design on mobile
- [ ] Verify API connection
- [ ] Test all interactive elements
- [ ] Check browser console for errors

### Backend
- [ ] Test health endpoint: `https://your-api.com/health`
- [ ] Test items endpoint: `https://your-api.com/api/items`
- [ ] Test search: `https://your-api.com/api/items?search=ocean`
- [ ] Verify CORS settings
- [ ] Check server logs
- [ ] Monitor response times

---

## Connecting Frontend to Backend

After both deployments:

1. Copy your backend URL from Render
2. Update Vercel environment variable:
   ```
   NEXT_PUBLIC_API_URL=https://your-backend-url.onrender.com
   ```
3. Redeploy frontend in Vercel

4. Update backend FRONTEND_URL in Render:
   ```
   FRONTEND_URL=https://your-app.vercel.app
   ```
5. Redeploy backend in Render

---

## Custom Domain Setup

### Vercel (Frontend)
1. Go to Project Settings → Domains
2. Add your custom domain
3. Update DNS records as instructed
4. Wait for DNS propagation (up to 48 hours)

### Render (Backend)
1. Go to Settings → Custom Domain
2. Add your API subdomain (e.g., api.yourdomain.com)
3. Update DNS records as instructed
4. Update frontend NEXT_PUBLIC_API_URL

---

## Monitoring & Maintenance

### Vercel
- Analytics: Built-in analytics dashboard
- Logs: View deployment and function logs
- Alerts: Set up deployment notifications

### Render
- Metrics: Monitor CPU, memory usage
- Logs: View application logs
- Alerts: Set up health check alerts

---

## Troubleshooting

### Frontend not connecting to backend
- Check NEXT_PUBLIC_API_URL is correct
- Verify CORS settings in backend
- Check browser console for errors
- Ensure backend is running

### Backend CORS errors
- Verify FRONTEND_URL in backend .env
- Check CORS origin configuration
- Ensure credentials are set correctly

### Build failures
- Check Node version compatibility
- Verify all dependencies are listed
- Check for environment variable issues
- Review build logs for specific errors

---

## Cost Estimation

### Free Tier (Hobby Projects)
- **Vercel**: Free (100GB bandwidth)
- **Render**: Free (750 hours/month, spins down after inactivity)
- **Total**: $0/month

### Production Ready
- **Vercel Pro**: $20/month
- **Render Starter**: $7/month
- **Total**: $27/month

---

## Support

Need help? Open an issue on GitHub!

Happy deploying! 🚀
