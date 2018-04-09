import { Hubot } from "./hubot.interface";

export interface IHubotListener {
    listener: (robot: Hubot) => void;
}