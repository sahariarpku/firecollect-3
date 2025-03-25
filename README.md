# FireCollect 3

A powerful research tool that helps you search, collect, and analyze academic papers using AI. Built with Next.js, Supabase, and AI integration.

## Features

- 🔍 Search academic papers across multiple databases
- 📚 Save and organize research papers
- 📊 Export results to Excel
- 🤖 AI-powered paper analysis
- 📱 Responsive design
- 🔐 Secure authentication with Supabase

## Prerequisites

Before you begin, ensure you have installed:

- [Node.js](https://nodejs.org/) (v18 or newer)
- [npm](https://www.npmjs.com/) (comes with Node.js)
- [Git](https://git-scm.com/)

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/sahariarpku/firecollect-3.git
cd firecollect-3
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Set Up Supabase

1. Go to [Supabase](https://supabase.com/) and create a new account
2. Create a new project
3. Once your project is created, go to Project Settings > API
4. Copy your `Project URL` and `anon` public API key

### 4. Configure Environment Variables

1. Create a `.env` file in the root directory
2. Add the following variables:

```env
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
```

### 5. Set Up the Database

1. Go to your Supabase project's SQL editor
2. Copy and paste the contents of `supabase/init.sql` into the SQL editor
3. Run the SQL script to create the necessary tables and policies

### 6. Run the Development Server

```bash
npm run dev
```

The app will be available at [http://localhost:3000](http://localhost:3000)

## Using the App

### 1. Authentication

1. Sign up for a new account or log in
2. The app will automatically create necessary storage buckets and tables

### 2. Searching Papers

1. Enter your search query in the search bar
2. Click "Search" or press Enter
3. Wait for the results to load
4. View paper details, download results, or start a chat about the papers

### 3. Managing API Keys

1. Go to Settings
2. Enter your Firecrawl API key
3. Click Save

### 4. Exporting Results

1. After a search, click the "Download Excel" button
2. The results will be downloaded as an Excel file

## Troubleshooting

### Common Issues

1. **Network Error**
   - Check your internet connection
   - Verify your Firecrawl API key is valid
   - Ensure you can access scholar.google.com and researchgate.net

2. **Database Errors**
   - Verify your Supabase credentials in `.env`
   - Check if the database tables were created correctly
   - Ensure RLS policies are properly set up

3. **Authentication Issues**
   - Clear your browser cache
   - Check if your Supabase project is running
   - Verify your environment variables

### Getting Help

If you encounter any issues:

1. Check the console for error messages (F12 in most browsers)
2. Look for error messages in the app's activity log
3. Create an issue on GitHub with:
   - Description of the problem
   - Steps to reproduce
   - Error messages
   - Screenshots if applicable

## Contributing

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

## License

MIT License - feel free to use this project for any purpose.

## Contact

For questions or support, create an issue on GitHub or contact the maintainers.
