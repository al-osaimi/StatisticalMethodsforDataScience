import socket
import hashlib
import os

def tcp_server(host='127.0.0.1', port=65432, buffer_size=4096):
    """
    Server that receives files, hashes them, and returns the hash.
    """
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server:
            server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            server.bind((host, port))
            server.listen()
            print(f"Server is running and listening on {host}:{port}")

            while True:
                print("Waiting for a connection...")
                conn, addr = server.accept()
                print(f"Connected by {addr}")

                with conn:
                    while True:
                        try:
                            # Receive file name and size
                            file_info = conn.recv(buffer_size).decode('utf-8')
                            if not file_info:
                                break

                            file_name, file_size = file_info.split('|')
                            file_size = int(file_size)
                            print(f"Receiving file: {file_name} ({file_size} bytes)")

                            # Receive the file data
                            received_size = 0
                            file_data = b""
                            while received_size < file_size:
                                chunk = conn.recv(buffer_size)
                                if not chunk:
                                    break
                                file_data += chunk
                                received_size += len(chunk)

                            # Hash the file data
                            file_hash = hashlib.sha256(file_data).hexdigest()
                            print(f"File hashed: {file_hash}")

                            # Send the hash back to the client
                            conn.sendall(file_hash.encode('utf-8'))

                        except Exception as e:
                            print(f"Error: {e}")
                            break
    except KeyboardInterrupt:
        print("\nServer shutting down gracefully.")
    except Exception as e:
        print(f"Unexpected error: {e}")

if __name__ == "__main__":
    tcp_server()
