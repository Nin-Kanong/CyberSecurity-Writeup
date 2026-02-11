import time
import random
import os

# ================== SETUP ==================
correct_pin = "1234"
attempts = 0
balance = 1000
transactions = []

log_file = "Python Exercise/atm_log.txt"

# Ensure log directory exists
os.makedirs(os.path.dirname(log_file), exist_ok=True)

# ================== FUNCTIONS ==================
def log_action(action):
    with open(log_file, "a") as f:
        f.write(f"{time.strftime('%Y-%m-%d %H:%M:%S')} - {action}\n")

def generate_new_pin():
    return str(random.randint(1000, 9999))

# ================== PIN AUTHENTICATION ==================
while attempts < 3:
    pin = input("Enter your ATM PIN: ")

    if pin == correct_pin:
        print("\nPIN accepted. Access granted!\n")
        log_action("Successful login")
        break
    else:
        attempts += 1
        print(f"Incorrect PIN. Attempts left: {3 - attempts}")
        log_action("Failed login attempt")

else:
    print("Too many incorrect attempts. ATM locked.")
    log_action("ATM locked after 3 failed attempts")
    exit()

# ================== ATM MENU ==================
while True:
    print("=" * 40)
    print("\t WELCOME TO NU ATM")
    print("=" * 40)
    print("""1. Check Balance
2. Deposit Money
3. Withdraw Money
4. Mini Statement
5. Exit""")
    print("=" * 40)

    choice = input("Please select an option (1-5): ")

    # ---------- CHECK BALANCE ----------
    if choice == "1":
        print(f"Your balance is: ${balance:.2f}")
        log_action(f"Checked balance: ${balance:.2f}")

    # ---------- DEPOSIT MONEY (NEW PIN GENERATED) ----------
    elif choice == "2":
        try:
            amount = float(input("Enter amount to deposit: "))

            if amount <= 0:
                print("Deposit amount must be positive.")
                continue

            balance += amount
            transactions.append(f"Deposited ${amount:.2f}")

            # Generate NEW PIN
            correct_pin = generate_new_pin()

            print(f"\n${amount:.2f} deposited successfully!")
            print("⚠️ Security Update: Your PIN has been changed.")
            print(f"🔐 Your NEW PIN is: {correct_pin}")

            log_action(
                f"Deposited ${amount:.2f}, "
                f"New Balance: ${balance:.2f}, "
                f"New PIN Generated: {correct_pin}"
            )

        except ValueError:
            print("Invalid input. Please enter a number.")

    # ---------- WITHDRAW MONEY ----------
    elif choice == "3":
        try:
            amount = float(input("Enter amount to withdraw: "))

            if amount <= 0:
                print("Withdrawal amount must be positive.")
                continue

            if amount > balance:
                print("Insufficient balance.")
                log_action(
                    f"Failed withdrawal: ${amount:.2f}, "
                    f"Balance: ${balance:.2f}"
                )
                continue

            balance -= amount
            transactions.append(f"Withdrew ${amount:.2f}")

            print(f"${amount:.2f} withdrawn successfully!")
            log_action(
                f"Withdrew ${amount:.2f}, "
                f"New Balance: ${balance:.2f}"
            )

        except ValueError:
            print("Invalid input. Please enter a number.")

    # ---------- MINI STATEMENT ----------
    elif choice == "4":
        print("\n=== MINI STATEMENT ===")

        if transactions:
            for t in transactions[-5:]:
                print(t)
        else:
            print("No transactions yet.")

        print(f"Current Balance: ${balance:.2f}")
        log_action("Viewed mini statement")

    # ---------- EXIT ----------
    elif choice == "5":
        print("\nThank you for using NU ATM. Goodbye!")
        log_action("Exited ATM session")
        break

    # ---------- INVALID OPTION ----------
    else:
        print("Invalid option. Please try again.")
        log_action("Invalid menu option selected")



<img width="1735" height="1003" alt="image" src="https://github.com/user-attachments/assets/884999e9-da5e-4718-acd5-9c959d5bb722" />

<img width="1177" height="907" alt="image" src="https://github.com/user-attachments/assets/1295ab41-7ea3-4adf-92bb-6df93282ddbc" />

<img width="1250" height="899" alt="image" src="https://github.com/user-attachments/assets/cbeb43c6-5861-4be8-bbe2-5513ac62ccc8" />
