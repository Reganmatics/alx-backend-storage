#!/usr/bin/env python3
"""
Task 0. Writing strings to Redis
"""
import redis
import uuid
from redis.typing import Union


class Cache:
    """
    this class uses an instance of redis as a private variable
    """
    def __init__(self):
        """
        constructor method
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """
        args:
            data -> a union of data types
        return -> str
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

    def get(self, key: str, fn: Callable = None) -> \
            Union[str, bytes, int, float]:
        """
        args:
            key
            fn
        return either of str, bytes, int, float
        """
        data = self._redis.get(key)
        if data is None:
            return None
        if fn:
            return fn(data)
        return data

    def get_str(self, key: str) -> str:
        """args: key"""
        return self.get(key, str)

    def get_int(self, key: str) -> int:
        """args: key"""
        return self.get(key, int)
