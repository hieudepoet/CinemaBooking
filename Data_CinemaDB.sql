--1. Dữ liệu Moive
INSERT INTO Movie (title, genre, duration, description, release_date, poster_url) VALUES
('Dune: Part Two', 'Sci-Fi', 165, 'Paul Atreides hợp nhất với Fremen để báo thù kẻ đã hại gia đình anh.', '2024-02-28', 'https://image.tmdb.org/t/p/w500/dune2.jpg'),
('Deadpool & Wolverine', 'Action', 120, 'Deadpool tái ngộ Wolverine trong hành trình đầy máu lửa.', '2024-07-26', 'https://image.tmdb.org/t/p/w500/deadpool-wolverine.jpg'),
('Kung Fu Panda 4', 'Animation', 100, 'Po trở lại với nhiệm vụ đào tạo một chiến binh rồng mới.', '2024-03-08', 'https://image.tmdb.org/t/p/w500/kungfu-panda4.jpg'),
('Godzilla x Kong: The New Empire', 'Action', 130, 'Hai quái vật huyền thoại hợp sức chống lại một thế lực mới.', '2024-03-29', 'https://image.tmdb.org/t/p/w500/godzillaxkong.jpg'),
('Inside Out 2', 'Animation', 110, 'Câu chuyện tiếp nối về thế giới cảm xúc bên trong Riley.', '2024-06-14', 'https://image.tmdb.org/t/p/w500/insideout2.jpg'),
('Oppenheimer', 'Drama', 180, 'Câu chuyện về nhà khoa học J. Robert Oppenheimer và bom nguyên tử.', '2023-07-21', 'https://image.tmdb.org/t/p/w500/oppenheimer.jpg');


--2. Dữ liệu Room
INSERT INTO Room (name) VALUES 
('Rạp 1'), 
('Rạp 2'), 
('Rạp 3');

--3. Dữ liệu Showtime
DECLARE @StartDate DATE = CAST(GETDATE() AS DATE); -- Ngày bắt đầu từ hôm nay
DECLARE @EndDate DATE = DATEADD(DAY, 6, @StartDate); -- 7 ngày sau

-- Xóa dữ liệu cũ nếu có
DELETE FROM Showtime;

-- Tạo lịch chiếu không trùng phòng
DECLARE @MovieID INT, @RoomID INT, @ShowDate DATE, @StartTime TIME, @Duration INT, @ShowTime DATETIME;
DECLARE movie_cursor CURSOR FOR 
    SELECT id, duration FROM Movie;

DECLARE room_cursor CURSOR FOR 
    SELECT id FROM Room;

DECLARE date_cursor CURSOR FOR 
    SELECT DATEADD(DAY, number, @StartDate) FROM master.dbo.spt_values WHERE type = 'P' AND number BETWEEN 0 AND 6;

-- Duyệt qua từng ngày
OPEN date_cursor;
FETCH NEXT FROM date_cursor INTO @ShowDate;
WHILE @@FETCH_STATUS = 0  
BEGIN
    -- Duyệt qua từng phim
    OPEN movie_cursor;
    FETCH NEXT FROM movie_cursor INTO @MovieID, @Duration;
    WHILE @@FETCH_STATUS = 0  
    BEGIN
        -- Duyệt qua từng phòng chiếu
        OPEN room_cursor;
        FETCH NEXT FROM room_cursor INTO @RoomID;
        
        -- Đặt suất chiếu đầu tiên lúc 09:00
        SET @StartTime = '09:00';
        
        WHILE @@FETCH_STATUS = 0  
        BEGIN
            -- Tính thời gian suất chiếu
            SET @ShowTime = CAST(@ShowDate AS DATETIME) + CAST(@StartTime AS DATETIME);
            
            -- Thêm suất chiếu vào bảng Showtime
            INSERT INTO Showtime (movie_id, room_id, showtime, price)
            VALUES (@MovieID, @RoomID, @ShowTime, 75000);
            
            -- Cập nhật giờ bắt đầu suất chiếu tiếp theo (cách nhau `duration + 15` phút)
            SET @StartTime = DATEADD(MINUTE, @Duration + 15, @StartTime);
            
            -- Kiểm tra nếu suất chiếu sau 23:00 thì dừng
            IF @StartTime >= '23:00' BREAK;
            
            FETCH NEXT FROM room_cursor INTO @RoomID;
        END

        CLOSE room_cursor;
        FETCH NEXT FROM movie_cursor INTO @MovieID, @Duration;
    END
    CLOSE movie_cursor;

    FETCH NEXT FROM date_cursor INTO @ShowDate;
END
CLOSE date_cursor;

-- Giải phóng con trỏ
DEALLOCATE movie_cursor;
DEALLOCATE room_cursor;
DEALLOCATE date_cursor;


--4. Dữ liệu Seat
INSERT INTO Seat (room_id, seat_number) VALUES
(1, 'A1'), (1, 'A2'), (1, 'A3'), (1, 'A4'), (1, 'A5'), 
(1, 'A6'), (1, 'A7'), (1, 'A8'), (1, 'A9'), (1, 'A10'),
(1, 'B1'), (1, 'B2'), (1, 'B3'), (1, 'B4'), (1, 'B5'), 
(1, 'B6'), (1, 'B7'), (1, 'B8'), (1, 'B9'), (1, 'B10'),
(1, 'C1'), (1, 'C2'), (1, 'C3'), (1, 'C4'), (1, 'C5'),
(1, 'C6'), (1, 'C7'), (1, 'C8'), (1, 'C9'), (1, 'C10'),

(2, 'A1'), (2, 'A2'), (2, 'A3'), (2, 'A4'), (2, 'A5'),
(2, 'A6'), (2, 'A7'), (2, 'A8'), (2, 'A9'), (2, 'A10'),
(2, 'B1'), (2, 'B2'), (2, 'B3'), (2, 'B4'), (2, 'B5'),
(2, 'B6'), (2, 'B7'), (2, 'B8'), (2, 'B9'), (2, 'B10'),
(2, 'C1'), (2, 'C2'), (2, 'C3'), (2, 'C4'), (2, 'C5'),
(2, 'C6'), (2, 'C7'), (2, 'C8'), (2, 'C9'), (2, 'C10'),

(3, 'A1'), (3, 'A2'), (3, 'A3'), (3, 'A4'), (3, 'A5'),
(3, 'A6'), (3, 'A7'), (3, 'A8'), (3, 'A9'), (3, 'A10'),
(3, 'B1'), (3, 'B2'), (3, 'B3'), (3, 'B4'), (3, 'B5'),
(3, 'B6'), (3, 'B7'), (3, 'B8'), (3, 'B9'), (3, 'B10'),
(3, 'C1'), (3, 'C2'), (3, 'C3'), (3, 'C4'), (3, 'C5'),
(3, 'C6'), (3, 'C7'), (3, 'C8'), (3, 'C9'), (3, 'C10');


-- Thêm Admin
INSERT INTO Users (full_name, username, password, email, role) 
VALUES ('Nguyễn Văn A', 'admin1', 'admin', 'admin@example.com', 'ADMIN');

-- Thêm Users
INSERT INTO Users (full_name, username, password, email, role) 
VALUES ('Trần Thị B', 'user1', 'user', 'user1@example.com', 'USER'),
       ('Lê Văn C', 'user2', 'user', 'user2@example.com', 'USER');
