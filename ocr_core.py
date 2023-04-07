from PIL import Image
import pytesseract

def ocr_core(file, lang):
    pytesseract.pytesseract.tesseract_cmd = r'C:\\Program Files\\Tesseract-OCR\\tesseract.exe'
    text = pytesseract.image_to_string(Image.open(file),lang =lang, config='--psm 3')
    return text