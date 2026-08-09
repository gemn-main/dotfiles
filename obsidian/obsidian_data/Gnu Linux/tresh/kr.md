[OTUS] Пентест. Практика тестирования на проникновение (2019)
https://cloud.mail.ru/public/Z5Dr/6FWr35WYs


[OTUS] Пентест. Практика тестирования на проникновение https://cloud.mail.ru/public/Z5Dr/6FWr35WYs

**"Этичный хакинг. Взлом антифрод систем"**
https://cloud.mail.ru/public/1syC/KMG7CJ7M2

крутой пентест eng: https://cloud.mail.ru/public/pZ2d/TLMfesjwE

https://www.youtube.com/watch?v=E_7ggBWYSWQ&t=137s


eng 
https://cloud.mail.ru/public/GQfU/4zBv1mskt

https://cloud.mail.ru/public/uAUw/omrwd92or

English with Lucy



Traceback (most recent call last):
  File "/root/poly/polymarket/run.py", line 176, in <module>
    run()
  File "/root/poly/polymarket/run.py", line 97, in run
    row, edge, market_stt = get_market()
                            ^^^^^^^^^^^^
  File "/root/poly/polymarket/scraping/polymarket/polymarket_scraping.py", line 382, in run
    market, edge, market_stt = play()
                               ^^^^^^
  File "/root/poly/polymarket/scraping/polymarket/polymarket_scraping.py", line 371, in play
    market, edge, market_stt = get_order(market_f)
                               ^^^^^^^^^^^^^^^^^^^
  File "/root/poly/polymarket/scraping/polymarket/prompt_p.py", line 487, in get_order
    return market_d, round(a, 4), "\n=========\nargumentation of the previous model(edge): " + forecast_d  + "\nMarket: "+ str(market_ds)
                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
UnboundLocalError: cannot access local variable 'forecast_d' where it is not associated with a value
(poly) root@provans:~/poly/polymarket# 


RickSanchez vae_ch[ohroucee2Eeli



def check_gnews_api_key(api_key: str, timeout: int = 10) -> dict:
    """
    Проверяет один API-ключ GNews.
    Возвращает словарь с результатом: статус и код ответа.
    """
    url = "https://gnews.io/api/v4/search"
    params = {
        "q": "test",
        "max": 1,
        "apikey": api_key,
    }
    try:
        response = requests.get(url, params=params, timeout=timeout)
    except requests.RequestException as e:
        return {"status": "error", "detail": str(e), "code": None}
    if response.status_code == 200:
        return {"status": "valid", "detail": "OK", "code": 200}
    elif response.status_code in (401, 403):
        return {"status": "invalid", "detail": "Unauthorized", "code": response.status_code}
    elif response.status_code == 429:
        return {"status": "rate_limited", "detail": "Quota exceeded", "code": 429}
    else:
        return {"status": "unknown", "detail": response.text, "code": response.status_code}


def check_multiple_keys(keys: list[str], delay: float = 1.0) -> dict:
    """
    Проверяет список ключей и собирает статистику.
    :param keys: список API-ключей
    :param delay: пауза между запросами (в секундах), чтобы не словить лимиты
    :return: словарь со статистикой и подробными результатами
    """
    results = {}
    stats = {"valid": 0, "invalid": 0, "rate_limited": 0, "error": 0, "unknown": 0}
    for i, key in enumerate(keys, 1):
        result = check_gnews_api_key(key)
        results[key] = result
        stats[result["status"]] += 1
        print(f"[{i}/{len(keys)}] {key[:8]}... -> {result['status']} ({result['detail']})")
        if i < len(keys):
            time.sleep(delay)
    print("\n=== Итоговая статистика ===")
    for status, count in stats.items():
        print(f"{status}: {count}")
    return {"results": results, "stats": stats}


# Пример использования
if __name__ == "__main__":
    api_keys = [
        "5c7baa2602bcd6b4404c3d4f85b72c22",
        "b3395b89bea3b45d4d50da9089611ad3",
        
    ]
    report = check_multiple_keys(api_keys, delay=5)
    print("\nРабочие ключи:")
    for key, res in report["results"].items():
        if res["status"] == "valid":
            print(f"  {key}")

