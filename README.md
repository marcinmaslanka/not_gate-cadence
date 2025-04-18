# 🔧 Step-by-Step Procedure to Simulate a Verilog Design

This guide walks you through how to simulate a Verilog file using a graphical simulation tool (e.g., NC-Verilog in Cadence).

---

## 🛠️ 1. Create a Library

Start by creating a new library (e.g., `AMS`).

---

## 📁 2. Create a Cellview

- Inside your library, create a new cellview called `not_gate`.
- Choose **Verilog** as the view type.
- THe Name file will appead as `functional`.
- Paste your Verilog code into this file and save.

---

## 🧰 3. Launch NC-Verilog Tool

- Go to **Command Window → Tools → NC-Verilog**.
- Select your **library** and **Verilog cellview**.
- Choose **Simulation Mode** as `interactive`.

---

## ⚙️ 4. Initialize and Simulate

On the left side, click the following buttons in order:

1. **Initialize the Design**
2. **Generate Netlist**
3. **Simulate**

A **Simulation Analysis Environment** will now open.

---

## 🔍 5. Configure Simulation

- Select all input and output signals.
- Click on **"Send selected objects to target Browser"**.
- A browser window will open with a template testbench.
- Find the path where you insert your stimulus.

---

## ✍️ 6. Edit Testbench Stimulus

- In the testbench browser, find the path indicated for the testbench file.
- Locate the file called `testfixture.verilog`.
- Open it and insert your input stimulus.
- Save the file after editing.

---

## 📈 7. View Waveform

- Close the source browser.
- Return to the Simulation Analysis Environment.
- Click **"Send selected objects to target waveform window"** to visualize signal transitions.

---

## ✅ Done!

You're now ready to simulate and analyze your Verilog design!

Feel free to commit your testbench and waveform screenshots in this repo to document your process.
