from PIL import Image
import pytesseract

def ocr_core(file):
    pytesseract.pytesseract.tesseract_cmd = r'C:\\Program Files\\Tesseract-OCR\\tesseract.exe'
    text = pytesseract.image_to_string(Image.open(file))
    return text