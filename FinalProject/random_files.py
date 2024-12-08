import os
import random
import string

def generate_random_string(size):
    """Generate a random string of the specified size."""
    return ''.join(random.choices(string.ascii_letters + string.digits, k=size))

def generate_random_bytes(size):
    """Generate random bytes of the specified size."""
    return os.urandom(size)

def create_random_file(directory, file_types, file_count):
    """Create random files in the specified directory."""
    os.makedirs(directory, exist_ok=True)
    
    for i in range(file_count):
        file_name = f"file_{i+1}_{generate_random_string(5)}"
        file_type = random.choice(file_types)
        full_path = os.path.join(directory, f"{file_name}.{file_type}")
        
        # Generate a random file size between 1KB and 1MB
        file_size = random.randint(1024, 1024 * 1024)
        
        if file_type in ['txt', 'csv', 'html', 'json']:
            content = generate_random_string(file_size)
            with open(full_path, 'w') as f:
                f.write(content)
        else:  # For binary files
            content = generate_random_bytes(file_size)
            with open(full_path, 'wb') as f:
                f.write(content)
        
        print(f"Created: {full_path} (Size: {file_size} bytes)")

if __name__ == "__main__":
    # Get user input
    try:
        num_files = int(input("Enter the number of random files to generate: "))
        if num_files <= 0:
            raise ValueError("Number of files should be greater than zero.")
        
        file_types = ['txt', 'csv', 'html', 'json', 'bin', 'exe', 'jpg', 'png']
        output_dir = "random_files"
        
        create_random_file(output_dir, file_types, num_files)
        print(f"\nGenerated {num_files} random files in the '{output_dir}' directory.")
    
    except ValueError as e:
        print(f"Error: {e}")
