import nltk
from nltk.tokenize import word_tokenize, sent_tokenize
from nltk.corpus import stopwords
from nltk.stem import PorterStemmer

# Download required NLTK data (you can comment this line after the first download)
nltk.download('punkt')
nltk.download('stopwords')

class NLPProcessor:
    def __init__(self):
        self.stop_words = set(stopwords.words('english'))
        self.stemmer = PorterStemmer()

    def process_text(self, text):
        # Tokenize the text into words and sentences
        words = word_tokenize(text)
        sentences = sent_tokenize(text)
        # Remove stopwords
        words = [word.lower() for word in words if word.lower() not in self.stop_words]
        # Stem the words
        words = [self.stemmer.stem(word) for word in words]
        return words, sentences

# Example usage:
if __name__ == "__main__":
    nlp = NLPProcessor()

    input_text = "Schedule a meeting with John tomorrow at 2 pm."
    words, sentences = nlp.process_text(input_text)

    print("Processed words:", words)
    print("Processed sentences:", sentences)
