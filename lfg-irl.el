(meeting
 (title "")
 (location (primary
            (address
             (street-name-and-number "")
             (city "")
             (state "")
             (country "")
             (zip-code ""))
            (gps-coordinates
             (latitude "")
             (longitude ""))
            (secondary
             (extra "")
             (instructions "")))
           (resource
            (room "")
            (field "")
            (building "")))
 (timeframe (start end))
 (description "")
 (organizer user)
 (visibility 1)
 (guests ()))

(user
 (name "")
 (email "")
 (phone "")
 (address "")
 (password ""))

(user-meeting-associations
 (user1 meeting1)
 (user2 meeting1)
 (user3 meeting2))

(messages
 (meeting1 user1 ""))

(defun create-meeting (meeting))

(defun join-meeting (user meeting))

(defun send-message (user meeting))

(defun view-messages (meeting))

(defun view-meetings (user))

(defun search-for-public-meetings (keywords))

