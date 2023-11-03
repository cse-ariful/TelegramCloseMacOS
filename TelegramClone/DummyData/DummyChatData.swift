import Foundation
import Foundation

let chatListData: [[String: Any]] = [
    [
        "id": 1,
        "title": "John Doe",
        "last_message": "Should we be taking any action.",
        "message_time": "2023-04-15T14:30:00Z",
        "user_image": "https://picsum.photos/id/131/200/200",
        "unread_count": 3
    ],
    [
        "id": 2,
        "title": "Jane Smith",
        "last_message": "I'm not sure. We should discuss it in the meeting.",
        "message_time": "2023-04-14T16:45:00Z",
        "user_image": "https://picsum.photos/id/132/200/200",
        "unread_count": 1
    ],
    [
        "id": 3,
        "title": "Robert Johnson",
        "last_message": "I'll check the data and get back to you.",
        "message_time": "2023-04-13T10:15:00Z",
        "user_image": "https://picsum.photos/id/133/200/200",
        "unread_count": 5
    ],
    [
        "id": 4,
        "title": "Lisa Brown",
        "last_message": "The deadline for the project is approaching.",
        "message_time": "2023-04-12T09:20:00Z",
        "user_image": "https://picsum.photos/id/134/200/200",
        "unread_count": 0
    ],
    [
        "id": 5,
        "title": "Michael Wilson",
        "last_message": "Let's schedule a meeting to discuss the project.",
        "message_time": "2023-04-11T15:10:00Z",
        "user_image": "https://picsum.photos/id/135/200/200",
        "unread_count": 2
    ],
    [
        "id": 6,
        "title": "Emily Taylor",
        "last_message": "I've sent you the updated report.",
        "message_time": "2023-04-10T11:40:00Z",
        "user_image": "https://picsum.photos/id/136/200/200",
        "unread_count": 0
    ],
    [
        "id": 7,
        "title": "James Harris",
        "last_message": "The sales numbers are looking good.",
        "message_time": "2023-04-09T17:25:00Z",
        "user_image": "https://picsum.photos/id/137/200/200",
        "unread_count": 1
    ],
    [
        "id": 8,
        "title": "Olivia Lewis",
        "last_message": "We need to hire a new designer for the project.",
        "message_time": "2023-04-08T13:50:00Z",
        "user_image": "https://picsum.photos/id/138/200/200",
        "unread_count": 0
    ],
    [
        "id": 9,
        "title": "William Clark",
        "last_message": "I'll prepare the presentation for the meeting.",
        "message_time": "2023-04-07T16:15:00Z",
        "user_image": "https://picsum.photos/id/139/200/200",
        "unread_count": 4
    ],
    [
        "id": 10,
        "title": "Ava Young",
        "last_message": "Let's meet to discuss the project budget.",
        "message_time": "2023-04-06T12:30:00Z",
        "user_image": "https://picsum.photos/id/140/200/200",
        "unread_count": 0
    ],
    [
        "id": 11,
        "title": "Daniel Turner",
        "last_message": "I've reviewed the code changes. Looks good.",
        "message_time": "2023-04-05T14:40:00Z",
        "user_image": "https://picsum.photos/id/141/200/200",
        "unread_count": 2
    ],
    [
        "id": 12,
        "title": "Sophia Hall",
        "last_message": "We should start the marketing campaign soon.",
        "message_time": "2023-04-04T18:05:00Z",
        "user_image": "https://picsum.photos/id/142/200/200",
        "unread_count": 1
    ],
    [
        "id": 13,
        "title": "Matthew White",
        "last_message": "Let's schedule a team meeting for next week.",
        "message_time": "2023-04-03T15:50:00Z",
        "user_image": "https://picsum.photos/id/143/200/200",
        "unread_count": 0
    ],
    [
        "id": 14,
        "title": "Emma Lopez",
        "last_message": "The project milestones are on track.",
        "message_time": "2023-04-02T12:25:00Z",
        "user_image": "https://picsum.photos/id/144/200/200",
        "unread_count": 3
    ],
    [
        "id": 15,
        "title": "Christopher Green",
        "last_message": "I'll send you the contract details.",
        "message_time": "2023-04-01T09:10:00Z",
        "user_image": "https://picsum.photos/id/145/200/200",
        "unread_count": 0
    ],
    [
        "id": 16,
        "title": "Mia Adams",
        "last_message": "Have you seen the latest design proposal?",
        "message_time": "2023-03-31T16:20:00Z",
        "user_image": "https://picsum.photos/id/146/200/200",
        "unread_count": 5
    ],
    [
        "id": 17,
        "title": "David Baker",
        "last_message": "I'm waiting for your feedback on the report.",
        "message_time": "2023-03-30T14:55:00Z",
        "user_image": "https://picsum.photos/id/147/200/200",
        "unread_count": 0
    ],
    [
        "id": 18,
        "title": "Sophia Hill",
        "last_message": "Let's discuss the project timeline.",
        "message_time": "2023-03-29T10:30:00Z",
        "user_image": "https://picsum.photos/id/148/200/200",
        "unread_count": 2
    ],
    [
        "id": 19,
        "title": "Ethan King",
        "last_message": "I've sent you the meeting agenda.",
        "message_time": "2023-03-28T15:15:00Z",
        "user_image": "https://picsum.photos/id/149/200/200",
        "unread_count": 0
    ],
    [
        "id": 20,
        "title": "Aria Rodriguez",
        "last_message": "Let's decide on the project color scheme.",
        "message_time": "2023-03-27T12:00:00Z",
        "user_image": "https://picsum.photos/id/150/200/200",
        "unread_count": 1
    ],
    [
        "id": 21,
        "title": "Liam Garcia",
        "last_message": "I'll work on the project proposal.",
        "message_time": "2023-03-26T17:40:00Z",
        "user_image": "https://picsum.photos/id/151/200/200",
        "unread_count": 0
    ],
    [
        "id": 22,
        "title": "Olivia Martinez",
        "last_message": "The meeting has been rescheduled for next week.",
        "message_time": "2023-03-25T14:30:00Z",
        "user_image": "https://picsum.photos/id/152/200/200",
        "unread_count": 3
    ],
    [
        "id": 23,
        "title": "Noah Hernandez",
        "last_message": "I've updated the project timeline.",
        "message_time": "2023-03-24T12:15:00Z",
        "user_image": "https://picsum.photos/id/153/200/200",
        "unread_count": 0
    ],
    [
        "id": 24,
        "title": "Emma Lopez",
        "last_message": "The project milestones are on track.",
        "message_time": "2023-03-23T09:00:00Z",
        "user_image": "https://picsum.photos/id/154/200/200",
        "unread_count": 4
    ],
    [
        "id": 25,
        "title": "Mason Scott",
        "last_message": "I'll send you the latest project updates.",
        "message_time": "2023-03-22T15:50:00Z",
        "user_image": "https://picsum.photos/id/155/200/200",
        "unread_count": 1
    ],
    [
        "id": 26,
        "title": "Ava Lopez",
        "last_message": "The project kickoff is scheduled for next week.",
        "message_time": "2023-03-21T13:45:00Z",
        "user_image": "https://picsum.photos/id/156/200/200",
        "unread_count": 0
    ],
    [
        "id": 27,
        "title": "Logan Adams",
        "last_message": "Have you seen the latest design proposal?",
        "message_time": "2023-03-20T16:30:00Z",
        "user_image": "https://picsum.photos/id/157/200/200",
        "unread_count": 2
    ],
    [
        "id": 28,
        "title": "Sophia Hill",
        "last_message": "We need to finalize the project budget.",
        "message_time": "2023-03-19T10:20:00Z",
        "user_image": "https://picsum.photos/id/158/200/200",
        "unread_count": 0
    ],
    [
        "id": 29,
        "title": "Jackson Perez",
        "last_message": "I've sent you the project timeline.",
        "message_time": "2023-03-18T14:10:00Z",
        "user_image": "https://picsum.photos/id/159/200/200",
        "unread_count": 3
    ],
    // Add more sample data entries with "unread_count" here...
]


func dummyChatListData()-> [ChatListItemModel]{
    
    return chatListData.map{itemData in
        let id = itemData["id"] as! Int
        let title = itemData["title"] as! String
        let lastMessage = itemData["last_message"] as! String
        let messageTimeStr = itemData["message_time"] as! String
        let messageTime = ISO8601DateFormatter().date(from: messageTimeStr)!
        let userImage = itemData["user_image"] as! String
        let unread_count = itemData["unread_count"] as! Int
        let chatItem = ChatListItemModel(id: id, title: title, lastMessage: lastMessage, messageTime: messageTime, userImage: userImage,unreadCount: unread_count)
        return chatItem
    }
}

