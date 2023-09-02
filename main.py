# This Python file uses the following encoding: utf-8
import sys
from pathlib import Path
import random
from PySide6.QtCore import QObject, Signal, Slot
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine




class NumberGenerator(QObject):
    def __init__(self):
        QObject.__init__(self)

    nextNumber = Signal(int, arguments=["number"])
    bulentNumber = Signal(int, arguments=["number"])
    bulentString = Signal(str, arguments=["value"])

    @Slot()
    def updateNumber(self):
        self.nextNumber.emit(random.randint(0,99))
        self.bulentNumber.emit(random.randint(100,200))
        self.bulentString.emit("bulent")


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    number_generator = NumberGenerator()
    engine.rootContext().setContextProperty("elif",number_generator)

    qml_file = Path(__file__).resolve().parent / "component.qml"
    engine.load(qml_file)
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
