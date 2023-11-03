import Foundation

let conversationListData: [[String: Any]] = [
    [
        "id": 1,
        "isMe": true,
        "message": "Should we be taking any action?",
        "sentAt": "2023-04-15T14:30:00Z",
        "senderImage": "https://picsum.photos/id/131/1980/1024",
    ],
    [
        "id": 2,
        "isMe": false,
        "message": "I'm not sure. We should discuss it in the meeting.",
        "sentAt": "2023-04-14T16:45:00Z",
        "senderImage": "https://picsum.photos/id/132/1980/1024",
    ],
    [
        "id": 3,
        "isMe": true,
        "message": "I'll check the data and get back to you.",
        "sentAt": "2023-04-13T10:15:00Z",
        "senderImage": "https://picsum.photos/id/133/1980/1024",
        "images": [
            "https://picsum.photos/id/133/1980/1024",
        ],
    ],
    [
        "id": 4,
        "isMe": false,
        "message": "The deadline for the project is approaching.",
        "sentAt": "2023-04-12T09:20:00Z",
        "senderImage": "https://picsum.photos/id/134/1980/1024",
        "images": [
            "https://picsum.photos/id/134/1980/1024",
        ],
    ],
    [
        "id": 5,
        "isMe": true,
        "message": "Let's schedule a meeting to discuss the project.",
        "sentAt": "2023-04-11T15:10:00Z",
        "senderImage": "https://picsum.photos/id/135/1980/1024",
        "images": [
            "https://picsum.photos/id/135/1980/1024",
        ],
    ],
    [
        "id": 6,
        "isMe": false,
        "message": "I've sent you the updated report.",
        "sentAt": "2023-04-10T11:40:00Z",
        "senderImage": "https://picsum.photos/id/136/1980/1024",
        "images": [
            "https://picsum.photos/id/136/1980/1024",
        ],
    ],
    [
        "id": 7,
        "isMe": true,
        "message": "The sales numbers are looking good.",
        "sentAt": "2023-04-09T17:25:00Z",
        "senderImage": "https://picsum.photos/id/137/1980/1024",
    ],
    [
        "id": 8,
        "isMe": false,
        "message": "We need to hire a new designer for the project.",
        "sentAt": "2023-04-08T13:50:00Z",
        "senderImage": "https://picsum.photos/id/138/1980/1024",
    ],
    [
        "id": 9,
        "isMe": true,
        "message": "I'll prepare the presentation for the meeting.",
        "sentAt": "2023-04-07T16:15:00Z",
        "senderImage": "https://picsum.photos/id/139/1980/1024",
    ],
    [
        "id": 10,
        "isMe": false,
        "message": "Let's meet to discuss the project budget.",
        "sentAt": "2023-04-06T12:30:00Z",
        "senderImage": "https://picsum.photos/id/140/1980/1024",
    ],
    [
        "id": 11,
        "isMe": true,
        "message": "This is another message from a sender.",
        "sentAt": "2023-04-05T10:30:00Z",
        "senderImage": "https://picsum.photos/id/141/1980/1024",
    ],
    [
        "id": 12,
        "isMe": false,
        "message": "And this is a response from the recipient.",
        "sentAt": "2023-04-04T16:15:00Z",
        "senderImage": "https://picsum.photos/id/142/1980/1024",
    ],
    [
        "id": 13,
        "isMe": true,
        "message": "Another message from a sender.",
        "sentAt": "2023-04-03T08:45:00Z",
        "senderImage": "https://picsum.photos/id/143/1980/1024",
    ],
    [
        "id": 14,
        "isMe": false,
        "message": "Another response from the recipient.",
        "sentAt": "2023-04-02T14:20:00Z",
        "senderImage": "https://picsum.photos/id/144/1980/1024",
    ],
    [
        "id": 15,
        "isMe": true,
        "message": "A new sender's message.",
        "sentAt": "2023-04-01T11:10:00Z",
        "senderImage": "https://picsum.photos/id/145/1980/1024",
    ],
    [
        "id": 16,
        "isMe": false,
        "message": "A response from the recipient.",
        "sentAt": "2023-03-31T17:30:00Z",
        "senderImage": "https://picsum.photos/id/146/1980/1024",
    ],
    [
        "id": 17,
        "isMe": true,
        "message": "Yet another message from a sender.",
        "sentAt": "2023-03-30T09:15:00Z",
        "senderImage": "https://picsum.photos/id/147/1980/1024",
    ],
    [
        "id": 18,
        "isMe": false,
        "message": "Another response from the recipient.",
        "sentAt": "2023-03-29T15:40:00Z",
        "senderImage": "https://picsum.photos/id/148/1980/1024",
    ],
    [
        "id": 19,
        "isMe": true,
        "message": "Message from a sender.",
        "sentAt": "2023-03-28T12:20:00Z",
        "senderImage": "https://picsum.photos/id/149/1980/1024",
    ],
    [
        "id": 20,
        "isMe": false,
        "message": "A response from the recipient.",
        "sentAt": "2023-03-27T14:55:00Z",
        "senderImage": "https://picsum.photos/id/150/1980/1024",
    ],
    [
        "id": 21,
        "isMe": true,
        "message": "Yet another message from a sender.",
        "sentAt": "2023-03-26T10:45:00Z",
        "senderImage": "https://picsum.photos/id/151/1980/1024",
    ],
    [
        "id": 22,
        "isMe": false,
        "message": "Another response from the recipient.",
        "sentAt": "2023-03-25T17:15:00Z",
        "senderImage": "https://picsum.photos/id/152/1980/1024",
    ],
    [
        "id": 23,
        "isMe": true,
        "message": "Message from a sender.",
        "sentAt": "2023-03-24T13:30:00Z",
        "senderImage": "https://picsum.photos/id/153/1980/1024",
    ],
    [
        "id": 24,
        "isMe": false,
        "message": "A response from the recipient.",
        "sentAt": "2023-03-23T15:20:00Z",
        "senderImage": "https://picsum.photos/id/154/1980/1024",
    ],
    [
        "id": 25,
        "isMe": true,
        "message": "A new sender's message.",
        "sentAt": "2023-03-22T11:10:00Z",
        "senderImage": "https://picsum.photos/id/155/1980/1024",
    ],
    [
        "id": 26,
        "isMe": false,
        "message": "A response from the recipient.",
        "sentAt": "2023-03-21T14:30:00Z",
        "senderImage": "https://picsum.photos/id/156/1980/1024",
    ],
    [
        "id": 27,
        "isMe": true,
        "message": "Another message from a sender.",
        "sentAt": "2023-03-20T10:20:00Z",
        "senderImage": "https://picsum.photos/id/157/1980/1024",
    ],
    [
        "id": 28,
        "isMe": false,
        "message": "Another response from the recipient.",
        "sentAt": "2023-03-19T17:45:00Z",
        "senderImage": "https://picsum.photos/id/158/1980/1024",
    ],
    [
        "id": 29,
        "isMe": true,
        "message": "Message from a sender.",
        "sentAt": "2023-03-18T12:40:00Z",
        "senderImage": "https://picsum.photos/id/159/1980/1024",
    ],
    [
        "id": 30,
        "isMe": false,
        "message": "A response from the recipient.",
        "sentAt": "2023-03-17T14:10:00Z",
        "senderImage": "https://picsum.photos/id/160/1980/1024",
    ],
]


func sampleConversations()->[MessageItemModel]{
    return conversationListData.map { item in
        let id = item["id"] as? Int ?? 0
        let isMe = item["isMe"] as? Bool ?? false
        let sentAtString = item["sentAt"] as? String ?? ""
        let sentAt = ISO8601DateFormatter().date(from: sentAtString)!
        let message = item["message"] as? String
        let images = item["images"] as? [String] ?? []
        let senderImage = item["senderImage"] as! String
        
        return MessageItemModel(id: id, isMe: isMe, sentAt: sentAt, message: message, images: images, senderImage: senderImage)
    }
}
