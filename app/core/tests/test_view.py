from tests.base import BaseTestCase


class TestView(BaseTestCase):
    def test_index(self):
        response = self.client.get("/")
        self.assertEqual(response.status_code, 200)
        self.assertTrue(b"<h1>Index Main</h1>" in response.data)
