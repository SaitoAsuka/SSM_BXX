package cn.tedu.ssm.Service;

import cn.tedu.ssm.Dao.UserDao;
import cn.tedu.ssm.bean.*;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
public class UserServiceimp implements UserService {
    @Resource
    private UserDao userDao;

    //登录时验证用户名和密码
    @Override
    public User findByName(User user) {

        return userDao.findByName(user);

    }

    //请求品牌清仓的商品列表
    @Override
    public List<Goods> reqBrandGoods(Goods goods) {

        return userDao.reqBrandGoods(goods);
    }

    //请求生鲜超市的商品列表
    @Override
    public List<Goods> reqSupermarketGoods(Goods goods) {

        return userDao.reqSupermarketGoods(goods);
    }

    //请求9.9特价商品列表
    @Override
    public List<Goods> reqSaleGoods(Goods goods) {
        return userDao.reqSaleGoods(goods);
    }

    //请求限时特卖商品列表
    @Override
    public List<Goods> reqSecKillGoods(Goods goods) {
        return userDao.reqSecKillGoods(goods);
    }

    //请求订单,个人中心请求所有的订单
    @Override
    public List<Order> reqOrder(Order order) {
        return userDao.reqOrder(order);
    }

    //请求已入住商品列表——车忠勋
    @Override
    public List<Goods> reqGoods(User user) {
        return userDao.reqGoods(user);
    }

    //保存入驻商品图片——车忠勋
    @Override
    public void save(MultipartFile file, Goods goods, ModelMap map) throws IOException {
//        保存图片的路径，图片上传成功后，将路径保存到数据库
        String filePath = "C:/Users/Saito/IdeaProjects/SSM_BXX/src/main/webapp/imgs";
//        获取原始图片的名字
        String originalFilename = file.getOriginalFilename();
        System.out.println(originalFilename);
//        生成文件新的名字
//        String newFileName = UUID.randomUUID() + originalFilename;
//        封装上传文件位置的全路径
        File targetFile = new File(filePath, originalFilename);
        file.transferTo(targetFile);
        goods.setG_imgpath("../imgs/" + originalFilename);
        userDao.saveImg(goods);

    }


    //////////////////////////////////////////////////////////////////////////////////////////////////
//    查找已存的地址——姜志强
    @Override
    public Address findAddress(Address address) {
        return userDao.findAddress(address);
    }

    //更新地址——姜志强
    @Override
    public Integer updateAddress(Address address) {
        return userDao.updateAddress(address);
    }

    //插入地址——姜志强
    @Override
    public Integer insertAddress(Address address) {
        return userDao.insertAddress(address);
    }

    //设置密码——姜志强
    @Override
    public Integer setPassword(User user) {
        return userDao.setPassword(user);
    }

    //请求订单状态——姜志强
    @Override
    public List<Order> reqState(Order order) {
        return userDao.reqState(order);
    }

    ///////////////////////////////////////////////////////////////////
//通过ID查询货物——周廉鸿
    @Override
    public Goods findByGoodsId(int g_id) {
        return userDao.findByGoodsId(g_id);
    }

    //加入购物车——周廉鸿
    @Override
    public Integer insert(ShoppingCart shoppingCart) {
        return userDao.insert(shoppingCart);
    }

    //从商品详情转跳到购物车时，请求购物车内的商品列表——周廉鸿、陈科宇
    @Override
    public List<ShoppingCart> reqShoppingCart(User user) {
        return userDao.reqShoppingCart(user);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////
    //删除购物车——陈科宇
    @Override
    public Integer ShoppingCartDelete(String g_id) {
        return userDao.ShoppingCartDelete(g_id);
    }


}
