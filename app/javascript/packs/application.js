// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import {ChatBotToggle} from '../plugins/init_chat_bot_chat';
import {WayLogic, UserSelection} from '../plugins/init_way_logic';
import {ProgressBarLogic} from '../plugins/init_progress_bar';



Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "channels"
import 'bootstrap';

import { initChatroomCable } from '../channels/chatroom_channel';

import { initAutocomplete } from '../plugins/init_autocomplete';

import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  ChatBotToggle();
  initMapbox();
  WayLogic();
  UserSelection();
  ProgressBarLogic();
  initAutocomplete();
  initChatroomCable();
})
