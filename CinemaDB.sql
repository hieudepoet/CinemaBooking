CREATE DATABASE CinemaDB;
GO
USE CinemaDB;
GO

-- Bảng phim
CREATE TABLE Movie (
    id INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255) NOT NULL,
    genre NVARCHAR(100),
    duration INT,  -- Thời lượng (phút)
    description NVARCHAR(MAX),
    release_date DATE,
    poster_url NVARCHAR(500)
);

-- Bảng phòng chiếu
CREATE TABLE Room (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    capacity INT DEFAULT 30  -- Mỗi phòng có 30 ghế
);

-- Bảng suất chiếu
CREATE TABLE Showtime (
    id INT IDENTITY(1,1) PRIMARY KEY,
    movie_id INT,
    room_id INT,
    showtime DATETIME,
    price DECIMAL(10,2),
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
    FOREIGN KEY (room_id) REFERENCES Room(id)
);

-- Bảng ghế ngồi
CREATE TABLE Seat (
    id INT IDENTITY(1,1) PRIMARY KEY,
    room_id INT,
    seat_number NVARCHAR(10),
    FOREIGN KEY (room_id) REFERENCES Room(id)
);

-- Bảng đặt vé
CREATE TABLE Booking (
    id INT IDENTITY(1,1) PRIMARY KEY,
    showtime_id INT,
    seat_id INT,
    user_name NVARCHAR(255),
    status NVARCHAR(20) DEFAULT 'CONFIRMED', -- SQL Server không hỗ trợ ENUM, thay thế bằng NVARCHAR
    FOREIGN KEY (showtime_id) REFERENCES Showtime(id),
    FOREIGN KEY (seat_id) REFERENCES Seat(id)
);


CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    full_name NVARCHAR(255) NOT NULL, -- Tên riêng của người dùng
    username NVARCHAR(255) UNIQUE NOT NULL,
    password NVARCHAR(255) NOT NULL, -- Lưu hash password
    email NVARCHAR(255) UNIQUE NOT NULL,
    role NVARCHAR(50) DEFAULT 'USER' CHECK (role IN ('ADMIN', 'USER')),
    created_at DATETIME DEFAULT GETDATE()
);

