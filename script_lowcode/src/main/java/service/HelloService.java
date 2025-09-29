package service;


/**
 * HelloService class.
 * @author long.nt3
 */
public class HelloService {
    /**
     * Service method được gọi từ routing-service-config.
     * @return Map sẽ được convert thành JSON trả về cho client
     */
    public String sayHello() {

        String name = "Long";

        return name;
    }

}
