import { ReminderRepository } from './reminder.repository';
import { MessageHandler } from '../message-handler/message-handler';
import { Hubot } from '../interfaces/hubot.interface';
import { Response } from 'hubot';
import { IHubotListener } from '../interfaces/hubot-listener.interface';

class ReminderService implements IHubotListener {
    constructor(private messageHandler: MessageHandler, private reminderRepository: ReminderRepository) {
        this.init();
    }

    init(): void {
    }

    listener: (robot: Hubot) => void = (robot: Hubot) => {
        robot.hear(/set a reminder for [0-9]*:[0-9]*|set a reminder for [1-9][0-9]?[ap]m/gimu, (message: Response<Hubot>) => {
            message.reply();
        });
    };
}

export = new ReminderService(
    new MessageHandler(),
    new ReminderRepository()
).listener;