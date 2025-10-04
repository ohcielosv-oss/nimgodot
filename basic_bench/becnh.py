
import subprocess
import time
import statistics

def benchmark(executable, runs=10):
    tiempos = []
    for i in range(runs):
        inicio = time.perf_counter()
        subprocess.run([executable], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        fin = time.perf_counter()
        tiempos.append(fin - inicio)
    return tiempos

if __name__ == "__main__":
    exe1 = "./b.exe"  
    exe2 = "./a.exe"  

    tiempos1 = benchmark(exe1)
    tiempos2 = benchmark(exe2)

    print(f"Resultados para {exe1}:")
    print("  Tiempos:", tiempos1)
    print(f"  Promedio: {statistics.mean(tiempos1):.6f} s")
    print(f"  Mediana: {statistics.median(tiempos1):.6f} s\n")

    print(f"Resultados para {exe2}:")
    print("  Tiempos:", tiempos2)
    print(f"  Promedio: {statistics.mean(tiempos2):.6f} s")
    print(f"  Mediana: {statistics.median(tiempos2):.6f} s")
