package cn.tedu.ssm.Service;

import cn.tedu.ssm.bean.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface UserService {
    User findByName(User user);
    List<Goods> reqBrandGoods(Goods goods);
    List<Goods> reqSupermarketGoods(Goods goods);
    List<Goods> reqSaleGoods(Goods goods);
    List<Goods> reqSecKillGoods(Goods goods);
    List<Order> reqOrder(Order order);
    List<Goods> reqGoods(User user);
    void save(MultipartFile file, Goods goods, ModelMap map) throws IOException;
    List<ShoppingCart> reqShoppingCart(User user);
    Address findAddress(Address address);
    Integer updateAddress(Address address);
    Integer insertAddress(Address address);
    Integer setPassword(User user);
    List<Order> reqState (Order order);
    Goods findByGoodsId(int g_id);
    Integer insert(ShoppingCart shoppingCart);
    Integer ShoppingCartDelete(String g_id);

}
