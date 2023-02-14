from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Configuration for selenium web driver to use Chrome
chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--start-maximized")
driver = webdriver.Chrome(options=chrome_options)

# 1. go to https://duckduckgo.com/
driver.get("https://duckduckgo.com/")

# 2. Search for 'Cats' in the field and hit the search bottom
search_box = driver.find_element(By.NAME, "q")
search_box.send_keys("cats")
search_box.submit()

# 3. Hit in "Cats (musical) - wikipedia" in the results
result_link = WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.XPATH, "//a[contains(text(), 'Cats (musical) - Wikipedia')]"))
)
result_link.click()

# 4. Create the assertion of the header page
header = WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.XPATH, "//h1[@id='firstHeading']"))
)
assert header.text == "Cats (musical)"

# 5. Assertion for the ~15 first results
contents = WebDriverWait(driver, 10).until(
    EC.presence_of_all_elements_located((By.XPATH, "//div[@id='toc']//a[contains(@class,'tocsection')]"))
)
assert len(contents) == 15

# Close google chrome
driver.quit()