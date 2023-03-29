
import requests
import lxml.html as html 

HOME_URL = 'https://www.larepublica.co/'

XPATH_LINK_TO_ARTICLE = "//h2[@class='headline']/a/@href"
XPATH_TITLE = '//h2//a/text()'
XPATH_SUMMARY = '//div[@class="lead"]/p/text()'
XPATH_BODY = "//div[@class='html-content']//p[not(@class)]/text()"


def parse_home():
  try: # try, except. Es ejecutado por si acaso la pagina nos devuelve algo diferente al status 200 ok. 
    response = requests.get(HOME_URL)  # usamos el metodo "get" de la libreria "request"
    if response.status_code == 200:  # 200, significa que la pagina cargo bien. 
      home = response.content.decode('utf-8')  # ? response.content: devuelve el contenido del html (el body). decode('utf-8') le da a entender a python que se usaran caracteres especiales como la ñ.
      parsed = html.fromstring(home)  # ? html.fromstring(), toma el html de "home" y lo convierte en un objeto de tipo lxml.html.HtmlElement para pode extraer info con Xpath o Css Selectors.
      links_to_news = parsed.xpath(XPATH_LINK_TO_ARTICLE)  # aqui se obtiene el resultado de aplicar el xpath guardado en la variable
      print(links_to_news)
    else:
      raise ValueError(f'Error recivido: {response.status_code}')  # raise, elevara un error de tipo "ValueError"
  
  except ValueError as ve: # ValueError: la pagina nos devuelve un mensaje de error. 
    print(ve)

def run():
  parse_home() 
  
if __name__ == '__main__':
  run()