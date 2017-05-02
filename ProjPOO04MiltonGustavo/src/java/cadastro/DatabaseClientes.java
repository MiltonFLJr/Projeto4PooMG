
package cadastro;

import java.util.ArrayList;

public class DatabaseClientes {
    
    private static ArrayList<cliente> clientes;
    public static ArrayList<cliente> getClientes(){
    if(clientes == null){
    clientes = new ArrayList<>();
    cliente cli = new cliente();
    cli.setNomeC(" ");
    cli.setCpfC(" ");
    cli.setRgC(" ");
    cli.setEmailC(" ");
    cli.setTelefoneC(" ");
    cli.setRuaC(" ");
    cli.setBairroC(" ");
    cli.setNumeroC(" ");
    cli.setLocalidadeC(" ");
    cli.setCepC(" ");
    clientes.add(cli);
}
   return clientes;
    }
}

