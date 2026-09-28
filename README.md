## Q1: What broke, or took longer than expected?

Selenium was the slowest part because it loads a real browser and I perform multiple element lookups for each book. Also, changes in the page structure could cause element-not-found errors.
---

## Q2: If the site started blocking you after 50 requests, what would you change?

I would reduce the request rate, add delays and exponential backoff, reuse the same session, avoid unnecessary requests, and consider using requests instead of Selenium if JavaScript rendering is not required. I would also respect the site's robots.txt and terms of service.
