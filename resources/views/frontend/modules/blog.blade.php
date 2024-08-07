@extends('frontend.layouts.master')
@section('Content')
<style>
.container-paper-table .title {
    width: 91.4%;
    margin: 0 auto;
    margin-bottom: 18px;

    background-image: linear-gradient(-90deg, rgb(181, 173, 202),rgb(255,255,255));
 
}
.container-paper-table .title  h4 {
    text-align: center;
    padding-top: 9px
}
.container-paper-table {
    background-image: linear-gradient(-90deg, rgb(10,88,163),  rgb(246,185,150));
}

</style>
<br>
<div class="main-container col2-right-layout">
    <div class="main container">
        <div class="row">
            <div class="col-main col-sm-9">
                <div class="page-title">
                    <h2 class="bantin">BẢN TIN SHOPPET</h2>
                </div>
                <div class="blog-wrapper" id="main">
                    <div class="posts-isotope row">
                        @foreach ($data as $item)
                        <div class="col-sm-6 col-md-6">
                            <article class="container-paper-table">
                                <div class="title">
                                    <h4 class="entry-title"><a href="{{route('blog_detail', $item->id)}}">{{$item->name}}</a></h4>
                                </div>
                                <div class="post-container"> <a href="{{route('blog_detail', $item->id)}}"><img class="img-responsive" src="{{url('upload')}}/{{$item->img}}" alt=""></a>
                                    <div class="text">
                                        <ul class="list-info">
                                            <li><span class="icon-user">&nbsp;</span>By Admin</li>
                                            <li><span class="icon-time">&nbsp;</span>{{$item->created_at}}</li>
                                        </ul>
                                        <div class="post-excerpt">{!!$item->preview_text!!}</div>
                                        <a href="{{route('blog_detail', $item->id)}}" class="btn btn-mega">Xem chi tiết<span class="icon icon-arrow-right-5"></span></a>
                                        <ul class="list-info">
                                            <li><span class="icon-eye-open">&nbsp;</span>Views</li>
                                            <li><span class="icon-comments">&nbsp;</span><a href="#">Comments</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        </div>
                        @endforeach
                    </div>
                    <ul class="pagination">
                        
                    </ul>

                </div>
            </div>
            <div class="col-right sidebar col-sm-3">
                <div role="complementary" class="widget_wrapper13" id="secondary">
                    <div class="popular-posts widget widget__sidebar wow" id="recent-posts-4">
                        <h3 class="widget-title"><span>Bài viết gần đây</span></h3>
                        <div class="widget-content">
                            <ul class="posts-list unstyled clearfix">
                                @foreach ($blog_new as $item)
                                <li>
                                    <figure class="featured-thumb"> <a href="{{route('blog_detail', $item->id)}}"> <img width="80" height="53" alt="blog image" src="{{url('upload')}}/{{$item->img}}"> </a> </figure>
                                    <h4><a title="Pellentesque posuere" href="{{route('blog_detail', $item->id)}}">{{$item->name}}</a></h4>
                                    <p class="post-meta"><i class="icon-calendar"></i>
                                        <time datetime="2014-07-10T07:09:31+00:00" class="entry-date">{{$item->created_at}}</time>
                                    </p>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                    
                   
                    
                
            </div>
        </div>
    </div>
</div>

@endsection
