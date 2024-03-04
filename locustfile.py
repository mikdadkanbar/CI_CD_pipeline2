from locust import HttpUser, task

class TestUser(HttpUser):
    @task
    def test(self):
        self.client.post("http://localhost:5000/predict")