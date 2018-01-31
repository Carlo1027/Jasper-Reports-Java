package Controlador;

/**
 *
 * @author Carlo Castro
 */
public class Registro {
    private String serialdocu;
    private String fechadocu;
    private String fechadocu1;
    private int folios;
    private int rangoinf;
    private int rangosup;
    private int caja;
    private int paquete;
    private int iddato;

    public String getSerialdocu() {
        return serialdocu;
    }

    public void setSerialdocu(String serialdocu) {
        this.serialdocu = serialdocu;
    }

    public String getFechadocu() {
        return fechadocu;
    }

    public void setFechadocu(String fechadocu) {
        this.fechadocu = fechadocu;
    }

    public String getFechadocu1() {
        return fechadocu1;
    }

    public void setFechadocu1(String fechadocu1) {
        this.fechadocu1 = fechadocu1;
    }

    public int getFolios() {
        return folios;
    }

    public void setFolios(int folios) {
        this.folios = folios;
    }

    public int getRangoinf() {
        return rangoinf;
    }

    public void setRangoinf(int rangoinf) {
        this.rangoinf = rangoinf;
    }

    public int getRangosup() {
        return rangosup;
    }

    public void setRangosup(int rangosup) {
        this.rangosup = rangosup;
    }

    public int getCaja() {
        return caja;
    }

    public void setCaja(int caja) {
        this.caja = caja;
    }

    public int getPaquete() {
        return paquete;
    }

    public void setPaquete(int paquete) {
        this.paquete = paquete;
    }

    public int getIddato() {
        return iddato;
    }

    public void setIddato(int iddato) {
        this.iddato = iddato;
    }

    public Registro(String serialdocu, String fechadocu, String fechadocu1, int folios, int rangoinf, int rangosup, int caja, int paquete, int iddato) {
        this.serialdocu = serialdocu;
        this.fechadocu = fechadocu;
        this.fechadocu1 = fechadocu1;
        this.folios = folios;
        this.rangoinf = rangoinf;
        this.rangosup = rangosup;
        this.caja = caja;
        this.paquete = paquete;
        this.iddato = iddato;
    }

      
}
