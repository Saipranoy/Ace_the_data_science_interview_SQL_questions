# Most Active Users On Messenger

Facebook Messenger stores the number of messages between users in a table named 'fb_messages'. In this table 'user1' is the sender, 'user2' is the receiver, and 'msg_count' is the number of messages exchanged between them.
Find the top 10 most active users on Facebook Messenger by counting their total number of messages sent and received. Your solution should output usernames and the count of the total messages they sent or received.

## Table

**fb_messages**

Column    |   Data Type
----------|-------------
id        |      int    
date      |    datetime   
user1     |     varchar   
user2     |     varchar   
msg_count |       int     

## Steps taken

- Create a desired list with users and total messages
   - Select all user1 and total messages sent 
   - Select all user2 and total messages received
   - UNION ALL to get a list of all usernames with respective total messages
- From the desired list select users and total messages sent and received
- Arrange them in descending order according to toal messages
- Display only 10 as asked

The reason to use UNION ALL is that we need duplicates in this scenario from both user1 and user2 so, it is used instead of UNION.
