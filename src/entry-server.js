import { renderToString } from 'vue/server-renderer'
import { createApp } from './main'
import * as os from "os";

export async function render() {
  const { app } = createApp()

  const ctx = {
    hostname: os.hostname()
  }
  const html = await renderToString(app, ctx)

  return { html }
}
