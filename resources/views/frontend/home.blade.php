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
                        <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='15' data-y='80' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'></div>
                        <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='15' data-y='135' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'><span style="font-size: 50px"></span></div>
                        <div class='tp-caption sfb  tp-resizeme ' data-x='15' data-y='360' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more"> Xem thêm</a> <a href='{{Route('product')}}' class="buy-btn">Mua săm ngay</a></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='230' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='400' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'></div>
                    </li>
                    <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb=''><img src='{{asset('frontend/images/slide-img11.jpg')}}' data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner" />
                        <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='15' data-y='80' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'></div>
                        <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='15' data-y='135' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'><span></span></div>
                        <div class='tp-caption sfb  tp-resizeme ' data-x='15' data-y='360' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more">Xem thêm</a> <a href='{{Route('product')}}' class="buy-btn">Mua sắm ngay</a></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='230' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='400' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'></div>
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
                    <span><strong>Đổi trả trong 30 ngày</strong><br>nếu pet bị bệnh</span>
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
                            <h2 style="padding-left: 10px; padding-right: 10px">Thú cưng mới</h2>
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
                            <h2>Phụ Kiện</h2>
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
            <div  class="new_title center">
                <img src="https://png.pngtree.com/png-clipart/20230406/original/pngtree-cartoon-dog-sticker-cute-puppy-png-image_9029382.png" alt="">
                <h2 style="padding-right: 100px">Chó corgi</h2>
                <div style="margin-left: 225px" class="lopm-rect"></div>
            </div>
            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($data_c as $item)
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
                <img src="https://img.lovepik.com/png/20231128/cute-cartoon-cat-happy-ornaments-ghost_720325_wh860.png" alt="">
                <h2>Mèo anh lông ngắn</h2>
                <div  style="margin-left: 258px" class="lopm-rect"></div>
            </div>

             
           
            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($data_m as $item)
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
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsBO-orGZhjdLWFTOKuog6d5KG7yQS8CAN0A&s" alt="">
                <h2>Phụ kiện vòng cổ</h2>
                <div style="margin-left: 243px" class="lopm-rect"></div>
            </div>

            

            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($data_pk as $item)
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





<div class="promo-banner-section container wow">
    <div class="container">
        
    </div>
</div>

<section class="latest-blog container wow">
    <div class="blog-title">
        <h2><span>Bảng tin Shop pet </span></h2>
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
