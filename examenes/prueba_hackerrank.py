
import unittest
from selenium import webdriver
from selenium.webdriver.common.by import By  # make easier for search the fields


driver = webdriver.Chrome(executable_path='./chromedriver')  # execute the chrome driver
driver.get('https://duckduckgo.com/')
driver.maximize_window()
driver.implicitly_wait(5)



search_field = driver.find_element(By.XPATH, '//*[@id="search_form_input_homepage"]')
search_field.send_keys('Cats (musical) - Wikipedia')
search_field.submit()  


# look for the result with the wikipedia answer 

driver.find_element(By.XPATH, '//*[@id="r1-0"]/div[2]/h2/a')

# Assertion about the first 15 contents 

contents = driver.find_element(By.TAG_NAME, 'p')
assert len(contents) >= 15, f"We have just fund {len(contents)} contents"


# closing the driver: 

driver.quit()


if __name__ == '__main__':
  unittest.main(verbosity = 2)