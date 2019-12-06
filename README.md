kong-plugin-custom-request-transformer
====================

This repository contains a very simple Kong request transformer with some added functionality

##### you can copy headers to body by registering the plugin with -Header.field- sintax value.

example:
```json
{
    "name": "kong-plugin-custom-request-transformer",
    "config": {
        "add": {
        	"body":["meta.traceId:-header.Traceid-"]
        }
    }
}
```
+ this will copy the Traceid header field to a field named traceId inside the object field meta on added to the body, thi ssupport multiple nesting on the body, creating objects if required: syntax root.child.grandchild.<any nesting level>.targetfield on the left side of the :

##### you can wrap your body by registering the wrap body field.

example:
```json
{
    "name": "kong-plugin-custom-request-transformer",
    "config": {
        "wrap": {
            "body": "data"
        },
        "add": {
            "body": [
                "meta.traceId:-header.Traceid-"
            ]
        },
        "remove":{
        	"headers":["Traceid"]
        }
    }
}
```
+ this will wrap the original body inside a field called data: resulting in something like this:
```json
{
    "data": {
        "email": "test@abc.com",
        "name": "kong wrap"
    },
    "meta": {
        "traceId": "req-3640c624-7e38-4ede-9800-11ae9fd0f9f4"
    }
}
```

This template was designed to work with the `kong-vagrant`
[development environment](https://github.com/Mashape/kong-vagrant). Please
check out that repo's `README` for usage instructions.
