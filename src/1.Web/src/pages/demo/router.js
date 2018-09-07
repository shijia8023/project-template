var router = {
	routes: [{
			path: '/',
			component: function(resolve) {
				require(['./index/index.vue'], resolve);
			}
		},
		{
			path: '/dialog',
			component: function(resolve) {
				require(['./dialog/dialog.vue'], resolve);
			}
		},
		{
			path: '/form',
			component: function(resolve) {
				require(['./form/form.vue'], resolve);
			}
		},
		{
			path: '/table',
			component: function(resolve) {
				require(['./table/table.vue'], resolve);
			}
		},
		{
			path: '/treeTable',
			component: function(resolve) {
				require(['./treeTable/tree.vue'], resolve);
			}
		},

		{
			path: '/upload',
			component: function(resolve) {
				require(['./upload/upload.vue'], resolve);
			}
		},
		{
			path: '/apiupload',
			component: function(resolve) {
				require(['./upload/upload.vue'], function(data){
					resolve(Object.assign({},data));
				});
			}
		},
		{
			path: '/autocomplate',
			component: function(resolve) {
				require(['./autocomplate/autocomplate.vue'], resolve);
			}
		},
		{
			path: '/collapse',
			component: function(resolve) {
				require(['./form-tab/collapse.vue'], resolve);
			}
		},
		{
			path: '/tab',
			component: function(resolve) {
				require(['./form-tab/tab.vue'], resolve);
			}
		},
		{
			path: '/selectCity',
			component: function(resolve) {
				require(['./selectCity/main.vue'], resolve);
			}
		},
		{
			path: '/errorTips',
			component: function(resolve) {
				require(['./errorTips/main.vue'], resolve);
			}
		},
		{
			path: '/tree',
			component: function(resolve) {
				require(['./tree/tree.vue'], resolve);
			}
		},
		{
			path: '/filter',
			component: function(resolve) {
				require(['./filter/filter.vue'], resolve);
			}
		},
		{
			path: '/newFilter',
			component: function(resolve) {
				require(['./filter/newFilter.vue'], resolve);
			}
		},
		{
			path: '/editor',
			component: function(resolve) {
				require(['./editor/editor.vue'], resolve);
			}
		},
		{
			path: '/select-multiple',
			component: function(resolve) {
				require(['./select/select-multiple.vue'], resolve);
			}
		},
		{
			path: '/select',
			component: function(resolve) {
				require(['./select/select.vue'], resolve);
			}
		},
		{
			path: '/dialog-table',
			component: function(resolve) {
				require(['./dialog-table/dialog-table.vue'], resolve);
			}
		},
		{
			path: '/station',
			component: function(resolve) {
				require(['./station-user/main.vue'], resolve);
			}
		},
		{
			path: '/selectUser',
			component: function(resolve) {
				require(['./station-user/selectUser.vue'], resolve);
			}
		},
		{
			path: '/vformat',
			component: function(resolve) {
				require(['./el-input-v-format/main.vue'], resolve);
			}
		},
		{
			path: '/integrate',
			component: function(resolve) {
				require(['./integrate/main.vue'], resolve);
			}
		},
		{
			path: '/printTable',
			component: function(resolve) {
				require(['./print/table.vue'], resolve);
			}
		},
		{
			path: '/customer',
			component: function(resolve){
				require(['./customer/list.vue'], resolve);
			}
		},
		{
			path: '/gojs',
			component: function(resolve) {
				require(['./flow/gojs.vue'], resolve);
			}
		},
		{
			path: '/scrollbar',
			component: function(resolve) {
				require(['./scrollbar/main.vue'], resolve);
			}
		},
		{
			path: '/403',
			component: function(resolve) {
				require(['../home/403/403.vue'], resolve);
			}
		},
		{
			path: '*',
			component: function(resolve) {
				require(['../home/404/404.vue'], resolve);
			}
		}

	]
};

export default router;