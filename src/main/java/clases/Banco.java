package clases;

public class Banco {
    private String nombre;
    private String numCuenta;
    private double saldo;

    // Constructor
    public Banco(String nombre, String numCuenta, double saldo) {
        this.nombre = nombre;
        this.numCuenta = numCuenta;
        this.saldo = saldo;
    }

    // Método para depositar dinero
    public void depositar(double monto) {
        this.saldo += monto;
    }

    // Método para retirar dinero
    public void retirar(double monto) {
        if (monto <= this.saldo) {
            this.saldo -= monto;
        } else {
            System.out.println("Saldo insuficiente");
        }
    }

    // Método para obtener el nombre del banco
    public String obtenerNombre() {
        return this.nombre;
    }

    // Método para obtener el saldo
    public double obtenerSaldo() {
        return this.saldo;
    }

    // Método para obtener el número de cuenta
    public String numCuenta() {
        return this.numCuenta;
    }
}
