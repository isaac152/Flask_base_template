import unittest

from app import create_app


class BaseTestCase(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.app.testing = True
        self.client = self.app.test_client()

    def setDown(self):
        pass
