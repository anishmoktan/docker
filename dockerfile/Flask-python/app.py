from flask import Flask, render_template, request
import random

app = Flask(__name__)

@app.route("/")
def index():
  return render_template("index.html")

@app.route("/random_number", methods=["GET", "POST"])
def random_number():
  if request.method == "POST":
    number = random.randint(1, 100)
    return render_template("random_number.html", number=number)
  else:
    return render_template("random_number.html")

if __name__ == "__main__":
  app.run(debug=True)
