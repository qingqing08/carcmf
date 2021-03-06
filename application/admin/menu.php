<?php
return [
  [
    'title' => '后台管理',
    'icon' => 'aicon ai-shezhi',
    'module' => 'admin',
    'url' => 'admin',
    'param' => '',
    'target' => '_self',
    'debug' => 0,
    'system' => 0,
    'nav' => 1,
    'sort' => 1,
    'childs' => [
      [
        'title' => '首页管理',
        'icon' => 'aicon ai-shouyeshouye',
        'module' => 'admin',
        'url' => 'admin/index/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 0,
        'childs' => [
          [
            'title' => '轮播广告',
            'icon' => 'aicon ai-shuaxin2',
            'module' => 'admin',
            'url' => 'admin/banner/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
      [
        'title' => '用户管理',
        'icon' => 'fa fa-user',
        'module' => 'admin',
        'url' => 'admin/user/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 0,
        'childs' => [
          [
            'title' => '用户列表',
            'icon' => 'aicon ai-caidan',
            'module' => 'admin',
            'url' => 'admin/user/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
      [
        'title' => '评论管理',
        'icon' => 'typcn typcn-pen',
        'module' => 'admin',
        'url' => 'admin/comment/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 0,
        'childs' => [
          [
            'title' => '评论列表',
            'icon' => 'aicon ai-caidan',
            'module' => 'admin',
            'url' => 'admin/comment/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
      [
        'title' => '实训室管理',
        'icon' => 'aicon ai-peizhiguanli',
        'module' => 'admin',
        'url' => 'admin/laboratory/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 1,
        'childs' => [
          [
            'title' => '实训室分类',
            'icon' => 'aicon ai-quanping1',
            'module' => 'admin',
            'url' => 'admin/laboratoryCategory/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '实训室列表',
            'icon' => 'typcn typcn-pin-outline',
            'module' => 'admin',
            'url' => 'admin/laboratory/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 1,
          ],
          [
            'title' => '实训室系列视频',
            'icon' => 'typcn typcn-video',
            'module' => 'admin',
            'url' => 'admin/laboratoryVideo/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 2,
          ],
        ],
      ],
      [
        'title' => '产品管理',
        'icon' => 'fa fa-clipboard',
        'module' => 'admin',
        'url' => 'admin/product/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 2,
        'childs' => [
          [
            'title' => '产品分类',
            'icon' => 'typcn typcn-th-small',
            'module' => 'admin',
            'url' => 'admin/category/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '全部产品',
            'icon' => 'aicon ai-systemmenu',
            'module' => 'admin',
            'url' => 'admin/product/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
      [
        'title' => '案例管理',
        'icon' => 'aicon ai-mokuaiguanli1',
        'module' => 'admin',
        'url' => 'admin/cases/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 3,
        'childs' => [
          [
            'title' => '案例分类',
            'icon' => 'aicon ai-caidan',
            'module' => 'admin',
            'url' => 'admin/caseCategory/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '案例列表',
            'icon' => 'fa fa-th-list',
            'module' => 'admin',
            'url' => 'admin/cases/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
      [
        'title' => '视频库管理',
        'icon' => 'fa fa-file-video-o',
        'module' => 'admin',
        'url' => 'admin/video/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 4,
        'childs' => [
          [
            'title' => '视频库分类',
            'icon' => 'typcn typcn-th-small-outline',
            'module' => 'admin',
            'url' => 'admin/videoCategory/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '视频库',
            'icon' => 'fa fa-video-camera',
            'module' => 'admin',
            'url' => 'admin/video/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '设置主推视频',
            'icon' => 'aicon ai-tishi',
            'module' => 'admin',
            'url' => 'admin/video/main',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
      [
        'title' => '服务管理',
        'icon' => 'aicon ai-chu',
        'module' => 'admin',
        'url' => 'admin/feedback/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 5,
        'childs' => [
          [
            'title' => '反馈列表',
            'icon' => 'aicon ai-caidan',
            'module' => 'admin',
            'url' => 'admin/feedback/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '公司简介',
            'icon' => 'typcn typcn-edit',
            'module' => 'admin',
            'url' => 'admin/company/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '联系我们',
            'icon' => 'typcn typcn-phone-outline',
            'module' => 'admin',
            'url' => 'admin/company/telindex',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
          [
            'title' => '咨询电话',
            'icon' => 'typcn typcn-phone-outline',
            'module' => 'admin',
            'url' => 'admin/tel/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
      [
        'title' => '实景管理',
        'icon' => 'typcn typcn-video',
        'module' => 'admin',
        'url' => 'admin/broadcast/default',
        'param' => '',
        'target' => '_self',
        'debug' => 0,
        'system' => 0,
        'nav' => 1,
        'sort' => 6,
        'childs' => [
          [
            'title' => '实景列表',
            'icon' => 'aicon ai-caidan',
            'module' => 'admin',
            'url' => 'admin/broadcast/index',
            'param' => '',
            'target' => '_self',
            'debug' => 0,
            'system' => 0,
            'nav' => 1,
            'sort' => 0,
          ],
        ],
      ],
    ],
  ],
];
