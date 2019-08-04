package cn.tedu.ssm.Controller;

import cn.tedu.ssm.Service.UserServiceimp;
import cn.tedu.ssm.bean.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import java.util.List;


@Controller
public class UserController {

    @Resource
    private UserServiceimp userServiceimp;

    //登录
    @RequestMapping("/pages/toLogin.do")
    public String login(HttpServletRequest req, HttpSession session) {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println("we got username " + username);
        User user = new User(username, password);
        User byName = userServiceimp.findByName(user);
        if (byName != null) {

            session.setAttribute("user", byName);

            return "forward:/pages/index.jsp";
        } else {
            session.setAttribute("string", "用户名和密码错误");
            return "login";
        }

    }

    //主页
    @RequestMapping("/pages/home.do")
    public String tohome() {
        return "index";
    }

    //个人中心
    @RequestMapping("/pages/self.do")
    public String toself(HttpServletRequest req, HttpSession session) {
        User user = (User) session.getAttribute("user");
        System.out.println(user.getU_name());
        System.out.println("this is id " + user.getU_id());
        System.out.println("this is password " + user.getU_password());
        Order order = new Order(user.getU_id());
        List<Order> list = userServiceimp.reqOrder(order);
        System.out.println(list.get(0).getC_total());
        session.setAttribute("AllOrders", list);
        return "self";
    }

    //主页请求brand
    @RequestMapping("/pages/reqGood.do")
    public String reqBrandGoods(Model model) {
        Goods goods = new Goods("brand");
        List<Goods> list = userServiceimp.reqBrandGoods(goods);

        if (list != null) {
            model.addAttribute("goods", list);
            return "brand";
        } else {
            return "login";
        }

    }

    //主页请求supermarket
    @RequestMapping("/pages/reqSupermarketGood.do")
    public String reqSupermarketGoods(Model model) {
        Goods goods = new Goods("supermarket");
        List<Goods> list = userServiceimp.reqSupermarketGoods(goods);
        System.out.println(list.get(0).getG_name());
        if (list != null) {
            model.addAttribute("goods", list);
            return "supermarket";
        } else {
            return "login";
        }

    }

    //主页请求9.9特卖
    @RequestMapping("/pages/reqSaleGood.do")
    public String reqSaleGoods(Model model) {
        Goods goods = new Goods("sale");
        List<Goods> list = userServiceimp.reqSaleGoods(goods);
        if (list != null) {
            model.addAttribute("goods", list);
            return "sale";
        } else {
            return "login";
        }

    }

    //主页请求限时秒杀
    @RequestMapping("/pages/reqSecKillGood.do")
    public String reqSecKillGoods(Model model) {
        Goods goods = new Goods("seckill");
        List<Goods> list = userServiceimp.reqSecKillGoods(goods);
        if (list != null) {
            model.addAttribute("goods", list);
            return "seckill";
        } else {
            return "login";
        }

    }

    //已入住商品——车忠勋
    @RequestMapping("/pages/salable_commodity.do")
    public String toSalable_commodity(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Goods> list = userServiceimp.reqGoods(user);
        session.setAttribute("goods", list);
        return "salable_commodity";
    }
    //商品入驻——车忠勋
    @RequestMapping("/pages/ToIncrease_commodity.do")
    public String reqIncreaseCommodity() {
        return "increase_commodity";
    }

    //商品入驻.上传图片——车忠勋
    @RequestMapping("/pages/PushImg.do")
    public String PushImg(HttpServletRequest req, MultipartFile file, ModelMap map) {
        Goods goods = new Goods(req.getParameter("g_name"),
                Double.valueOf(req.getParameter("g_price")),
                req.getParameter("g_info"),
                req.getParameter("g_type"),
                req.getParameter("add_user"),
                Integer.valueOf(req.getParameter("stock")));


        try {
            userServiceimp.save(file, goods, map);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "increase_commodity";
    }
/////////////////////////////////////////////////////////////////////////////////////////////////////////
    //待付款——姜志强
    @RequestMapping("/pages/WaitPay.do")
    public String WaitPay(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        Order order = new Order();
        order.setC_state("待付款");
        order.setUid(user.getU_id());
        model.addAttribute("order", userServiceimp.reqState(order));
        return "WaitPay";
    }

    //待收货姜志强
    @RequestMapping("/pages/WaitRec.do")
    public String WaitRec(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        Order order = new Order("待收货", user.getU_id());

        model.addAttribute("order", userServiceimp.reqState(order));
        return "WaitRec";
    }

    //待确认——姜志强
    @RequestMapping("/pages/WaitOk.do")
    public String WaitOk(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        Order order = new Order("待确认", user.getU_id());

        model.addAttribute("order", userServiceimp.reqState(order));
        return "WaitOk";
    }
    //获取收货地址——姜志强
    @RequestMapping("/pages/togetaddress.do")
    public String reqAddress(HttpSession session, HttpServletRequest req, Model model) {
        User user = (User) session.getAttribute("user");
        Address address = new Address(
                user.getU_id(),
                req.getParameter("rec_name"),
                req.getParameter("receiverState"),
                req.getParameter("receiverCity"),
                req.getParameter("receiverDistrict"),
                req.getParameter("rec_detail"),
                req.getParameter("rec_phone"),
                req.getParameter("rec_addname"));
        Address address1 = new Address(user.getU_id());
        model.addAttribute("address", userServiceimp.findAddress(address1));
        return "address";
    }

    //设置收货地址——姜志强
    @RequestMapping("/pages/tosetaddress.do")
    public String tosetAddress(HttpServletRequest req, Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Address address = new Address(
                user.getU_id(),
                req.getParameter("rec_name"),
                req.getParameter("receiverState"),
                req.getParameter("receiverCity"),
                req.getParameter("receiverDistrict"),
                req.getParameter("rec_detail"),
                req.getParameter("rec_phone"),
                req.getParameter("rec_addname"));
        Address address1 = new Address(user.getU_id());
        Address reAddress = userServiceimp.findAddress(address1);
        if (reAddress != null) {
            userServiceimp.updateAddress(address);
            System.out.println("there are trying to update");
            Address newAddress = userServiceimp.findAddress(address1);
            model.addAttribute("address", newAddress);
        } else {
            userServiceimp.insertAddress(address);
            Address newAddress = userServiceimp.findAddress(address);
            model.addAttribute("address", newAddress);

        }
        return "address";
    }

    //密码相关——姜志强
    @RequestMapping("/pages/password.do")
    public String findPwd() {
        return "password";
    }

    //修改密码——姜志强
    @RequestMapping("/pages/changePwd.do")
    public String changePwd(HttpServletRequest req, Model model, HttpSession session) {
        String orgpwd = req.getParameter("orgpwd");


        String npwd = req.getParameter("newpwd");

        String ntpwd = req.getParameter("newtoopwd");
        User user = (User) session.getAttribute("user");
        if (orgpwd.equals(user.getU_password()) && npwd.equals(ntpwd)) {

            User setpwd = new User(user.getU_id(), npwd);
            userServiceimp.setPassword(setpwd);

            model.addAttribute("success", "修改成功");

            return "password";


        } else if (orgpwd.equals(user.getU_password()) == false) {

            model.addAttribute("error1", "原密码错误");

            return "password";

        } else {

            model.addAttribute("error2", "两次密码不一致");

            return "password";

        }
    }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //获取商品详情（id）——周廉鸿
    @RequestMapping("/pages/toinfo.do")
    public String handlerInfo(HttpServletRequest req, Model model) {
        String rg_id = req.getParameter("good_id");
        //点击图片后获得到的商品id
        Goods byGoodsId = userServiceimp.findByGoodsId(Integer.parseInt(rg_id));
        model.addAttribute("GoodsById", byGoodsId);
        //将商品的信息参数传过去
        return "productInfo";
    }

    //从商品详情转跳购物车——周廉鸿
    @RequestMapping("/pages/toshopping.do")
    public String handlerShoping(HttpServletRequest req, Model model, HttpSession session) {
        String rs_id = req.getParameter("shopping_id");
        //获取到所需购买商品的id
        Goods byshoppingId = userServiceimp.findByGoodsId(Integer.parseInt(rs_id));
        //通过id查到商品的信息
        User user = (User) session.getAttribute("user");
        //获取用户，因为需要绑定用户id
        ShoppingCart s_cart = new ShoppingCart(user.getU_id(), byshoppingId.getG_id(), byshoppingId.getG_name(), byshoppingId.getG_info(), byshoppingId.getG_price(), byshoppingId.getG_imgpath());
        //将商品信息和用户id进行绑定
        userServiceimp.insert(s_cart);
        //在购物车数据库新增所加入的商品信息
        List<ShoppingCart> shoppingCarts = userServiceimp.reqShoppingCart(user);
        session.setAttribute("shoppingCart", shoppingCarts);
        return "shopping";
        //跳转到购物车页面
    }

///////////////////////////////////////////////////////////////////////////////////////////////////////////////


    //购物车——陈科宇
    @RequestMapping("/pages/shopping.do")
    public String Shopping(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<ShoppingCart> shoppingCarts = userServiceimp.reqShoppingCart(user);
        session.setAttribute("shoppingCart", shoppingCarts);
        System.out.println(shoppingCarts.get(1).getG_name());
        System.out.println("finished");
        return "shopping";
    }


    //    购物车删除表项——陈科宇
    @RequestMapping("/pages/shoppingCartDelete.do")
    public String ShoppingCartDelete(HttpServletRequest req, Model model, HttpSession session) {
        String g_id = req.getParameter("g_id");
        userServiceimp.ShoppingCartDelete(g_id);
        User user = (User) session.getAttribute("user");
        List<ShoppingCart> shoppingCarts = userServiceimp.reqShoppingCart(user);
        session.setAttribute("shoppingCart", shoppingCarts);
        return "shopping";
    }
}
