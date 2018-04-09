export class MessageHandler implements IMessageHandler {
    send(response: any, newMessage: string): void {
        throw new Error("Method not implemented.");
    }
    reply(response: any, newMessage: string): void {
        throw new Error("Method not implemented.");
    }
}