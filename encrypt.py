import argparse
import base64

class Encoder:
    def __init__(self):
        self.key = 'b_@dt'

    def encode(self, string):
        enc = []
        for i in range(len(string)):
            key_c = self.key[i % len(self.key)]
            enc_c = chr((ord(string[i]) + ord(key_c)) % 256)
            enc.append(enc_c)
        return base64.urlsafe_b64encode("".join(enc).encode()).decode()

    def decode(self, encoded_str):
        dec = []
        enc = base64.urlsafe_b64decode(encoded_str).decode()
        for i in range(len(enc)):
            key_c = self.key[i % len(self.key)]
            dec_c = chr((256 + ord(enc[i]) - ord(key_c)) % 256)
            dec.append(dec_c)
        return "".join(dec)

def main():
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('string')
    args = parser.parse_args()
    encoder = Encoder()
    encoded_str = encoder.encode(args.string)
    print(f'encoded string: {encoded_str}')

if __name__ == "__main__":
    main()