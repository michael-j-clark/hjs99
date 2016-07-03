import java.util.ArrayList;
import java.util.List;

public class One<T>{



    T lastOne(List<T> lst){


        if(null == lst || lst.isEmpty()) return null;

        return lst.get(lst.size() - 1);
    }

}