/*
--------- URL Shortener ---------

Requirements:

1. Shorten long URLs to unique short URLs.
2. Redirect users from short URLs to the original long URLs.
3. Track the number of times a short URL is accessed.
4. Allow users to create custom short URLs.
5. Track user information and their created URLs.

--------- Tables: ---------

1. Users
- user_id: Unique identifier for each user.
- email: Email address of the user.
- password: Encrypted password for user authentication.
- created_at: Timestamp when the user account was created.

2. URLs
- url_id: Unique identifier for each URL.
- original_url: The original long URL.
- short_url: The shortened URL.
- user_id: Foreign key linking to the Users table, indicating which user created this URL.
- created_at: Timestamp when the short URL was created.
- access_count: Number of times the short URL has been accessed.

3. URLAccessLogs
- log_id: Unique identifier for each access log entry.
- url_id: Foreign key linking to the URLs table, indicating which short URL was accessed.
- accessed_at: Timestamp when the short URL was accessed.
- ip_address: IP address of the user who accessed the short URL.
- user_agent: Browser or device information of the user who accessed the short URL.

--------- Relationships: ---------

1. Users to URLs: One-to-Many (One user can create multiple URLs).
2. URLs to URLAccessLogs: One-to-Many (One URL can have multiple access log entries).
*/

/*
--------- BookMyShow ---------

Requirements:

1. Users can browse and book tickets for movies.
2. Manage showtimes for different cinemas.
3. Track user bookings.
4. Manage different cities and cinemas.
5. Provide seat selection functionality.

--------- Tables: ---------

1. Users
- user_id: Unique identifier for each user.
- name: Name of the user.
- email: Email address of the user.
- password: Encrypted password for user authentication.
- phone_number: Contact number of the user.

2. Cities
- city_id: Unique identifier for each city.
- city_name: Name of the city.

3. Cinemas
- cinema_id: Unique identifier for each cinema.
- name: Name of the cinema.
- city_id: Foreign key linking to the Cities table, indicating the city where the cinema is located.
- address: Physical address of the cinema.

4. Movies
- movie_id: Unique identifier for each movie.
- title: Title of the movie.
- description: Description or summary of the movie.
- release_date: Release date of the movie.
- duration: Duration of the movie in minutes.
- language: Language of the movie.
- genre: Genre of the movie (e.g., Action, Comedy).

5. Showtimes
- showtime_id: Unique identifier for each showtime.
- movie_id: Foreign key linking to the Movies table, indicating which movie is being shown.
- cinema_id: Foreign key linking to the Cinemas table, indicating where the movie is being shown.
- show_time: The scheduled time for the movie show.
- price: Ticket price for the show.

6. Seats
- seat_id: Unique identifier for each seat.
- cinema_id: Foreign key linking to the Cinemas table, indicating which cinema the seat belongs to.
- seat_number: Number of the seat.
- row_number: Row number of the seat.
- type: Type of the seat (e.g., Regular, Premium).

7. Bookings
- booking_id: Unique identifier for each booking.
- user_id: Foreign key linking to the Users table, indicating who made the booking.
- showtime_id: Foreign key linking to the Showtimes table, indicating which showtime was booked.
- booking_time: Timestamp when the booking was made.
- total_amount: Total amount paid for the booking.

8. BookingSeats
- booking_seat_id: Unique identifier for each booking seat entry.
- booking_id: Foreign key linking to the Bookings table, indicating which booking this seat belongs to.
- seat_id: Foreign key linking to the Seats table, indicating which seat was booked.

--------- Relationships: ---------

1. Users to Bookings: One-to-Many (One user can make multiple bookings).
2. Cities to Cinemas: One-to-Many (One city can have multiple cinemas).
3. Cinemas to Showtimes: One-to-Many (One cinema can have multiple showtimes).
4. Movies to Showtimes: One-to-Many (One movie can have multiple showtimes).
5. Showtimes to Bookings: One-to-Many (One showtime can have multiple bookings).
6. Cinemas to Seats: One-to-Many (One cinema can have multiple seats).
7. Bookings to BookingSeats: One-to-Many (One booking can have multiple seats booked).
8. Seats to BookingSeats: One-to-Many (One seat can be associated with multiple bookings over time).
*/

/*
--------- RedBus ---------

Requirements:

1. Users can search and book bus tickets between cities.
2. Manage bus operators and their buses.
3. Track bus schedules and available seats.
4. Allow users to cancel bookings.
5. Provide user ratings and reviews for bus operators.

--------- Tables: ---------

1. Users
- user_id: Unique identifier for each user.
- name: Name of the user.
- email: Email address of the user.
- password: Encrypted password for user authentication.
- phone_number: Contact number of the user.

2. Cities
- city_id: Unique identifier for each city.
- city_name: Name of the city.

3. BusOperators
- operator_id: Unique identifier for each bus operator.
- name: Name of the bus operator.
- contact_number: Contact number of the bus operator.
- address: Address of the bus operator.

4. Buses
- bus_id: Unique identifier for each bus.
- operator_id: Foreign key linking to the BusOperators table, indicating which operator owns the bus.
- bus_number: Bus registration number.
- bus_type: Type of the bus (e.g., Sleeper, Semi-Sleeper).
- capacity: Total seating capacity of the bus.

5. Routes
- route_id: Unique identifier for each route.
- source_city_id: Foreign key linking to the Cities table, indicating the source city.
- destination_city_id: Foreign key linking to the Cities table, indicating the destination city.
- distance: Distance of the route in kilometers.

6. Schedules
- schedule_id: Unique identifier for each schedule.
- bus_id: Foreign key linking to the Buses table, indicating which bus is scheduled.
- route_id: Foreign key linking to the Routes table, indicating which route the bus will follow.
- departure_time: Scheduled departure time.
- arrival_time: Scheduled arrival time.
- price: Ticket price for the scheduled route.

7. Bookings
- booking_id: Unique identifier for each booking.
- user_id: Foreign key linking to the Users table, indicating who made the booking.
- schedule_id: Foreign key linking to the Schedules table, indicating which schedule was booked.
- booking_time: Timestamp when the booking was made.
- total_amount: Total amount paid for the booking.
- status: Booking is active or cancelled.

8. BookingSeats
- booking_seat_id: Unique identifier for each booking seat entry.
- booking_id: Foreign key linking to the Bookings table, indicating which booking this seat belongs to.
- seat_number: Seat number that was booked.

9. Seats
- seat_id: Unique identifier for each seat.
- seat_number: Number of the seat.
- type: Type of the seat (e.g., sleeper, seater).

10. Reviews
- review_id: Unique identifier for each review.
- user_id: Foreign key linking to the Users table, indicating who wrote the review.
- operator_id: Foreign key linking to the BusOperators table, indicating which operator the review is for.
- rating: Rating given by the user.
- review: Text of the review.
- review_date: Date when the review was written.

--------- Relationships: ---------

1. Users to Bookings: One-to-Many (One user can make multiple bookings).
2. Cities to Routes: Cities can have multiple routes originating or terminating there.
3. BusOperators to Buses: One-to-Many (One operator can have multiple buses).
4. Routes to Schedules: One-to-Many (One route can have multiple schedules).
5. Buses to Schedules: One-to-Many (One bus can have multiple schedules).
6. Schedules to Bookings: One-to-Many (One schedule can have multiple bookings).
7. Seats to BookingSeats: One-to-Many (One seat can have multiple bookings).
8. Bookings to BookingSeats: One-to-Many (One booking can have multiple seats booked).
9. BusOperators to Reviews: One-to-Many (One operator can have multiple reviews).
10. Users to Reviews: One-to-Many (One user can write multiple reviews).
*/

/*
--------- Netflix ---------

Requirements:

1. Users can browse and stream movies and TV shows.
2. Manage user subscriptions and profiles.
3. Track viewing history and preferences.
4. Provide personalized recommendations.
5. Support multiple devices.

--------- Tables: ---------

1. Users
- user_id: Unique identifier for each user.
- email: Email address of the user.
- password: Encrypted password for user authentication.
- subscription_type: Type of subscription (e.g., Basic, Standard, Premium).
- subscription_start_date: Start date of the subscription.
- subscription_end_date: End date of the subscription.

2. Profiles
- profile_id: Unique identifier for each profile.
- user_id: Foreign key linking to the Users table, indicating which user the profile belongs to.
- profile_name: Name of the profile (e.g., "John's Profile

3. Movies
- movie_id: Unique identifier for each movie.
- title: Title of the movie.
- description: Description or summary of the movie.
- release_date: Release date of the movie.
- duration: Duration of the movie in minutes.
- genre: Genre of the movie (e.g., Action, Comedy).
- language: Language of the movie.
- rating: Content rating of the movie (e.g., PG, R).

4. TVShows
- show_id: Unique identifier for each TV show.
- title: Title of the show.
- description: Description or summary of the show.
- release_date: Release date of the show.
- genre: Genre of the show (e.g., Drama, Comedy).
- language: Language of the show.
- rating: Content rating of the show (e.g., PG, R).

5. Episodes
- episode_id: Unique identifier for each episode.
- show_id: Foreign key linking to the TVShows table, indicating which show the episode belongs to.
- season_number: Season number of the episode.
- episode_number: Episode number within the season.
- title: Title of the episode.
- description: Description or summary of the episode.
- duration: Duration of the episode in minutes.
- release_date: Release date of the episode.

6. ViewingHistory
- history_id: Unique identifier for each viewing history entry.
- profile_id: Foreign key linking to the Profiles table, indicating which profile viewed the content.
- movie_id: Foreign key linking to the Movies table, indicating which movie was viewed (nullable if it's an episode).
- episode_id: Foreign key linking to the Episodes table, indicating which episode was viewed (nullable if it's a movie).
- viewed_at: Timestamp when the content was viewed.
- progress: Viewing progress (e.g., percentage of the content watched).

7. Recommendations
- recommendation_id: Unique identifier for each recommendation entry.
- profile_id: Foreign key linking to the Profiles table, indicating which profile received the recommendation.
- movie_id: Foreign key linking to the Movies table, indicating which movie is recommended (nullable if it's a show).
- show_id: Foreign key linking to the TVShows table, indicating which show is recommended (nullable if it's a movie).
- recommended_at: Timestamp when the recommendation was made.

8. Devices
- device_id: Unique identifier for each device.
- user_id: Foreign key linking to the Users table, indicating which user the device belongs to.
- device_type: Type of device (e.g., Smart TV, Mobile, Tablet).
- device_name: Name or identifier of the device.
- last_used: Timestamp when the device was last used to access the service.

--------- Relationships: ---------

1. Users to Profiles: One-to-Many (One user can have multiple profiles).
2. Profiles to ViewingHistory: One-to-Many (One profile can have multiple viewing history entries).
3. Profiles to Recommendations: One-to-Many (One profile can have multiple recommendations).
4. Movies to ViewingHistory: One-to-Many (One movie can appear in multiple viewing history entries).
5. TVShows to Episodes: One-to-Many (One show can have multiple episodes).
6. Episodes to ViewingHistory: One-to-Many (One episode can appear in multiple viewing history entries).
7. Users to Devices: One-to-Many (One user can have multiple devices).

*/
