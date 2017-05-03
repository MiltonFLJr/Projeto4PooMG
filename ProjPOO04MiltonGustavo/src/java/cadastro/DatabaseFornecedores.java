package cadastro;
import java.util.ArrayList;
public class DatabaseFornecedores {
    
    private static ArrayList<Fornecedor> fornecedores;
    public static ArrayList<Fornecedor> getFornecedores(){
    
    if(fornecedores == null){
    fornecedores = new ArrayList<>();
    Fornecedor obj = new Fornecedor();
    obj.setNomeF(" ");
    obj.setRsF(" ");
    obj.setCnpjF(" ");
    obj.setEmailF(" ");
    obj.setTelF(" ");
    obj.setRuaF(" ");
    obj.setBairroF(" ");
    obj.setLograF(" ");
    obj.setLocalF(" ");    
    obj.setCepF(" ");
    fornecedores.add(obj);
    }

    return fornecedores;
    }
    
}
