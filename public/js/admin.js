$(function () {
	var pstyle = 'border: 1px solid #dfdfdf; padding: 5px;';
	var w2config = {
		layout: {
			name: 'layout',
			padding: 2,
			panels: [
				{ type: 'top', size: 50, resizable: true, style: pstyle, content: 'top' },
				{ type: 'left', size: 200, resizable: true, style: pstyle, content: 'left' },
				{ type: 'main', style: pstyle, content: 'main' }
			]
		},
		sidebar: {
			name: 'sidebar',
			nodes: [ 
				{ id: 'blog', text: 'Blog', group: true, expanded: true, nodes: [
					{ id: 'articles', text: 'articles', img: 'icon-page', selected: true }
				]}
			],
			onClick: function (event) {
				switch (event.target) {
					case 'articles':
						w2ui.layout.content('main', w2ui.articlesGrid);
						break;
				}
			}
		},
		articlesGrid: {
			name: 'articlesGrid',
			show: {
				toolbar			: true,
				toolbarAdd		: true,
				toolbarDelete	: true
			},
			columns: [
				{ field: 'id', caption: 'ID', size: '50px' },
				{ field: 'title', caption: 'Title', size: '40%' },
				{ field: 'author', caption: 'Author', size: '180px' },
				{ field: 'date', caption: 'Date', size: '180px' }
			],
			records: [],
			onAdd: function(event) {
				w2ui.layout.content('main', w2ui.articleEdit);
			}
		},
		articleEdit: {
			name: 'articleEdit',
			fields: [
				{ name: 'id', type: 'text', html: { caption: 'ID', attr: 'size="10" readonly' } },
				{ name: 'title', type: 'text', required: true, html: { caption: 'Title', attr: 'size="40" maxlength="100"' } },
				{ name: 'author', type: 'text', required: true, html: { caption: 'Author', attr: 'size="40" maxlength="40"' } },
				{ name: 'date', type: 'date', required: true, html: { caption: 'Date', attr: 'size="40"' } },
				{ name: 'text', type: 'textarea', required: true, html: { caption: 'Text', attr: 'size="40"' } }
			],
			actions: {
				Reset: function () {
					this.clear();
				},
				Save: function () {
				}
			}
		}
	};
	
	$('#layout').w2layout(w2config.layout);
	w2ui.layout.content('left', $().w2sidebar(w2config.sidebar));

	// Memory loading
	$().w2grid(w2config.articlesGrid);
	$().w2form(w2config.articleEdit);
});
