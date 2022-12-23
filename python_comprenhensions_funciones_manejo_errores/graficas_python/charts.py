
import matplotlib.pyplot as plt  # matplotlib: nos va ayudar para la visualizacion de datos. 

def generate_bar_chart(labels, values):
  fig, ax = plt.subplots() # ? ax: se refiere a las coordenadas de nuestra grafica. 
  ax.bar(labels, values)  # ? .bar(), indica que haremos una grafica de barras; labels/values seran sus valores a graficar
  plt.show()  # ? .show() indica que se debe graficar los valores pasados. 



if __name__ == "__main__":
  labels = ['a', 'b', 'c']
  values = [10, 200, 120]
  generate_bar_chart(labels, values)