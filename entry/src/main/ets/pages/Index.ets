@Entry
@Component
struct Index {
  @State message: string = 'Helle';

  build() {
    RelativeContainer() {
      Image($r('app.media.app_icon'))
        .width(100)
        .height(200)
        //设置默认展示图片
        //.alt($r('app.media.app_icon'))

        //保持图片原有尺寸，不做任何缩放
        //.objectFit(ImageFit.None)
        // 使得显示区域刚好包含整个图片
        // .objectFit(ImageFit.Contain)
        // 使得图片刚好覆盖整个显示区域
        // .objectFit(ImageFit.Cover)
        // 不保持宽高比例进行放大和缩小
        // .objectFit(ImageFit.Fill)
        // 保持宽高比例进行缩小或者不变(不能放大)
        // .objectFit(ImageFit.ScaleDown)
        // 自适应
        .objectFit(ImageFit.Auto)

        //设置图片的插值效果
          //不使用插值
        .interpolation(ImageInterpolation.None)
        //高质量插值，可能会影响图片渲染速度
        // .interpolation(ImageInterpolation.High)
    //     中质量插值
    //     .interpolation(ImageInterpolation.Medium)
    //   低质量插值
    //     .interpolation(ImageInterpolation.Low)

    }
    .height('100%')
    .width('100%')
  }
}