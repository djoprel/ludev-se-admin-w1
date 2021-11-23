import { shallowMount } from "@vue/test-utils";
import HelloWorld from "../../src/components/HelloWorld.vue";
import Vuetify from "vuetify";

import App from "../../src/App.vue";

let vuetify;
beforeEach(() => {
  vuetify = new Vuetify();
});

describe("HelloWorld.vue", () => {
  it("renders props.msg when passed", () => {
    const msg = "new message";
    const wrapper = shallowMount(HelloWorld, {
      propsData: { msg },
      vuetify,
    });
    expect(wrapper.text()).toMatch(msg);
  });
});

describe("App.vue", () => {
  it("renders props.msg when passed", () => {
    const msg = "new message";
    const wrapper = shallowMount(App, {
      propsData: { msg },
      vuetify,
    });
    expect(wrapper.text()).toMatch(msg);
  });
});
