let dados_grafico = {
    type: 'line', // Tipo de gráfico (linha)
    data: {
        labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
        datasets: [{
            label: 'Vendas',
            data: [10, 20, 30, 40, 50],
            borderColor: 'rgba(75, 192, 192, 1)',
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            fill: true
        }]
    },
    options: {
        responsive: true,  // Faz o gráfico ser responsivo
        maintainAspectRatio: false, // Permite que o gráfico ocupe toda a área da div, sem manter a proporção fixa
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
}

let dados_grafico2 = {
    type: 'line', // Tipo de gráfico (linha)
    data: {
        labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
        datasets: [{
            label: 'Vendas',
            data: [10, 20],
            borderColor: 'rgba(75, 192, 192, 1)',
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            fill: true
        }]
    },
    options: {
        responsive: true,  // Faz o gráfico ser responsivo
        maintainAspectRatio: false, // Permite que o gráfico ocupe toda a área da div, sem manter a proporção fixa
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
}

async function carregarHTML(id, arquivo, par = {}) {
    const response = await fetch(document.URL + arquivo);
    let html = await response.text();
    for (let item in par) {
        const regex = new RegExp(`${item}`, 'gi');
        console.log(regex)
        html = html.replace(regex, par[item]);
    }
    console.log(html);
    const container = document.getElementById(id);
    container.innerHTML = html;
    executarScripts(container);
}
function executarScripts(container) {
    const scripts = container.querySelectorAll('script');
    scripts.forEach(script => {
        const scriptElement = document.createElement('script');
        scriptElement.text = script.textContent;
        document.body.appendChild(scriptElement);
        document.body.removeChild(scriptElement);
    });
}
window.onload = () => {
    carregarHTML('conteudo', 'layout/dashboard.html')
    carregarHTML('nav', 'layout/nav.html');
    carregarHTML('list_sensor', 'componentes/list_sensor.html');
    carregarHTML('graph_sensor', 'componentes/graph_sensor.html', {
        ["class-principal"]: "sensor-graph",
        ["class-conteiner-grafico"]: "grafico-container",
        ["class-grafico"]: "grafico-wrapper",
        ["id-grafico"]: "grafico_grupo_sensor",
        titulo: "Grafico Grupo Sensor",
        texto1: "temperatura",
        texto2: "umidade",
        texto3: "media",
        ["dados_grafico"]: JSON.stringify(dados_grafico)
    });
    carregarHTML('list_alerta', 'componentes/alerts.html');
    carregarHTML('graph_sensor_individual', 'componentes/graph_sensor.html', {
        ["class-principal"]: "sensor-graph",
        ["class-conteiner-grafico"]: "grafico-container",
        ["class-grafico"]: "grafico-wrapper",
        ["id-grafico"]: "grafico_grupo_sensor2",
        titulo: "Grafico Grupo Sensor",
        texto1: "temperatura",
        texto2: "umidade",
        texto3: "media",
        ["dados_grafico"]: JSON.stringify(dados_grafico2)
    });

};


//for(;true;){}