package cn.tedu.ssm.Dao;

import cn.tedu.ssm.bean.*;

import java.util.List;

public interface UserDao {
    User findByName(User user);
    List<Goods> reqBrandGoods(Goods goods);
    List<Goods> reqSupermarketGoods(Goods goods);
    List<Goods> reqSaleGoods(Goods goods);
    List<Goods> reqSecKillGoods(Goods goods);
    List<Order> reqOrder(Order order);
    List<Goods> reqGoods(User user);
    Integer saveImg(Goods goods);
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
