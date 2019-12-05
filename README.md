kong-plugin-custom-request-transformer
====================

This repository contains a very simple Kong request transformer with added functionality
you can copy headers to body by registering the plugin with -Header.field- sintax value.

example:
```json
{
    "name": "kong-plugin-custom-request-transformer",
    "config": {
        "add": {
        	"body":["traceId:-header.Traceid-"]
        }
    }
}
```
+ this will copy the Traceid header field to a field named traceId on added to the body

This template was designed to work with the `kong-vagrant`
[development environment](https://github.com/Mashape/kong-vagrant). Please
check out that repo's `README` for usage instructions.
