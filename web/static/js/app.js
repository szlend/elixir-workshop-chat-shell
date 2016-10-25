import "phoenix_html";
import {Socket} from "phoenix";
import Chat from "./chat";

if (ENV.state === "chat") {
  let dom = {
    chat: document.querySelector("[data-role=chat-body]"),
    form: document.querySelector("[data-role=chat-form]"),
    input: document.querySelector("[data-role=chat-form-input]")
  };

  $(dom.form).on("submit", onSendMessage);

  let user = ENV.user;
  let room = ENV.room;
  let chat = new Chat(dom);

  // @todo Create socket

  // @todo Join channel

  // @todo Register channel receive events

  // @todo onRoomJoin()
  // @todo onRoomJoinError()
  // @todo onSendMessage()
  // @todo onReceiveMessage()
  // @todo onReceiveHistory()
  // @todo onUserJoin()
  // @todo onUserLeave()
}
