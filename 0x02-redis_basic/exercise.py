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
