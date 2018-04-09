import { Robot } from "hubot";

// This is just here so that we don't have to deal
// with the generic in the Robot typings - it has a
// typing for hubot's adapter, but we don't have any
// specific adapter.
export interface Hubot extends Robot<any> {}