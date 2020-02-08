---
title: API Reference

language_tabs:
- bash
- javascript

includes:

search: true

toc_footers:
- <a href='http://github.com/mpociot/documentarian'>Documentation Powered by Documentarian</a>
---
<!-- START_INFO -->
# Info

Welcome to the generated API reference.
[Get Postman Collection](http://localhost/docs/collection.json)

<!-- END_INFO -->

#HomeController


<!-- START_cb859c8e84c35d7133b6a6c8eac253f8 -->
## Show Animal List

<br><small style="padding: 1px 9px 2px;font-weight: bold;white-space: nowrap;color: #ffffff;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px;background-color: #3a87ad;">Requires authentication</small>
> Example request:

```bash
curl -X GET -G "http://localhost/home" \
    -H "Content-Type: application/json" \
    -d '{"sort_field":"a","sort":"animi"}'

```

```javascript
const url = new URL("http://localhost/home");

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
}

let body = {
    "sort_field": "a",
    "sort": "animi"
}

fetch(url, {
    method: "GET",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```

### HTTP Request
`GET home`

#### Body Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    sort_field | 標記由哪個資源開始查詢(預設ID:1) |  optional  | Example: 1
    sort | 設定排序方式 |  optional  | Example: name:asc

<!-- END_cb859c8e84c35d7133b6a6c8eac253f8 -->


