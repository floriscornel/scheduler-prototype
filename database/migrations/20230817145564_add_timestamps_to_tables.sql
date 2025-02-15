-- +goose Up
-- +goose StatementBegin
ALTER TABLE attendees
ADD COLUMN created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE events 
ADD COLUMN created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE locations 
ADD COLUMN created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE attendees
DROP COLUMN created_at,
DROP COLUMN updated_at;

ALTER TABLE events
DROP COLUMN created_at,
DROP COLUMN updated_at;

ALTER TABLE locations
DROP COLUMN created_at,
DROP COLUMN updated_at;
-- +goose StatementEnd
