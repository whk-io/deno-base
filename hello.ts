import { serve } from "https://deno.land/std@0.50.0/http/server.ts";
const s = serve({ port: 9001 });
console.log("http://localhost:9001/");
for await (const req of s) {
  req.respond({ body: "Hello World\n" });
}