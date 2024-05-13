const { useQuasar } = Quasar
const { ref } = Vue

const app = Vue.createApp({
	setup() {
		const $q = useQuasar()

		const text = ref(null)
		const viewdistance = ref(5)
		const color = ref('#ffffff')
		const fontsize = ref(0.3)
		const fontstyle = ref('1')
		const expiration = ref('1 time')

		return {
			text,
			viewdistance,
			color,
			fontsize,
			fontstyle,
			expiration,
			expirationOptions: ['1 time', '2 timer', '4 timer', '8 timer', '24 timer', '48 timer', '72 timer'],
			onSubmit() {
				if (color.value === null | viewdistance.value === null | text.value === null | fontsize.value === null) {
					$q.notify({
						color: 'red-5',
						textColor: 'white',
						icon: 'warning',
						message: 'Du må legge inn all data.'
					})
				}
				else {
					const fontTranslation = {
						'1': 0,
						'2': 1,
						'3': 2,
						'4': 4,
						'5': 7,
					}

					SendPostRequest('CreateScene', {
						text: text.value,
						color: color.value,
						viewdistance: viewdistance.value,
						expiration: parseInt(expiration.value.split(' ')[0]),
						fontsize: fontsize.value,
						fontstyle: fontTranslation[fontstyle.value.toString()],
					});
					CloseMenu()
				}
			},
			onDelete() {
				SendPostRequest('DeleteLaser')
				CloseMenu()
			},
			onReset() {
				text.value = null
				color.value = '#ffffff'
				expiration.value = '1 time'
				viewdistance.value = 5
				fontsize.value = 0.3
				fontstyle.value = 1
			}
		}
	}
})

app.use(Quasar, { config: {} })
app.mount('#menu')

$(document).ready(function () {
	window.addEventListener("message", function (event) {
		switch (event.data.action) {
			case "open":
				OpenMenu()
				break;
		}
	});

	document.onkeyup = function (data) {
		if (data.key == 'Escape') {
			CloseMenu()
		}
	};
});

function OpenMenu() {
	$("#openmenu").fadeIn();
}

function CloseMenu() {
	$("#openmenu").fadeOut();
	SendPostRequest('CloseMenu')
}

function SendPostRequest(name, data = {}) {
	$.post(`https://${GetParentResourceName()}/${name}`, JSON.stringify(data));
}