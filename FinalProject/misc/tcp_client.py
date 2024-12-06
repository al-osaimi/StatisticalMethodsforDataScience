import socket
import os
import time
import pandas as pd

def tcp_client(folder_path, host='127.0.0.1', port=65432, buffer_size=4096):
    """
    Client that sends files to the server and logs the results.
    """
    results = []

    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as client:
            client.connect((host, port))
            print(f"Connected to server {host}:{port}")

            for file_name in os.listdir(folder_path):
                file_path = os.path.join(folder_path, file_name)

                if not os.path.isfile(file_path):
                    continue

                # Get file type and size
                file_size = os.path.getsize(file_path)
                file_type = os.path.splitext(file_name)[1][1:]

                print(f"Processing file: {file_name} ({file_size} bytes)")

                # Send file info to the server
                start_time = time.time()
                client.sendall(f"{file_name}|{file_size}".encode('utf-8'))

                # Send the file content
                with open(file_path, 'rb') as file:
                    while chunk := file.read(buffer_size):
                        client.sendall(chunk)

                # Receive the hash from the server
                file_hash = client.recv(64).decode('utf-8')
                end_time = time.time()

                elapsed_time = end_time - start_time

                # Log the result
                results.append({
                    'File_Name': file_name,
                    'File_Type': file_type,
                    'File_Size': file_size,
                    'Time_Taken': elapsed_time,
                    'Hash_Value': file_hash
                })

                print(f"File {file_name} processed. Hash: {file_hash}, Time: {elapsed_time:.6f} seconds")

    except ConnectionRefusedError:
        print(f"Could not connect to server at {host}:{port}. Is it running?")
    except Exception as e:
        print(f"Unexpected error: {e}")
    finally:
        # Save results to CSV
        if results:
            df = pd.DataFrame(results)
            df.to_csv('file_processing_results.csv', index=False)
            print("Results saved to 'file_processing_results.csv'")

if __name__ == "__main__":
    folder_path = input("Enter the path to the folder containing files: ").strip()
    tcp_client(folder_path)
