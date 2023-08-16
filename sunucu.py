from flask import Flask, request
app = Flask(__name__)


@app.route('/ornek', methods=['POST'])
def example():
    data = request.json
    value = data['value']
    if value == "0":
        return "False"
    else:
        return "True"


if __name__ == '__main__':
    app.run()
