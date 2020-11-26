import logging
from operator import itemgetter


from flask import Flask, jsonify

__version__ = "0.0.1"
app = Flask(__name__)
logger = logging.getLogger(__name__)


@app.route("/", methods=["GET"])
def up():
    logger.info("Got request to /")
    return jsonify({"name": __name__, "version": __version__, "status": "healthy"})
