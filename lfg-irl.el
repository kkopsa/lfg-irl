(require 'eieio)

(my-meeting
 (id 1)
 (title "game night")
 (timeframe (encode-time 0 30 17 21 4 2018) (encode-time 0 30 19 21 4 2018))
 (description "playing avalon wit da boyz")
 (location 1)
 (arrival-instructions "go around the back")
 (organizer "bird-man@gmail.com")
 (visibility 2)
 (tags ("games" "avalon" "steampunk"))
 (max-guests 9)
 (guests ("corban@hotmail.com" "dale2skate@msn.com" "jethord@sbcglobal.net" "barnabas@yahoo.com")))

(my-location
 (id 1)
 (address
  (street "841 Bird Yard Rd")
  (city "Philmont")
  (state "NY")
  (country "USA")
  (zip-code "85788"))
 (gps-coordinates
  (latitude "39.9937")
  (longitude "108.4997"))
 (extra
  (description "blue house")
  (tags ("arnok" "rowdy ranch" "elvis"))))

(my-resource
 (id 1)
 (location 1)
 (name "backyard")
 (type "ROOM"))

(my-user
 (id 1)
 (name "Barnum Arbuckle")
 (email "baruckle@gmail.com")
 (phone "533-891-1123")
 (location 2))

(my-message
 (id 1)
 (meeting 1)
 (user 1)
 (body "hey guys bring pizza and soda"))

(user
 (id 1)
 (name "")
 (email "")
 (phone "")
 (address "")
 (password ""))

(meeting
 (id 1)
 (title "")
 (timeframe (start end))
 (description "")
 (organizer user)
 (visibility 1)
 (tags ("" "" ""))
 (max-guests 20)
 (guests ()))

(location
 (primary
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

(message
 (meeting 1)
 (user 1)
 (body ""))

;; (user-meeting-associations
;;  (user1 meeting1)
;;  (user2 meeting1)
;;  (user3 meeting2)
;;  (user3 meeting1))

(defclass user ()
  ((name :initarg :name
	 :initform "")))

(defclass meeting ()
  ((title :initarg :title
	  :initform "")
   (location :initarg :title
	     :initform "")
   (time :initarg :time
	 :initform "")))

(defun persist (object)
  (format "%s persisted." object))

(defun host-meeting (meeting)
  (persist meeting))

(defun join-meeting (user meeting))

(defun send-message (user meeting))

(defun view-messages (meeting))

(defun view-meetings (user))

(defun search-for-public-meetings (keywords))

