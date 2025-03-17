### **Ruby String Calculator Project**  
This project contains a **basic implementation of a string calculator**, along with **unit tests using Minitest** for test-driven development (**TDD**).  

The `test_TDD_BDD.rb` file contains unit tests for the methods implemented in `string_calculator.rb`.  

---

## **📌 Getting Started**  

Follow these steps to set up and execute the test cases:  

### **1️⃣ Clone the Repository**  
If you haven't cloned the repository yet, use the following command:  
```sh
   git clone https://github.com/tikhandesanket/string_calculator.git
   cd string_calculator
```  

---

### **2️⃣ Install Dependencies**  

#### **🔹 Install Ruby**  
- **On macOS:** Install Ruby via Homebrew:  
  ```sh
  brew install ruby
  ```  
- **On Linux (Ubuntu/Debian):**  
  ```sh
  sudo apt update
  sudo apt install ruby-full
  ```  
- **On Windows:**  
  - Download the Ruby installer from [RubyInstaller](https://rubyinstaller.org/).  
  - Follow the installation instructions on the website.  

#### **🔹 Install Minitest**  
You will need **Minitest** for running tests. To install it, run:  

```sh
   gem install minitest
```

---

### **3️⃣ Check File Structure**  
Ensure your project folder has the following structure:  

```
/string_calculator
  ├── string_calculator.rb
  └── test_TDD_BDD.rb
```

---

### **4️⃣ Run the Tests**  
The `test_TDD_BDD.rb` file contains the test cases for the string calculator. To run the tests, execute:  

```sh
ruby test_TDD_BDD.rb
```

If everything is set up correctly, you should see output similar to:  

```
Run options: --seed 12345

# Running:
..

Finished in 0.002989s, 1338.1878 runs/s, 1338.1878 assertions/s.

6 runs, 6 assertions, 0 failures, 0 errors, 0 skips
```

This means all tests have passed successfully! ✅  

---

### **5️⃣ Adding New Tests**  
If you want to add more tests, follow this format:  

- Define a new method within the `TestStringCalculator` class.  
- Use assertions like `assert_equal`, `assert_nil`, or `assert_raises` to validate expected outputs.  

#### **Example:**  

```ruby
def test_multiple_numbers
  assert_equal 6, StringCalculator.add("1,2,3")
end
```

After adding the test, re-run the test suite:  

```sh
ruby test_TDD_BDD.rb
```

---

## **📌 How the String Calculator Works**  

The **`StringCalculator` class** (located in `string_calculator.rb`) implements an **`add`** method that performs addition on string input.  

The test cases are based on the following rules:  
✅ If the **input string is empty**, it returns `0`.  
✅ If the **input string contains a single number**, it returns that number.  
✅ Additional tests can be added for handling **multiple numbers or delimiters**.  

---

## **📌 Example Test Cases in `test_TDD_BDD.rb`**  

### **🔹 Test 1: Empty String**  
```ruby
def test_empty_string
  assert_equal 0, StringCalculator.add("")
end
```
✅ This test ensures that an **empty string returns 0**.  

### **🔹 Test 2: Single Number**  
```ruby
def test_single_number
  assert_equal 1, StringCalculator.add("1")
end
```
✅ This test ensures that the string `"1"` returns `1`.  

---

## **📌 Contributing**  
Feel free to contribute by adding more test cases or enhancing the calculator functionality.  

---

## **📌 License**  
This project is **open-source** and available under the **MIT License**.  

---

