CREATE DATABASE IF NOT EXISTS hobbyhub;
USE hobbyhub;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    state VARCHAR(50),
    physical_ability ENUM('low', 'medium', 'high'),
    tech_comfort ENUM('low', 'medium', 'high'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE hobbies (
    hobby_id INT AUTO_INCREMENT PRIMARY KEY,
    hobby_name VARCHAR(100),
    category ENUM('outdoor', 'indoor', 'creative', 'social', 'fitness', 'educational'),
    physical_demand ENUM('low', 'medium', 'high'),
    description TEXT
);

CREATE TABLE communities (
    community_id INT AUTO_INCREMENT PRIMARY KEY,
    community_name VARCHAR(150),
    hobby_id INT,
    city VARCHAR(100),
    state VARCHAR(50),
    meeting_frequency VARCHAR(50),
    membership_fee DECIMAL(6,2),
    description TEXT,
    FOREIGN KEY (hobby_id) REFERENCES hobbies(hobby_id)
);

CREATE TABLE survey_responses (
    response_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    preferred_categories VARCHAR(255),
    available_weekdays BOOLEAN,
    available_weekends BOOLEAN,
    hours_per_week INT,
    prefers_outdoor BOOLEAN,
    prefers_social BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE user_events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    event_type ENUM('app_open', 'hobby_view', 'community_view', 'community_join', 'questionnaire_complete'),
    hobby_id INT,
    community_id INT,
    event_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (hobby_id) REFERENCES hobbies(hobby_id),
    FOREIGN KEY (community_id) REFERENCES communities(community_id)
);