```html
<div class="quote">  
<span class="text">Hello</span>  
</div>
```

```python
soup.select(".quote .text")
```

`select()` возвращает список.

Если нужен один:
`soup.select_one(".quote")`


![[Pasted image 20260312172408.png]]


Aach&aiSaet)ah3shae2

polyboy172232


27a75d2fe5db1a4de41320d3b651d73d860120501c7f7e836a45bc0e0e3344932faa11a46bf8b4266ecc08143129d4d38a20e8bdabcbe24253cf414ebc6503c9ad6182f73ae384ecc9c217d852c9683f


{
	"requestHeaders": {
		"headers": [
			{
				"name": "Accept",
				"value": "*/*"
			},
			{
				"name": "Accept-Encoding",
				"value": "gzip, deflate, br, zstd"
			},
			{
				"name": "Accept-Language",
				"value": "en-US,en;q=0.9"
			},
			{
				"name": "authorization",
				"value": "Bearer AAAAAAAAAAAAAAAAAAAAANRILgAAAAAAnNwIzUejRCOuH5E6I8xnZz4puTs%3D1Zv7ttfk8LF81IUq16cHjhLTvJu4FA33AGWWjCpTnA"
			},
			{
				"name": "Connection",
				"value": "keep-alive"
			},
			{
				"name": "Content-Length",
				"value": "1544"
			},
			{
				"name": "Content-Type",
				"value": "application/x-www-form-urlencoded"
			},
			{
				"name": "Cookie",
				"value": "guest_id=v1%3A177218447534822936; __cuid=41e2df87a8fa4d84ac9d83c3d29307ac; g_state={\"i_l\":1,\"i_ll\":1773310877582,\"i_e\":{\"enable_itp_optimization\":0},\"i_b\":\"f5jqEeTG34lNerXnJyJeWeMObb97KTtSRwzw0anpUag\",\"i_p\":1772202676525}; d_prefs=MToxLGNvbnNlbnRfdmVyc2lvbjoyLHRleHRfdmVyc2lvbjoxMDAw; guest_id_ads=v1%3A177218447534822936; guest_id_marketing=v1%3A177218447534822936; personalization_id=\"v1_U90GplUJOO8qt2chyV0amw==\"; kdt=LwdymMeN0M6Od6dMQ1zMQfwiymO26MbVaj7jFwyR; cf_clearance=7vEWZllpPnaNnjUSbjeSKvDVXjVFYE7uyjvD146CQjg-1773311372-1.2.1.1-52FRJWIbWYu9wdEp4o1.8PNaD2J5TfFYSChGBwiPSuAUKF7tYMMxe9Z1Wm_z6FJ9RAYpc4onz2PNuoMTp4KjRZo3B5qqHairuPIW0C.l6CicxrRJ5Az.b74vH0nBoqMEGKT7xma0GF86WYrgqWmJPM5HW7xfWIWjq72yRDBA.7laM849kCg_a2oUDg1QSLcnccWt9.YQVoad9AOYp1fecZrgxMjIeLRe2qYlfBrxdfo; dnt=1; lang=en; __cf_bm=040TQAa9x5IJDO.AQYaXO_MRSbeIf9Heyzeedplpa9A-1773312077-1.0.1.1-wGUI2H6yMPO0v67ljCYfjvVTZvXNl0dkCoHkfgBW3OhwGFfCLXhxRQUd9Z9K7QzPCIb6hsPgnV_SUZrazhASjEZgAKSw8HbX53hGbkrifYg; _twitter_sess=BAh7CSIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo%250ASGFzaHsABjoKQHVzZWR7ADoPY3JlYXRlZF9hdGwrCG0QjuGcAToMY3NyZl9p%250AZCIlMjIxOTZiOWI3MzE4MWRjZWNlNmRlYTA4NGM4OWVhMjA6B2lkIiUzODlj%250AOWFlMjU5YjM3N2JmOTFhMTU5MDAxMjVkNTA1Yg%253D%253D--79ae661515db7a210be042d3c13daa5a643f7b00; gt=2032038655615795362; att=1-nVPIGhYIci1ixNrId75P8sMK8ggFLeY5dZT4KzUq; twid=u%3D2032040056161255425; ct0=27a75d2fe5db1a4de41320d3b651d73d860120501c7f7e836a45bc0e0e3344932faa11a46bf8b4266ecc08143129d4d38a20e8bdabcbe24253cf414ebc6503c9ad6182f73ae384ecc9c217d852c9683f; auth_token=0f7a4a4aae5a3a9ada7cf8bd24d8ff5a910c4a92"
			},
			{
				"name": "DNT",
				"value": "1"
			},
			{
				"name": "Host",
				"value": "x.com"
			},
			{
				"name": "Origin",
				"value": "https://x.com"
			},
			{
				"name": "Referer",
				"value": "https://x.com/home?lang=en"
			},
			{
				"name": "Sec-Fetch-Dest",
				"value": "empty"
			},
			{
				"name": "Sec-Fetch-Mode",
				"value": "cors"
			},
			{
				"name": "Sec-Fetch-Site",
				"value": "same-origin"
			},
			{
				"name": "Sec-GPC",
				"value": "1"
			},
			{
				"name": "TE",
				"value": "trailers"
			},
			{
				"name": "User-Agent",
				"value": "Mozilla/5.0 (X11; Linux x86_64; rv:148.0) Gecko/20100101 Firefox/148.0"
			},
			{
				"name": "x-client-transaction-id",
				"value": "Vs3222x4LSQwDMyc5ASc9c9na6XSF2sYMgeMcZT9jW2klwlhxiK3ujZyAQZ12Jln0ohiNVPcJ2zDp5v4jLYi0Lqu8GOUVQ"
			},
			{
				"name": "x-csrf-token",
				"value": "27a75d2fe5db1a4de41320d3b651d73d860120501c7f7e836a45bc0e0e3344932faa11a46bf8b4266ecc08143129d4d38a20e8bdabcbe24253cf414ebc6503c9ad6182f73ae384ecc9c217d852c9683f"
			},
			{
				"name": "x-twitter-active-user",
				"value": "yes"
			},
			{
				"name": "x-twitter-auth-type",
				"value": "OAuth2Session"
			},
			{
				"name": "x-twitter-client-language",
				"value": "en"
			}
		]
	}
}