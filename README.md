# ✨ The Vibe Dashboard

A modern, full-stack web application showcasing beautiful glassmorphic UI design with a powerful REST API backend. Built with Next.js, Express, and Tailwind CSS.



## 🚀 Features

### Frontend
- ⚡ **Next.js 14** with App Router for optimal performance
- 🎨 **Glassmorphism UI** with stunning visual effects
- 🔍 **Real-time Search** with debounced input
- 📱 **Fully Responsive** design for all devices
- ✨ **Smooth Animations** using Tailwind CSS
- 🎭 **Loading States** with skeleton components
- 🎯 **Error Handling** with retry functionality
- 🌈 **Gradient Backgrounds** with backdrop blur effects

### Backend
- 🔥 **Express.js** REST API with clean architecture
- 🗂️ **Organized Structure** with routes and controllers
- 🔒 **CORS Enabled** for secure cross-origin requests
- 🔎 **Search Functionality** with query parameters
- 📊 **12+ Mock Data Items** with rich content
- 🏥 **Health Check** endpoint
- ⚙️ **Environment Variables** for configuration

## 🛠️ Tech Stack

### Frontend
- **Framework:** Next.js 14 (React 18)
- **Styling:** Tailwind CSS
- **Language:** JavaScript (ES6+)
- **Fonts:** Inter (Google Fonts)

### Backend
- **Runtime:** Node.js
- **Framework:** Express.js
- **CORS:** cors middleware
- **Environment:** dotenv

## 📁 Project Structure

```
vibe-dashboard/
│
├── backend/
│   ├── controllers/
│   │   └── itemsController.js      # Business logic for items
│   ├── routes/
│   │   └── items.js                # API route definitions
│   ├── data/
│   │   └── mockData.js             # Mock data (12 items)
│   ├── server.js                   # Express server setup
│   ├── package.json                # Backend dependencies
│   └── .env.example                # Environment variables template
│
├── frontend/
│   ├── app/
│   │   ├── layout.js               # Root layout with metadata
│   │   ├── page.js                 # Main dashboard page
│   │   └── globals.css             # Global styles + Tailwind
│   ├── components/
│   │   ├── Navbar.js               # Navigation bar
│   │   ├── SearchBar.js            # Search with debounce
│   │   ├── VibeCard.js             # Card component
│   │   ├── SkeletonCard.js         # Loading skeleton
│   │   ├── EmptyState.js           # No results state
│   │   └── ErrorState.js           # Error handling UI
│   ├── package.json                # Frontend dependencies
│   ├── next.config.js              # Next.js configuration
│   ├── tailwind.config.js          # Tailwind customization
│   ├── postcss.config.js           # PostCSS setup
│   └── .env.local.example          # Frontend environment template
│
└── README.md                       # This file
```

## 🚦 Getting Started

### Prerequisites
- Node.js 18+ installed
- npm or yarn package manager

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/vibe-dashboard.git
cd vibe-dashboard
```

2. **Set up the Backend**
```bash
cd backend

# Install dependencies
npm install

# Create environment file
cp .env.example .env

# Start the server
npm run dev
```

The backend will run on `http://localhost:5000`

3. **Set up the Frontend** (in a new terminal)
```bash
cd frontend

# Install dependencies
npm install

# Create environment file
cp .env.local.example .env.local

# Start the development server
npm run dev
```

The frontend will run on `http://localhost:3000`

4. **Open your browser**
Navigate to `http://localhost:3000` and enjoy! 🎉

## 🔌 API Endpoints

### Base URL
```
http://localhost:5000
```

### Endpoints

#### Get All Items
```
GET /api/items
```
Returns all items in the collection.

**Response:**
```json
{
  "success": true,
  "count": 12,
  "total": 12,
  "data": [...]
}
```

#### Search Items
```
GET /api/items?search=ocean
```
Returns filtered items based on title, description, or category.

**Query Parameters:**
- `search` (optional): Search term to filter items

**Response:**
```json
{
  "success": true,
  "count": 2,
  "total": 12,
  "data": [...]
}
```

#### Health Check
```
GET /health
```
Returns server health status.

## 🎨 Design Features

### Glassmorphism
- Semi-transparent backgrounds
- Backdrop blur effects
- Subtle borders and shadows
- Layered depth perception

### Animations
- Fade-in on load
- Slide-up transitions
- Scale animations on hover
- Smooth state transitions

### Responsive Design
- Mobile-first approach
- Breakpoints: sm (640px), md (768px), lg (1024px)
- Flexible grid layouts
- Adaptive typography

## 📸 Screenshots

### Desktop View
![Desktop View](./screenshots/desktop.png)

### Mobile View
![Mobile View](./screenshots/mobile.png)

### Search Functionality
![Search](./screenshots/search.png)

### Loading State
![Loading](./screenshots/loading.png)

## 🚀 Deployment

### Frontend (Vercel)
1. Push your code to GitHub
2. Go to [Vercel](https://vercel.com)
3. Import your repository
4. Set environment variable:
   - `NEXT_PUBLIC_API_URL`: Your backend URL
5. Deploy!

### Backend (Render)
1. Push your code to GitHub
2. Go to [Render](https://render.com)
3. Create a new Web Service
4. Connect your repository
5. Set environment variables:
   - `PORT`: 5000
   - `NODE_ENV`: production
   - `FRONTEND_URL`: Your frontend URL
6. Deploy!

### Alternative Deployments
- **Frontend:** Netlify, AWS Amplify, GitHub Pages
- **Backend:** Railway, Heroku, AWS Elastic Beanstalk, DigitalOcean

## 🧪 Testing the API

### Using cURL
```bash
# Get all items
curl http://localhost:5000/api/items

# Search for items
curl http://localhost:5000/api/items?search=ocean

# Health check
curl http://localhost:5000/health
```

### Using Browser
Simply navigate to:
- http://localhost:5000/api/items
- http://localhost:5000/api/items?search=cosmic
- http://localhost:5000/health

## 🔧 Environment Variables

### Backend (.env)
```env
PORT=5000
NODE_ENV=development
FRONTEND_URL=http://localhost:3000
```

### Frontend (.env.local)
```env
NEXT_PUBLIC_API_URL=http://localhost:5000
```

## 📦 Dependencies

### Backend
```json
{
  "express": "^4.18.2",
  "cors": "^2.8.5",
  "dotenv": "^16.3.1"
}
```

### Frontend
```json
{
  "next": "14.0.4",
  "react": "^18.2.0",
  "react-dom": "^18.2.0",
  "tailwindcss": "^3.3.6"
}
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

**Happy Coding! ✨**
