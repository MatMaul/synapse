CREATE TABLE IF NOT EXISTS peeked_rooms(
    server_name TEXT NOT NULL,
    room_id TEXT NOT NULL REFERENCES rooms(room_id),
    peek_id TEXT NOT NULL,
    expires_ts bigint,
    PRIMARY KEY (server_name, room_id, peek_id)
);
