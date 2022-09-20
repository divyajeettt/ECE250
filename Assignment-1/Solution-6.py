import matplotlib.pyplot as plt
import math


def u(n: int) -> int:
    """u[n]: Unit Step Signal"""

    return 1 if n >= 0 else 0


def z(n: int) -> int:
    """z[n]: Signal for Q6"""

    return u(n) - u(n-10)


def main() -> None:
    """__main__ function"""

    N = range(-20, 21)
    Z = [z(n) for n in N]
    oddZ = [(z(n) - z(-n)) / 2 for n in N]
    evenZ = [(z(n) + z(-n)) / 2 for n in N]

    fig, axes = plt.subplots(3, 1)

    for i in range(3):
        axes[i].axhline(y=0, linewidth=2, color="black")
        axes[i].grid(True)

    axes[0].set_ylabel("z[n]")
    axes[1].set_ylabel("Odd{z[n]}")
    axes[2].set_ylabel("Even{z[n]}")

    for n, zn in zip(N, Z):
        axes[0].plot([n, n], [0, zn], linewidth=2, color="black")
        axes[0].plot(n, zn, linewidth=2, marker="o", color="black")

    for n, oddzn in zip(N, oddZ):
        axes[1].plot([n, n], [0, oddzn], linewidth=2, color="black")
        axes[1].plot(n, oddzn, linewidth=2, marker="o", color="black")

    for n, evenzn in zip(N, evenZ):
        axes[2].plot([n, n], [0, evenzn], linewidth=2, color="black")
        axes[2].plot(n, evenzn, linewidth=2, marker="o", color="black")

    axes[0].set_title("Question-6")
    axes[2].set_xlabel("n")
    plt.show()


if __name__ == "__main__":
    main()