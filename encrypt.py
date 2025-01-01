import argparse
import base64

class Encoder:
    def encode(self, string):
        return base64.b64encode(string.encode('utf-8'))

    def decode(self, encoded_str):
        return base64.b64decode(encoded_str).decode('utf-8')

def main():
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('string')
    args = parser.parse_args()
    encoder = Encoder()
    encoded_str = encoder.encode(args.string)
    print(f'encoded string: {encoded_str}')

if __name__ == "__main__":
    main()