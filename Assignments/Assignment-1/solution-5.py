import matplotlib.pyplot as plt
import math


def u(n: int) -> int:
    """u[n]: Unit Step Signal"""

    return 1 if n >= 0 else 0


def x(n: int) -> float:
    """x[n]: Signal for Q5, part (i)"""

    return n * (u(n)-u(n-10)) + 10*math.exp(-0.3*(n-10))*(u(n-10)-u(n-20))


def y(n: int) -> float:
    """y[n]: Signal for Q5, part (ii)"""

    return math.cos(0.03 * math.pi * n) + u(n)


def plot1() -> None:
    """Plots signal x[n]"""

    N = range(0, 21)
    X = [x(n) for n in N]

    plt.axhline(y=0, linewidth=2, color="black")

    for n, xn in zip(N, X):
        plt.plot([n, n], [0, xn], linewidth=2, color="black")
        plt.plot(n, xn, linewidth=2, marker="o", color="black")

    plt.title("Question-5 Part (i)")
    plt.xlabel("n")
    plt.ylabel("x[n]")
    plt.grid(True)
    plt.show()


def plot2() -> None:
    """Plots signal x[n]"""

    N = range(0, 51)
    Y = [y(n) for n in N]

    plt.axhline(y=0, linewidth=2, color="black")

    for n, yn in zip(N, Y):
        plt.plot([n, n], [0, yn], linewidth=2, color="black")
        plt.plot(n, yn, linewidth=2, marker="o", color="black")

    plt.title("Question-5 Part (ii)")
    plt.xlabel("n")
    plt.ylabel("y[n]")
    plt.grid(True)
    plt.show()


def main() -> None:
    """__main__ function"""

    plot1()    # Quit Plot 1 to see Plot 2
    plot2()    # Quit Plot 2 to exit


if __name__ == "__main__":
    main()
