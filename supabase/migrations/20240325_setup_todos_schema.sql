-- Create todos table
CREATE TABLE IF NOT EXISTS todos (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    title TEXT NOT NULL,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- Enable RLS
ALTER TABLE todos ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Users can view their own todos" 
    ON todos FOR SELECT 
    USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own todos" 
    ON todos FOR INSERT 
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own todos" 
    ON todos FOR UPDATE 
    USING (auth.uid() = user_id);

CREATE POLICY "Users can delete their own todos" 
    ON todos FOR DELETE 
    USING (auth.uid() = user_id);

-- Create function to setup schema
CREATE OR REPLACE FUNCTION setup_todos_schema()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
    -- Function body is empty since the schema is created via migration
END;
$$; 