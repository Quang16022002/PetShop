@extends('frontend.layouts.master')
@section('Content')

<!-- Messenger Plugin chat Code -->
<div id="fb-root"></div>

<!-- Your Plugin chat code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>

<script>
  var chatbox = document.getElementById('fb-customer-chat');
  chatbox.setAttribute("page_id", "173979989125893");
  chatbox.setAttribute("attribution", "biz_inbox");
</script>

<!-- Your SDK code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v18.0'
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<div style="margin-top: -10px" id="magik-slideshow" class="magik-slideshow">
    <div class="wow">
        <div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container'>
            <div id='rev_slider_4' class='rev_slider fullwidthabanner'>
                <ul>
                    <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='' class="black-text"><img src='{{asset('frontend/images/slide-img02.jpeg')}}' data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner" />
                        <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='15' data-y='80' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'>Lựa chọn</div>
                        <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='15' data-y='135' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'><span style="font-size: 50px">Sản phẩm</span></div>
                        <div class='tp-caption sfb  tp-resizeme ' data-x='15' data-y='360' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more">Xem thêm</a> <a href='{{Route('product')}}' class="buy-btn">Mua săm ngay</a></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='230' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'>Hỗ trợ tốt nhất cho sức khỏe của bạn.</div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='400' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'>Liên hệ với chúng tôi để được hỗ trợ tốt nhất.</div>
                    </li>
                    <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb=''><img src='{{asset('frontend/images/slide-img11.jpg')}}' data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner" />
                        <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='15' data-y='80' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'></div>
                        <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='15' data-y='135' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'><span></span></div>
                        <div class='tp-caption sfb  tp-resizeme ' data-x='15' data-y='360' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more">Xem thêm</a> <a href='{{Route('product')}}' class="buy-btn">Mua sắm ngay</a></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='230' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='400' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'>Chúng tôi cung cấp tất cả các sản phẩm Y Tế chính hãng</div>
                    </li>
                    
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
        </div>
    </div>
</div>

<div class="header-service">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-truck">&nbsp;</div>
                    <span><strong>Miễn phí vận chuyển</strong><br> cho đơn hàng trên 2 triệu</span>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-support">&nbsp;</div>
                    <span><strong>Hỗ trợ khách hàng</strong><br>trong giờ hành chính</span>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-money">&nbsp;</div>
                    <span><strong>Đổi trả trong 30 ngày</strong><br>nếu có lỗi của nhà sản xuất</span>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-dis">&nbsp;</div>
                    <span><strong class="orange">Giảm 5% cho đơn trên 1 triệu</strong></span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="offer-banner-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-xs-12 col-md-4 col-sm-4 wow"><a href="#"><img alt="offer banner1" src="{{asset('frontend/images/banner1.jpeg')}}" width="372px" height="280px"></a></div>
            <div class="col-lg-4 col-xs-12 col-md-4 col-sm-4 wow"><a href="#"><img alt="offer banner1" src="{{asset('frontend/images/banner2.jpeg')}}" width="372px" height="280px"></a></div>
            <div class="col-lg-4 col-xs-12 col-md-4 col-sm-4 wow"><a href="#"><img alt="offer banner1" src="{{asset('frontend/images/banner3.jpeg')}}" width="372px" height="280px"></a></div>
        </div>
    </div>
</div>

<section>
   

<section class="main-container col1-layout home-content-container">
    <div class="container">
        <div class="row">
            <div class="std">
                <div class="col-lg-8 col-xs-12 col-sm-8 best-seller-pro wow">
                    <div class="slider-items-products">
                        <div class="new_title center">
                            <h2 style="padding-left: 10px; padding-right: 10px">Sản phẩm mới</h2>
                        </div>
                        <div id="best-seller-slider" class="product-flexslider hidden-buttons">
                            <div class="slider-items slider-width-col4">
                                @foreach ($data as $item)
                                <div class="item">
                                    <div class="col-item">
                                        <div class="images-container"> <a class="product-image" title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="product-image" /> </a>
                                            <div class="actions">
                                                <div class="actions-inner">
                                                    <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart" data-url="{{Route('addToCart', $item->id)}}">
                                                        <span>Thêm giỏ hàng</span>
                                                    </button>
                                                    <ul class="add-to-links">
                                                        <li><a title="Thêm vào danh sách yêu thích" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                                                        <li><a title="Thêm vào đánh giá" class="link-compare "><span>Add to Compare</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <div class="info-inner">
                                                <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html">{{$item->name_product}}</a> </div>
                                                <div class="item-content">
                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <div style="width:60%" class="rating"></div>
                                                        </div>
                                                    </div>
                                                    <div class="price-box">
                                                        <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p><br>
                                                        <p class="old-price"> <span class="price-sep">-</span> <span class="price">{{number_format($item->price)}} đ</span> </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12 col-sm-4 wow latest-pro small-pr-slider">
                    <div class="slider-items-products">
                        <div class="new_title center">
                            <h2>Y tế chuyên dụng</h2>
                        </div>
                        <div id="latest-deals-slider" class="product-flexslider hidden-buttons latest-item">
                            <div class="slider-items slider-width-col4">
                                @foreach ($data_pk as $item)
                                <div class="item">
                                    <div class="col-item">
                                        <div class="images-container"> <a class="product-image" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="product-image" /> </a>

                                        </div>
                                        <div class="info">
                                            <div class="info-inner">
                                                <div class="item-title"> <a title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}">{{$item->name_product}}</a> </div>
                                                <div class="item-content">
                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <div style="width:60%" class="rating"></div>
                                                        </div>
                                                    </div>
                                                    <div class="price-box">
                                                        <p class="special-price"> <span class="price">{{number_format($item->price_sale)}}</span> </p><br>
                                                        <p class="old-price"> <span class="price-sep">-</span> <span class="price"> {{number_format($item->price)}} </span> </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="actions">
                                                <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart" data-url="{{Route('addToCart', $item->id)}}">
                                                    <span>Mua</span>
                                                </button>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="recommend container">
    <div class="new-pro-slider small-pr-slider" style="overflow:visible">
        <div class="slider-items-products">
            <div class="new_title center">
                <div style="margin:  0 0 0 251px" class="lopm-rect"></div>
                <img src="https://sieuthiyte.com.vn/data/images/icon-menu-mobile/icon-new-2-1/Qua-tang-suc-khoe.png" alt="">
                <h2>COMBO KHUYẾN MÃI</h2>
            </div>

            
                    <div style="margin-top: 7px" class="row">
                        <div class="col-lg-12">
                            <img style="width: 100%" src="https://sieuthiyte.com.vn//data/images/San-Pham/banner-combo-khuyen-mai-home-07082023-1.jpg" alt="">
                        </div>
                       
                    </div>
              
            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($data_cd as $item)
                    <div style="margin-top: 0" class="item">
                        <div class="col-item">
                            <div class="images-container"> <a class="product-image" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                            </div>
                            <div class="info">
                                <div class="info-inner">
                                    <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html">{{$item->name_product}}</a> </div>
                                    <div class="item-content">
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <div style="width:60%" class="rating"></div>
                                            </div>
                                        </div>
                                        <div class="price-box">
                                            <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p><br>
                                            <p class="old-price"> <span class="price-sep">-</span> <span class="price">{{number_format($item->price)}} đ</span> </p>
                                        </div>
                                    </div>
                                </div>
                                <div style="background-color: rgb(240,66,35)" class="sale-label sale-top-right"><p style="color: white">-28%</p></div>
                                <div class="actions">
                                    <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart" data-url="{{Route('addToCart', $item->id)}}">
                                        <span>Thêm giỏ hàng</span>
                                    </button>
                                </div>
                                <!--actions-->
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<section class="recommend container">
    <div class="new-pro-slider small-pr-slider" style="overflow:visible">
        <div class="slider-items-products">
            <div  class="new_title center">
                <img src="https://sieuthiyte.com.vn/data/images/icon-menu-mobile/icon-new-2-1/Y-te-gia-dinh.png" alt="">
                <h2 style="padding-right: 100px">Y TẾ GIA ĐÌNH</h2>
                <div style="margin-left: 242px" class="lopm-rect"></div>
            </div>
            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($data_gd as $item)
                    <div class="item">
                        <div class="col-item">
                            <div class="images-container"> <a class="product-image" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                            </div>
                            <div class="info">
                                <div class="info-inner">
                                    <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html">{{$item->name_product}}</a> </div>
                                    <div class="item-content">
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <div style="width:60%" class="rating"></div>
                                            </div>
                                        </div>
                                        <div class="price-box">
                                            <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p><br>
                                            <p class="old-price"> <span class="price-sep">-</span> <span class="price">{{number_format($item->price)}} đ</span> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="actions">
                                    <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart" data-url="{{Route('addToCart', $item->id)}}">
                                        <span>Thêm giỏ hàng</span>
                                    </button>
                                </div>
                                <!--actions-->
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<section class="recommend container">
    <div class="new-pro-slider small-pr-slider" style="overflow:visible">
        <div class="slider-items-products">
            <div class="new_title center">
                <img src="https://sieuthiyte.com.vn/data/images/icon-menu-mobile/icon-new-2-1/Y-te-chuyen-dung.png" alt="">
                <h2>Y TẾ CHUYÊN DỤNG</h2>
                <div  style="margin-left: 244px" class="lopm-rect"></div>
            </div>

                <div class="row">
                    <div style="margin-top: 7px"  class="col-lg-12">
                        <img style="width: 100%" src="https://sieuthiyte.com.vn//data/images/San-Pham/banner-ngang-home-y-te-chuyen-dung-06102023.jpg" alt="">
                    </div>
                   
                </div>
           
            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($data_cd as $item)
                    <div class="item">
                        <div class="col-item">
                            <div class="images-container"> <a class="product-image" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                            </div>
                            <div class="info">
                                <div class="info-inner">
                                    <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html">{{$item->name_product}}</a> </div>
                                    <div class="item-content">
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <div style="width:60%" class="rating"></div>
                                            </div>
                                        </div>
                                        <div class="price-box">
                                            <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p><br>
                                            <p class="old-price"> <span class="price-sep">-</span> <span class="price">{{number_format($item->price)}} đ</span> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="actions">
                                    <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart" data-url="{{Route('addToCart', $item->id)}}">
                                        <span>Thêm giỏ hàng</span>
                                    </button>
                                </div>
                                <!--actions-->
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<section class="recommend container">
    <div class="new-pro-slider small-pr-slider" style="overflow:visible">
        <div class="slider-items-products">
            <div class="new_title center">
                <img src="https://sieuthiyte.com.vn/data/images/icon-menu-mobile/icon-new-2-1/Cham-soc-sac-dep.png" alt="">
                <h2>CHĂM SÓC SẮC ĐẸP</h2>
                <div style="margin-left: 247px" class="lopm-rect"></div>
            </div>

            <div class="row">
                <div style="margin-top: 7px" class="col-lg-12">
                    <img style="width: 100%" src="https://sieuthiyte.com.vn//data/images/San-Pham/mua-1-nhan-2-may-massage-lung-jkah-2-banner-ngang-home-cssk-07102023.jpg" alt="">
                </div>
               
            </div>

            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($data_sd as $item)
                    <div class="item">
                        <div class="col-item">
                            <div class="images-container"> <a class="product-image" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                            </div>
                            <div class="info">
                                <div class="info-inner">
                                    <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html">{{$item->name_product}}</a> </div>
                                    <div class="item-content">
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <div style="width:60%" class="rating"></div>
                                            </div>
                                        </div>
                                        <div class="price-box">
                                            <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p><br>
                                            <p class="old-price"> <span class="price-sep">-</span> <span class="price">{{number_format($item->price)}} đ</span> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="actions">
                                    <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart" data-url="{{Route('addToCart', $item->id)}}">
                                        <span>Thêm giỏ hàng</span>
                                    </button>
                                </div>
                                <!--actions-->
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>




<div class="top-offer-banner wow">
    <div class="container">
        <div class="row">
            <div class="offer-inner col-lg-12">
                <div class="left">
                    <div class="col-1">
                        <div class="block-subscribe">
                            <div class="newsletter">
                                <form>
                                    <h4><span>Theo dõi bản tin</span></h4>
                                    <h5>Nhận tin tức và cập nhật mới nhất từ Siêu thị Y Tế</h5>
                                    <input type="text" placeholder="Nhập địa chỉ email của bạn" class="input-text required-entry validate-email" title="Sign up for our newsletter" id="newsletter1" name="email">
                                    <button class="subscribe" title="Subscribe" type="submit"><span>Theo dõi</span></button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col mid">
                        <div class="inner-text">
                            <h3 style="color: white">MÁY TĂM NƯỚC</h3>
                        </div>
                        <a href="#"><img style="height: 357px" src="{{asset('frontend/images/offer-banner2.png')}}" alt="offer banner2"></a>
                    </div>
                    <div class="col last">
                        <div class="inner-text">
                            <h3 style="color: white">Máy massage</h3>
                        </div>
                        <a href="#"><img style="height: 357px" src="{{asset('frontend/images/offer-banner4.png')}}" alt="offer banner2"></a>
                    </div>
                </div>
                <div class="right">
                    <div class="col">
                        <div class="inner-text">
                            <h4>MÁY massage mắt</h4>
                            <h3>Medicus</h3>
                            <a href="#" class="shop-now1">MUA NGAY</a>
                        </div>
                        <a href="#" title=""><img src="{{asset('frontend/images/offer-banner3.jpg')}}" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="promo-banner-section container wow">
    <div class="container">
        
    </div>
</div>

<section class="latest-blog container wow">
    <div class="blog-title">
        <h2><span>Bảng tin siêu thị y tế</span></h2>
    </div>
    <div class="row">
        @foreach ($article as $item)
        <div class="col-xs-12 col-sm-4">
            <a  href="{{route('blog_detail', $item->id)}}">
                <div class="blog-img"> <img src="{{url('upload')}}/{{$item->img}}" alt="Image">
                </div>
                <h3>{{$item->name}}</h3>
                <div class="post-date"><i class="icon-calendar"></i> {{$item->created_at}}</div>
            </a>
        </div>
        @endforeach
    </div>
</section>

@endsection
