interface IMessageHandler extends ISender, IResponder {
}

interface ISender {
    send(response: any, newMessage: string): void;
}

interface IResponder {
    reply(response: any, newMessage: string): void;
}